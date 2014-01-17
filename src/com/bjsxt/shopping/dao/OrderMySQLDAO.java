package com.bjsxt.shopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bjsxt.shopping.Cart;
import com.bjsxt.shopping.CartItem;
import com.bjsxt.shopping.Product;
import com.bjsxt.shopping.SalesItem;
import com.bjsxt.shopping.SalesOrder;
import com.bjsxt.shopping.User;
import com.bjsxt.shopping.util.DB;

public class OrderMySQLDAO {

	public void saveOrder(SalesOrder so) {
		Connection conn=DB.getConn();
		String sql=null;
		
		sql="insert into salesorder values (null,?,?,?,?)";
		
		PreparedStatement pstmt=DB.getPStmt(conn, sql,true);
		ResultSet rsKey=null;
		try {
			conn.setAutoCommit(false);
			
			pstmt.setInt(1, so.getUser().getId());
			pstmt.setString(2, so.getAddr());
			pstmt.setTimestamp(3, so.getoDate());
			pstmt.setInt(4, so.getStatus());
			pstmt.executeUpdate();
			rsKey=pstmt.getGeneratedKeys();//获取salesorder的id值
			rsKey.next();
			int key=rsKey.getInt(1);
			
			String sqlItem="insert into salesitem values (null,?,?,?,?)";
			pstmt=DB.getPStmt(conn, sqlItem);
			Cart c=so.getCart();
			List<CartItem> items=c.getItems();
			for(int i=0;i<items.size();i++){
				CartItem ci=items.get(i);
				pstmt.setInt(1, ci.getProductId());
				pstmt.setDouble(2, ci.getPrice());
				pstmt.setInt(3, ci.getCount());
				pstmt.setInt(4, key);//使用salesorder中的id值
				pstmt.addBatch();//批量处理
			}
			pstmt.executeBatch();//批量提交执行
			conn.commit();
			conn.setAutoCommit(true);
			
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.setAutoCommit(true);
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		}finally{
			DB.closeStmt(pstmt);
			DB.closeRs(rsKey);
			DB.closeConn(conn);
		}
		
	}

	public int getOrders(List<SalesOrder> orders, int pageNo, int pageSize) {
		Connection conn=DB.getConn();
		ResultSet rs=null;
		ResultSet rsCount=null;
		int pageCount=0;//分页后总页数
		
		try {
			rsCount=DB.executeQuery(conn, "select count(*) from salesorder");
			rsCount.next();
			pageCount=(rsCount.getInt(1)+pageSize-1)/pageSize;
			String sql="select s.id,s.userid,s.addr,s.odate,s.status,u.id uid,u.username,u.password,u.phone,u.addr uaddr,u.rdate "+
			"from salesorder s left join user u on (s.userid=u.id) "+
			"limit "+(pageNo-1)*pageSize+","+pageSize;
			System.out.println(sql);
			rs=DB.executeQuery(conn, sql);
			while(rs.next()){
				User user=new User();
				user.setId(rs.getInt("uid"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getString("phone"));
				user.setAddr(rs.getString("uaddr"));
				user.setRdate(rs.getDate("rdate"));
				
				SalesOrder so=new SalesOrder();
				so.setId(rs.getInt("id"));
				so.setAddr(rs.getString("addr"));
				so.setoDate(rs.getTimestamp("odate"));
				so.setStatus(rs.getInt("status"));
				so.setUser(user);
				orders.add(so);
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

	public SalesOrder loadById(int id) {
		Connection conn=DB.getConn();
		ResultSet rs=null;
		//List<SalesItem> items=new ArrayList<SalesItem>();
		SalesOrder so=null;
		try {
			String sql="select salesorder.id sid,salesorder.userid,salesorder.addr,salesorder.odate,salesorder.status,user.id uid,user.username,user.password,user.phone,user.addr uaddr,user.rdate "+
			"from salesorder join user  on (salesorder.userid=user.id) where salesorder.id="+id;
			rs=DB.executeQuery(conn, sql);
			while(rs.next()){
				User user=new User();
				user.setId(rs.getInt("uid"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getString("phone"));
				user.setAddr(rs.getString("uaddr"));
				user.setRdate(rs.getDate("rdate"));
				
				so=new SalesOrder();
				so.setId(rs.getInt("sid"));
				so.setAddr(rs.getString("addr"));
				so.setoDate(rs.getTimestamp("odate"));
				so.setStatus(rs.getInt("status"));
				so.setUser(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			DB.closeRs(rs);
			DB.closeConn(conn);
		}
		return so;
	}

	public List<SalesItem> getSalesItems(SalesOrder salesOrder) {
		Connection conn=DB.getConn();
		ResultSet rs=null;
		List<SalesItem> items=new ArrayList<SalesItem>();
		try {
			String sql="select salesitem.id sid,salesitem.productid,salesitem.unitprice,salesitem.pcount,salesitem.orderid,"+
			"product.id pid,product.name "+
			" from salesitem join product on (salesitem.productid=product.id)";
			System.out.println(sql);
			rs=DB.executeQuery(conn, sql);
			while(rs.next()){
				Product p=new Product();
				p.setId(rs.getInt("pid"));
				p.setName(rs.getString("name"));
				
				SalesItem si=new SalesItem();
				si.setId(rs.getInt("sid"));
				si.setProduct(p);
				si.setUnitprice(rs.getDouble("unitprice"));
				si.setCount(rs.getInt("pcount"));
				si.setOrder(salesOrder);
				items.add(si);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			DB.closeRs(rs);
			DB.closeConn(conn);
		}
		return items;
	}
	
}
