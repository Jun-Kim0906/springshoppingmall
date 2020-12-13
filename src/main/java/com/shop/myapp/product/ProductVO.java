package com.shop.myapp.product;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private int pid;
	private String uid;
	private String name;
	private float price;
	private String bdate;
	private String content;
	private String photo;
	private int thumbs;
	private Date regdate;
	private MultipartFile uploadFile;
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getThumbs() {
		return thumbs;
	}
	public void setThumbsup(int thumbs) {
		this.thumbs = thumbs;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
//	public Date getBdate() {
//		return bdate;
//	}
//	public void setBdate(Date bdate) {
//		this.bdate = bdate;
//	}
	
	public String getContent() {
		return content;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}
