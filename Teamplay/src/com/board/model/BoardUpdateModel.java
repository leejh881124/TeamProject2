package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.board.dao.*;
public class BoardUpdateModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
//		System.out.println("BoardUpdateModel");
		
		String strNo = req.getParameter("no");
		String strPage = req.getParameter("page");
		BoardDTO d = BoardDAO.boardUpdateData(Integer.parseInt(strNo));
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		
		req.setAttribute("jsp", "../board/board_update.jsp");	
		return "web/main/index.jsp";
		

	}

}
