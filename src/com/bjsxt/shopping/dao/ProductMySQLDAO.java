package com.bjsxt.shopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.bjsxt.shopping.Product;
import com.bjsxt.shopping.util.DB;

public class ProductMySQLDAO implements ProductDAO{
	
	/**
	 * <p>
	 * Description: 通过数据库获取所有产品信息
	 * </p>
	 * 
	 * @author Administrator
	 * @version 1.0
	 * @created 2013-11-22 下午10:41:46
	 */      
	public List<Product> getProducts() {
		List<Product> list=new ArrayList<Product>();
		Connection conn=DB.getConn();
		ResultSet rs=null;
		String sql="select * from product";
		rs=DB.executeQuery(conn, sql);
		try {
			while(rs.next()){
				Product p=new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalprice"));
				p.setMemberPrice(rs.getDouble("memberprice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryid"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			DB.closeRs(rs);
			DB.closeConn(conn);
		}
		return list;
	}
	
	/**
	 * <p>
	 * Description: 将产品信息以分页展现的形式取出来
	 * </p>
	 * 
	 * @author Administrator
	 * @version 1.0
	 * @created 2013-11-23 下午02:33:47
	 */      
	public List<Product> getProducts(int pageNo, int pageSize) {
		List<Product> list=new ArrayList<Product>();
		Connection conn=DB.getConn();
		ResultSet rs=null;
		String sql="select * from product limit "+(pageNo-1)*pageSize+","+pageSize;
		rs=DB.executeQuery(conn, sql);
		try {
			while(rs.next()){
				Product p=new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalprice"));
				p.setMemberPrice(rs.getDouble("memberprice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryid"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			DB.closeRs(rs);
			DB.closeConn(conn);
		}
		return list;
	}
	
	/**
	 * <p>
	 * Description: 产品复杂查询功能实现
	 * </p>
	 * 
	 * @author Administrator
	 * @version 1.0
	 * @created 2013-11-23 下午05:14:27
	 */      
	public int findProducts(List<Product> list,int[] categoryId, String keyWord,
			 double lowNormalPrice, double highNormalPrice,
			double lowMemberPrice, double highMemberPrice, Date startDate,
			Date endDate, int pageNo, int pageSize) {
		Connection conn=DB.getConn();
		ResultSet rs=null;
		ResultSet rsCount=null;
		int pageCount=0;
		String strId="";
		try {
			String sql="select * from product where 1=1";
			//String sql="select * from product limit "+(pageNo-1)*pageSize+","+pageSize;
			if(categoryId!=null && categoryId.length>0){
				strId+="(";
				for(int i=0;i<categoryId.length;i++){
					if(i<categoryId.length-1)
					{
					strId+=categoryId[i]+",";
					}
					else{
						strId+=categoryId[i]+")";
					}
				}
				sql+=" and categoryid in"+strId;
			}
			
			if(keyWord!=null && !keyWord.trim().equals("")){
				sql+=" and name like '%"+keyWord+"%' or descr like '%"+keyWord+"%'";
			}
			
			if(lowNormalPrice>=0){
				sql+=" and normalprice>="+lowNormalPrice;
			}
			if(highNormalPrice>0 && highNormalPrice>=lowNormalPrice){
				sql+=" and normalprice<="+highNormalPrice;
			}
			if(lowMemberPrice>=0){
				sql+=" and normalprice>="+lowMemberPrice;
			}
			if(highMemberPrice>0){
				sql+=" and normalprice<="+highMemberPrice;
			}
			
			if(startDate!=null){
				sql+=" and pdate>= '"+new SimpleDateFormat("yyyy-MM-dd").format(startDate)+"'";
			}
			if(endDate!=null){
				sql+=" and pdate<= '"+new SimpleDateFormat("yyyy-MM-dd").format(endDate)+"'";
			}
			String sqlCount=sql.replaceFirst("select \\*", "select count(*)");
			rsCount=DB.executeQuery(conn, sqlCount);
			rsCount.next();
			pageCount=(rsCount.getInt(1)+pageSize-1)/pageSize;
			System.out.println(sqlCount);
			sql+=" limit "+(pageNo-1)*pageSize+","+pageSize;
			System.out.println(sql);
			rs=DB.executeQuery(conn, sql);
			while(rs.next()){
				Product p=new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalprice"));
				p.setMemberPrice(rs.getDouble("memberprice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryid"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			DB.closeRs(rs);
			DB.closeConn(conn);
		}
		return pageCount;

	}

	
	public boolean deleteProductByCategoryId(int categoryId){
		return false;
	}
	
	public boolean deleteProductById(int[] idArray){
		return false;
	}
	
	public boolean updateProduct(Product p){
		return false;
	}
	
	/**
	 * <p>
	 * Description: 产品添加功能实现
	 * </p>
	 * 
	 * @author Administrator
	 * @version 1.0
	 * @created 2013-11-22 下午09:34:16
	 */      
	public boolean addProduct(Product p){
		Connection conn=DB.getConn();
		String sql=null;
		if(p.getId()==-1){
			sql="insert into product values (null,?,?,?,?,?,?)";
		}else{
			sql="insert into product values ("+p.getId()+",?,?,?,?,?,?)";
		}
		PreparedStatement pstmt=DB.getPStmt(conn, sql);
		try {
			//pstmt.setInt(1, p.getId());
			pstmt.setString(1, p.getName());
			pstmt.setString(2, p.getDescr());
			pstmt.setDouble(3, p.getNormalPrice());
			pstmt.setDouble(4, p.getMemberPrice());
			pstmt.setTimestamp(5, p.getPdate());
			pstmt.setInt(6, p.getCategoryId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeStmt(pstmt);
			DB.closeConn(conn);
		}
		return true;
	}
	
	public int getProducts(List<Product> products, int pageNo, int pageSize) {
		Connection conn=DB.getConn();
		ResultSet rs=null;
		ResultSet rsCount=null;
		int pageCount=0;//分页后总页数
		
		try {
			rsCount=DB.executeQuery(conn, "select count(*) from product");
			rsCount.next();
			pageCount=(rsCount.getInt(1)+pageSize-1)/pageSize;
			String sql="select * from product limit "+(pageNo-1)*pageSize+","+pageSize;
			rs=DB.executeQuery(conn, sql);
			while(rs.next()){
				Product p=new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalprice"));
				p.setMemberPrice(rs.getDouble("memberprice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryid"));
				products.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			DB.closeRs(rs);
			DB.closeRs(rsCount);
			DB.closeConn(conn);
		}
		return pageCount;
	}
}
