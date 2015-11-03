package com.main.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;



public class MainModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("jsp", "main.jsp");
		req.setAttribute("active1","active");
		return "web/main/index.jsp";
	}

}
