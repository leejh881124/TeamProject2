package com.board.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.board.dao.*;
public class BoardContentModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
//		System.out.println("BoardContentModel");
		
		String strNo=req.getParameter("no");
		String strPage=req.getParameter("page");
//		System.out.println("no:"+strNo + "page:"+strPage);
		BoardDTO d=BoardDAO.boardContentData(
				Integer.parseInt(strNo));
		req.setAttribute("dto", d);
		req.setAttribute("page", strPage);
		req.setAttribute("jsp", "../board/board_content.jsp");
		return "web/main/index.jsp";
	}

}
