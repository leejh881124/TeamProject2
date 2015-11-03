package com.store.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class StoreModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("jsp","../store/store.jsp");
		req.setAttribute("active3","active");
		return "web/main/index.jsp";
	}

}
