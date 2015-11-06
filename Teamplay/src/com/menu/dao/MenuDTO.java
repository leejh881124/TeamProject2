package com.menu.dao;

import java.util.Date;

public class MenuDTO {
	private int hno;
	private int tno;
	private String hname;
	private int price;
	private String hname2;
	private String minfo;
	public String getMinfo() {
		return minfo;
	}
	public void setMinfo(String minfo) {
		this.minfo = minfo;
	}
	public String getHname2() {
		return hname2;
	}
	public void setHname2(String hname2) {
		this.hname2 = hname2;
	}
	public int getHno() {
		return hno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
