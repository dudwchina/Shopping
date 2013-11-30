package com.bjsxt.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.bjsxt.shopping.util.DB;

public class CategoryDAO {
	
	public static void save(Category c){
	Connection conn=DB.getConn();
	String sql=null;
	if(c.getId()==-1){
		sql="insert into category values (null,?,?,?,?,?)";
	}else{
		sql="insert into category values ("+c.getId()+",?,?,?,?,?)";
	}
	PreparedStatement pstmt=DB.getPStmt(conn, sql);
	try {
		pstmt.setInt(1, c.getPid());
		pstmt.setString(2, c.getName());
		pstmt.setString(3, c.getDescr());
		pstmt.setInt(4, c.isLeaf()?1:0);
		pstmt.setInt(5, c.getGrade());
		pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		DB.closeStmt(pstmt);
		DB.closeConn(conn);
	}
	}
	
	public static void getCategories(List<Category> list,int id){
		Connection conn=null;
		try{
			conn=DB.getConn();
			getCategories(conn, list, id);
		}finally
		{
			DB.closeConn(conn);
		}
	}
	
	private static void getCategories(Connection conn,List<Category> list,int id){
		ResultSet rs=null;
		try {
			conn=DB.getConn();
			String sql="select * from category where pid="+id;
			rs=DB.executeQuery(conn, sql);
			while(rs.next()){
				Category c=new Category();
				c.setId(rs.getInt("id"));
				c.setPid(rs.getInt("pid"));
				c.setName(rs.getString("name"));
				c.setDescr(rs.getString("descr"));
				c.setLeaf(rs.getInt("isLeaf")==0?false:true);
				c.setGrade(rs.getInt("grade"));
				list.add(c);
				
				if(!c.isLeaf()){
					getCategories(list,c.getId());
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);
		}
	}

	public static void addChildCategory(int pid, String name, String descr) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		//存储新的category
		try {
			
			conn=DB.getConn();
			
			conn.setAutoCommit(false);
			
			rs=DB.executeQuery(conn, "select * from category where id="+pid);
			rs.next();
			int parentGrade=rs.getInt("grade");
			
			String sql="insert into category values (null,?,?,?,?,?)";
			pstmt=DB.getPStmt(conn, sql);
			pstmt.setInt(1, pid);
			pstmt.setString(2, name);
			pstmt.setString(3, descr);
			pstmt.setInt(4, 1);
			pstmt.setInt(5, parentGrade+1);
			pstmt.executeUpdate();
			
			//更新父节点，设置为非叶子节点
			DB.executeUpdate(conn, "update category set isleaf=0 where id="+pid);
			
			conn.commit();
			conn.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeStmt(pstmt);
			DB.closeRs(rs);
			DB.closeConn(conn);
		}
	}

	public static void delete(int id, boolean isLeaf) {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		conn=DB.getConn();
		if(!isLeaf){
			String sql = "select * from category where pid=" + id;
			 stmt = DB.getStmt(conn);
			 rs = DB.executeQuery(stmt, sql);
			try {
			while (rs.next()) {
				
					delete(rs.getInt("id"),rs.getInt("isLeaf")==1);
				}
			}
			 catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DB.closeRs(rs);
				DB.closeStmt(stmt);
			}
			}
			DB.executeUpdate(conn,"delete from category where id="+id);
		
	}
	
	public static void isLeaf(int pid){
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			conn=DB.getConn();
			boolean autoCommit = conn.getAutoCommit();
			conn.setAutoCommit(false);
			
			 stmt = DB.getStmt(conn);
			 rs = DB.executeQuery(stmt, "select count(*) from category where pid="+pid);
			rs.next();
			int count=rs.getInt(1);
			if(count<=0){
				DB.executeUpdate(conn,"update category set isleaf = 1 where id = " + pid);
			}
			
			conn.commit();
			conn.setAutoCommit(autoCommit);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeStmt(stmt);
			DB.closeRs(rs);
			DB.closeConn(conn);
		}
	}
	
	/**
	 * <p>
	 * Description: 通过类别id来获取类别相关信息
	 * </p>
	 * 
	 * @author Administrator
	 * @version 1.0
	 * @created 2013-11-19 下午10:37:43
	 */           
     
	public static Category getCategoryById(int id){
		Connection conn=null;
		ResultSet rs=null;
		Category c=new Category();
		try {
			conn=DB.getConn();
			String sql="select * from category where id="+id;
			rs=DB.executeQuery(conn, sql);
			
			while(rs.next()){
				c.setId(rs.getInt("id"));
				c.setPid(rs.getInt("pid"));
				c.setName(rs.getString("name"));
				c.setDescr(rs.getString("descr"));
				c.setLeaf(rs.getBoolean("isLeaf"));
				c.setGrade(rs.getInt("grade"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);
			DB.closeConn(conn);
		}
		return c;
	}
	
	/**
	 * <p>
	 * Description: 通过类别id更新类别相关信息
	 * </p>
	 * 
	 * @author Administrator
	 * @version 1.0
	 * @created 2013-11-19 下午10:38:25
	 */      
	public static void updateCategoryById(int id,String name,String descr){
		Connection conn=null;
		try {
			conn=DB.getConn();
			String sql="update category set name='"+name+"',descr='"+descr+"' where id="+id;
			DB.executeUpdate(conn, sql);
			
		}finally{
			DB.closeConn(conn);
		}
	}
	
}
