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
		return dao.getProducts(pageNo, pageSize);
	}
	
	public int getProducts(List<Product> products,int pageNo, int pageSize) {
		return dao.getProducts(products,pageNo, pageSize);
	}

	public int findProducts(List<Product> list,int[] categoryId, String keyWord,
			 double lowNormalPrice, double highNormalPrice,
			double lowMemberPrice, double highMemberPrice, Date startDate,
			Date endDate, int pageNo, int pageSize) {
		return dao.findProducts(list,categoryId, keyWord, lowNormalPrice, highNormalPrice, lowMemberPrice, highMemberPrice, startDate, endDate, pageNo, pageSize);

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
		return dao.updateProduct(p);
	}
	
	public boolean addProduct(Product p){
		return dao.addProduct(p);
	}

	public Product loadById(int id){
		return dao.loadById(id);
	}
	public ProductDAO getDao() {
		return dao;
	}

	public void setDao(ProductDAO dao) {
		this.dao = dao;
	}

	public List<Product> getLatestProducts(int count){
		return dao.getLatestProducts(count);
	}
	
	public List<Product> getRecommendProducts(int categoryId){
		return dao.getRecommendProducts(categoryId);
	}
}
