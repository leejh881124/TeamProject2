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
		System.out.println("BoardUpdateOkModel");
		req.setCharacterEncoding("EUC-KR");
		String path="C:\\webDev\\webStudy2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Teamplay\\web\\images";
		String enctype="EUC-KR";
		int size=1024*1024*500;
		MultipartRequest mr = new MultipartRequest(req,path,size,enctype,new DefaultFileRenamePolicy()); //파일이름이 같을때 바뀌게 하는거 파일네임폴리시()
		
		
		String strPage = req.getParameter("page");
		String strNo = req.getParameter("no");
		
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		String filename = mr.getParameter("filename");
		System.out.println(strPage+","+strNo+","+ subject+","+content+"," + filename);
		BoardDTO d = new BoardDTO();
		d.setSubject(subject);
		d.setContent(content);
//		d.setFilename(filename);
		d.setFilename("");
		// DB연동
//		BoardDAO.boardUpdate(d);
		
		req.setAttribute("no", strNo);
		req.setAttribute("page", strPage);
		
		return "board_content.do";	
	}

}
