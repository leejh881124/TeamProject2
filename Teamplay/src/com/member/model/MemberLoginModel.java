package com.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.Model;
import com.member.dao.*;
public class MemberLoginModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		String result="";
		int count=MemberDAO.memberIdCount(id);
		System.out.println(id);
		if(count==0)
		{
			result="NOID";
		}
		else
		{
			MemberDTO d=MemberDAO.memberGetInfo(id);
			if(pwd.equals(d.getPwd()))
			{
				result="OK";
				HttpSession session=req.getSession();
				session.setAttribute("id", id);
				session.setAttribute("name", d.getName());
				session.setAttribute("admin", d.getAdmin());
			}
			else
			{
				result="NOPWD";
			}
		}
		req.setAttribute("result", result);
		return "web/join/login_ok.jsp";
	}

}



