package com.menu.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class MenuModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("jsp","../menu/menu.jsp");
		req.setAttribute("active2","active");
		return "web/main/index.jsp";
	}

}
