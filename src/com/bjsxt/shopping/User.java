package com.bjsxt.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.bjsxt.shopping.util.DB;

public class User {
	private int id;
	private String username;
	private String password;
	private String phone;
	private String addr;
	private Date rdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	
	public void save(){
		Connection conn=DB.getConn();
		String sql="insert into user values (null,?,?,?,?,?)";
		PreparedStatement pstmt=DB.getPStmt(conn, sql);
		try {
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			pstmt.setString(3, phone);
			pstmt.setString(4, addr);
			pstmt.setTimestamp(5, new Timestamp(rdate.getTime()));
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeStmt(pstmt);
			DB.closeConn(conn);
		}
		
	}
	
	public static List<User> getUsers(){
		List<User> list=new ArrayList<User>();
		Connection conn=DB.getConn();
		ResultSet rs=null;
		String sql="select * from user";
		rs=DB.executeQuery(conn, sql);
		try {
			while(rs.next()){
				User u=new User();
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setPhone(rs.getString("phone"));
				u.setAddr(rs.getString("addr"));
				u.setRdate(rs.getTimestamp("rdate"));
				list.add(u);
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
	
	public static User validate(String username,String password) throws  UserNotFoundException, PasswordNotCorrectException{
		User u=null;
		Connection conn=DB.getConn();
		String sql="select * from user where username='"+username+"'";
		ResultSet rs=DB.executeQuery(conn, sql);
		try {
			if(!rs.next()){
				throw new UserNotFoundException();
			}else if(!rs.getString("password").equals(password)){
				throw new PasswordNotCorrectException();
			}else{
			u=new User();
			u.setId(rs.getInt("id"));
			u.setUsername(rs.getString("username"));
			u.setPassword(rs.getString("password"));
			u.setPhone(rs.getString("phone"));
			u.setAddr(rs.getString("addr"));
			u.setRdate(rs.getTimestamp("rdate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeConn(conn);
			DB.closeRs(rs);
		}
		return u;
	}
	
	
	public void update(User u){
		Connection conn=DB.getConn();
		String sql="update user set username='"+u.getUsername()+"',phone='"+u.getPhone()+"',addr='"+u.getAddr()+"' where id="+u.getId();
		//System.out.println(sql);
		PreparedStatement pstmt=DB.getPStmt(conn, sql);
		try {
			pstmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeStmt(pstmt);
			DB.closeConn(conn);
		}
		
	}
	
	
	public static boolean userExist(String username) throws SQLException {
		Connection conn=DB.getConn();
		String sql="select * from user where username='"+username+"'";
		ResultSet rs=DB.executeQuery(conn, sql);
		try {
			if(rs.next())
				return false;
			else 
				return true;
			
		}finally{
			DB.closeConn(conn);
			DB.closeRs(rs);
		}
	}
}

