package com.board.dao;
import java.util.*;
public class BoardDTO {
   private int no;
   private String id;
   private String name;
   private String content;
   private String subject;
   private int hit;
   private int recommend;
   private String filename;
   private Date regdate;
   private String dbday;
   private int replyCount;
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public int getHit() {
	return hit;
}
public void setHit(int hit) {
	this.hit = hit;
}
public int getrecommend() {
	return recommend;
}
public void setrecommend(int recommend) {
	this.recommend = recommend;
}
public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
public Date getRegdate() {
	return regdate;
}
public void setRegdate(Date regdate) {
	this.regdate = regdate;
}
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
}