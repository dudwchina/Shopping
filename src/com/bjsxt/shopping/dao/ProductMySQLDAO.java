package com.bjsxt.shopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.bjsxt.shopping.Product;
import com.bjsxt.shopping.util.DB;

public class ProductMySQLDAO implements ProductDAO{
	public List<Product> getProducts() {
		return null;
	}

	public List<Product> getProducts(int pageNo, int pageSize) {
		return null;
	}

	public List<Product> findProducts(int[] categoryId, String name,
			String descr, double lowNormalPrice, double highNormalPrice,
			double lowMemberPrice, double highMemberPrice, Date startDate,
			Date endDate, int pageNo, int pageSize) {
		return null;

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
}
