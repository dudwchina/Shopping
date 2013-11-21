package com.bjsxt.shopping;

import java.util.Date;
import java.util.List;

import com.bjsxt.shopping.dao.ProductDAO;
import com.bjsxt.shopping.dao.ProductMySQLDAO;

public class ProductMgr {
	
	private static ProductMgr pm=null;
	private ProductMgr(){}
	
	static {
		if(pm==null){
			pm=new ProductMgr();
			pm.setDao(new ProductMySQLDAO());
		}
	}
	
	public static ProductMgr getInstance(){
		return pm;
	}
	
	ProductDAO dao=null;

	public List<Product> getProducts() {
		return dao.getProducts();
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

	public List<Product> findProducts(String name) {

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
		return dao.addProduct(p);
	}

	public ProductDAO getDao() {
		return dao;
	}

	public void setDao(ProductDAO dao) {
		this.dao = dao;
	}
}