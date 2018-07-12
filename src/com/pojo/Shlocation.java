package com.pojo;

public class Shlocation {
	
	private int locationid;//地址id
	private String name;//收货人的名字
	private String sex;//收货人的性别
	private String photo;//收货人的电话
	private String dalocation;//收货人的大地址
	private String detail;//收货人的详细地址
	private int userid;//当前地址属于哪个用户
	
	public int getLocationid() {
		return locationid;
	}
	public void setLocationid(int locationid) {
		this.locationid = locationid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getDalocation() {
		return dalocation;
	}
	public void setDalocation(String dalocation) {
		this.dalocation = dalocation;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	

}
