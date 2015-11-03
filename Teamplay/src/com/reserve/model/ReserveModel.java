package com.reserve.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class ReserveModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("jsp","../reserve/reserve.jsp");
		req.setAttribute("active4","active");
		return "web/main/index.jsp";
	}

}
