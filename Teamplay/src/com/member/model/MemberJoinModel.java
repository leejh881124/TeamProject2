package com.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class MemberJoinModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		String name = req.getParameter("name");
		String sex = req.getParameter("sex");
		String birth = req.getParameter("bday");
		String post= req.getParameter("post");
		String addr1= req.getParameter("addr1").trim();
		String addr2= req.getParameter("addr2");
		String tel = req.getParameter("tel1")+"-"+
		req.getParameter("tel2") +"-"+ req.getParameter("tel3");
		String admin = "n";
		System.out.println(id+","+pwd+","+name+","+post+","+addr1+","+ birth+","+tel);
		MemberDTO d = new MemberDTO();
		d.setId(id);
		d.setPwd(pwd);
		d.setName(name);
		d.setSex(sex);
		d.setBirth(birth);
		d.setPost(post);
		d.setAddr1(addr1);
		d.setAddr2(addr2);
		d.setTel(tel);
		d.setAdmin(admin);
//		System.out.println("MemberJoinModel");
		MemberDAO.memberJoin(d);
		req.setAttribute("name", name);
		req.setAttribute("id", id);
		req.setAttribute("joinOk", "true");
		req.setAttribute("jsp", "../join/join.jsp");
		return "web/main/index.jsp";
//		return "join_ok.jsp";
	}

}
