package com.main.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.main.dao.MainDAO;
import com.main.dao.MainDTO;



public class IndexModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		List<MainDTO> list12 = MainDAO.BestListData();
		req.setAttribute("list12", list12);
		req.setAttribute("jsp", "main.jsp");
		req.setAttribute("active1","active");
		req.setAttribute("slider", "../slider/slider.jsp");
		return "web/main/index.jsp";
	}
}
