package com.board.dao;
import java.util.*;
public class ReplyBoardDTO {
   private int hno;
   private int bno;
   private String bname;
   private String bcont;
   private String bsub;
   private String bpwd;
   private int bhit;
   private int brec;
   private String bfilename;
   private Date bregdate;
   private String dbday;
   private int replyCount;
   
public String getDbday() {
	return dbday;
}
public void setDbday(String dbday) {
	this.dbday = dbday;
}
public int getReplyCount() {
	return replyCount;
}
public void setReplyCount(int replyCount) {
	this.replyCount = replyCount;
}
public int getHno() {
	return hno;
}
public void setHno(int hno) {
	this.hno = hno;
}
public int getBno() {
	return bno;
}
public void setBno(int bno) {
	this.bno = bno;
}
public String getBname() {
	return bname;
}
public void setBname(String bname) {
	this.bname = bname;
}
public String getBcont() {
	return bcont;
}
public void setBcont(String bcont) {
	this.bcont = bcont;
}
public String getBsub() {
	return bsub;
}
public void setBsub(String bsub) {
	this.bsub = bsub;
}
public String getBpwd() {
	return bpwd;
}
public void setBpwd(String bpwd) {
	this.bpwd = bpwd;
}
public int getBhit() {
	return bhit;
}
public void setBhit(int bhit) {
	this.bhit = bhit;
}
public int getBrec() {
	return brec;
}
public void setBrec(int brec) {
	this.brec = brec;
}
public String getBfilename() {
	return bfilename;
}
public void setBfilename(String bfilename) {
	this.bfilename = bfilename;
}
public Date getBregdate() {
	return bregdate;
}
public void setBregdate(Date bregdate) {
	this.bregdate = bregdate;
}
}