package com.bjsxt.shopping;

import java.util.List;

import com.bjsxt.shopping.dao.OrderMySQLDAO;



public class OrderMgr {

	private static OrderMgr om=null;
	private OrderMgr(){}
	
	static {
		if(om==null){
			om=new OrderMgr();
			om.setDao(new OrderMySQLDAO());
		}
	}
	
	public static OrderMgr getInstance(){
		return om;
	}
	
	

	OrderMySQLDAO dao=null;
	public OrderMySQLDAO getDao() {
		return dao;
	}

	public void setDao(OrderMySQLDAO dao) {
		this.dao = dao;
	}
	
	public 	void saveOrder(SalesOrder so){
		dao.saveOrder(so);
	}
	
	public int getOrders(List<SalesOrder> orders,int pageNo, int pageSize) {
		return dao.getOrders(orders,pageNo, pageSize);
	}
	
	public SalesOrder loadById(int id){
		return dao.loadById(id);
	}

	public List<SalesItem> getSalesItems(SalesOrder salesOrder) {
		// TODO Auto-generated method stub
		return dao.getSalesItems(salesOrder);
	}
}
