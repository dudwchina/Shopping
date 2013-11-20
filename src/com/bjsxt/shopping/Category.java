package com.bjsxt.shopping;

import java.util.ArrayList;
import java.util.List;

public class Category {
	private int id;
	private int pid;
	private String name;
	private String descr;
	private boolean leaf;
	private int grade;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public boolean isLeaf() {
		return leaf;
	}
	public void setLeaf(boolean leaf) {
		this.leaf = leaf;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	public static void add(Category c){
		CategoryDAO.save(c);
	}
	
	public static void addTopCategory(String name,String descr){
		Category c=new Category();
		c.setId(-1);
		c.setPid(0);
		c.setName(name);
		c.setDescr(descr);
		c.setLeaf(true);
		c.setGrade(0);
		CategoryDAO.save(c);
	}
	
	public static List<Category> getCategories(){
		List<Category> list=new ArrayList<Category>();
		CategoryDAO.getCategories(list, 0);
		return list;
	}
	
	public static void addChildCategory(int pid,String name,String descr){
		CategoryDAO.addChildCategory(pid,name,descr);
	}
	
	public static void delete(int id,int pid,boolean isLeaf){
		CategoryDAO.delete(id,isLeaf);
		CategoryDAO.isLeaf(pid);
	}
	
	/**
	 * <p>
	 * Description: 通过类别id来获取类别相关信息
	 * </p>
	 * 
	 * @author Administrator
	 * @version 1.0
	 * @created 2013-11-19 下午10:43:31
	 */      
	public static Category getCategoryById(int id){
		Category c=CategoryDAO.getCategoryById(id);
		return c;
	}
	
	/**
	 * <p>
	 * Description: 通过类别id更新类别相关信息
	 * </p>
	 * 
	 * @author Administrator
	 * @version 1.0
	 * @created 2013-11-19 下午10:43:50
	 */      
	public static void updateCategoryById(int id,String name,String descr){
		CategoryDAO.updateCategoryById(id,name,descr);
	}
}
