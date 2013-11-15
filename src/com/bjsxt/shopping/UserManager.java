package com.bjsxt.shopping;
import java.sql.*;

import com.bjsxt.shopping.util.DB;

public class UserManager {
	public static void deleteUser(int id){
		Connection conn=null;
		Statement stmt=null;
		try {
			conn=DB.getConn();
			stmt=DB.getStmt(conn);
			stmt.executeUpdate("delete from user where id="+id);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DB.closeStmt(stmt);
			DB.closeConn(conn);
		}
	}
}
