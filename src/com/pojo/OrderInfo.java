package com.pojo;

public class OrderInfo {
	
	private int orderid;
	private String ordertime;
	private String payway;
	private double pricesum;
	private String orderlocation;
	private String remark;
	
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	public String getPayway() {
		return payway;
	}
	public void setPayway(String payway) {
		this.payway = payway;
	}
	public double getPricesum() {
		return pricesum;
	}
	public void setPricesum(double pricesum) {
		this.pricesum = pricesum;
	}
	public String getOrderlocation() {
		return orderlocation;
	}
	public void setOrderlocation(String orderlocation) {
		this.orderlocation = orderlocation;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	

}
