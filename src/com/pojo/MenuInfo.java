package com.pojo;

public class MenuInfo {
	private int menuid;//菜品id
	private String menuname;//菜品名字
	private double menuprice;//菜品的价格
	private String menuimg;//菜品的图片路径
	private int storeid;//菜品属于商店的id
	
	public int getMenuid() {
		return menuid;
	}
	public void setMenuid(int menuid) {
		this.menuid = menuid;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public double getMenuprice() {
		return menuprice;
	}
	public void setMenuprice(double menuprice) {
		this.menuprice = menuprice;
	}
	public String getMenuimg() {
		return menuimg;
	}
	public void setMenuimg(String menuimg) {
		this.menuimg = menuimg;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
	
	

}
