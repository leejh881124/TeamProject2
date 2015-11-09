package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;

public class BoardLikeModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("BoardLikeModel");
		String no=req.getParameter("no");
		String page = req.getParameter("page");
		BoardDAO dao = new BoardDAO();
		BoardDTO d=BoardDAO.boardRecIncrement(
				Integer.parseInt(no));
		req.setAttribute("dto", d);
//		req.setAttribute("no", no);
		req.setAttribute("page", page);
		req.setAttribute("jsp", "../board/board_content.jsp");
		return "web/main/index.jsp";
	}
}
