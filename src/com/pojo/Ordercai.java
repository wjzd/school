package com.pojo;

public class Ordercai {
	
	private int caiid;//订单下面的菜品id
	private int storeid;//菜品属于某个商店的id
	private int cainameid;//菜品名的id
	private double caiprice;//菜品价格
	private int cainum;//菜品的总数
	private int orderid;//菜品属于某个订单的id
	
	public int getCaiid() {
		return caiid;
	}
	public void setCaiid(int caiid) {
		this.caiid = caiid;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
	public int getCainameid() {
		return cainameid;
	}
	public void setCainameid(int cainameid) {
		this.cainameid = cainameid;
	}
	public double getCaiprice() {
		return caiprice;
	}
	public void setCaiprice(double caiprice) {
		this.caiprice = caiprice;
	}
	public int getCainum() {
		return cainum;
	}
	public void setCainum(int cainum) {
		this.cainum = cainum;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	
	
	
	

}
