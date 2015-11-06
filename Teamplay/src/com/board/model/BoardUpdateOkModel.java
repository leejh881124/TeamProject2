package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardUpdateOkModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		
		System.out.println("BoardUpdateOkModel");
		
		String strPage = req.getParameter("page");
		String strNo = req.getParameter("no");
		
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		String filename = req.getParameter("filename");
		System.out.println(strPage+","+strNo+","+ subject+","+content+"," + filename);
		BoardDTO d = new BoardDTO();
		d.setSubject(subject);
		d.setContent(content);
//		d.setFilename(filename);
		d.setFilename("");
		// DB¿¬µ¿
//		BoardDAO.boardUpdate(d);
		
		req.setAttribute("no", strNo);
		req.setAttribute("page", strPage);
		
		return "board_content.do";	
	}

}
