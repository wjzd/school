package com.pojo;

import java.util.List;

public class StoreInfo {
	private int id;//商店id
	private String storename;//商店名
	private int storesales;//商店销售量
	private double peisong;//配送费
	private double qs;//起送价
	private int storetime;//外卖送达时间
	private int storetype;//商店类型编号
	private String storeimg;//商店图片
	private List<MenuInfo> menu;
	
	public List<MenuInfo> getMenu() {
		return menu;
	}
	public void setMenu(List<MenuInfo> menu) {
		this.menu = menu;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public int getStoresales() {
		return storesales;
	}
	public void setStoresales(int storesales) {
		this.storesales = storesales;
	}
	public double getPeisong() {
		return peisong;
	}
	public void setPeisong(double peisong) {
		this.peisong = peisong;
	}
	public double getQs() {
		return qs;
	}
	public void setQs(double qs) {
		this.qs = qs;
	}
	public int getStoretime() {
		return storetime;
	}
	public void setStoretime(int storetime) {
		this.storetime = storetime;
	}
	public int getStoretype() {
		return storetype;
	}
	public void setStoretype(int storetype) {
		this.storetype = storetype;
	}
	public String getStoreimg() {
		return storeimg;
	}
	public void setStoreimg(String storeimg) {
		this.storeimg = storeimg;
	}
	
	
	
	

}
