package com.board.model;

import java.io.File;

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
//		System.out.println("BoardUpdateOkModel");
		// 절대경로 자기꺼로
		String path="C:\\webDev\\webStudy2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Teamplay\\web\\image";
		String enctype="EUC-KR";
		req.setCharacterEncoding("EUC-KR");
		int size=1024*1024*500;
		MultipartRequest mr = new MultipartRequest(req,path,size,enctype,new DefaultFileRenamePolicy()); //파일이름이 같을때 바뀌게 하는거 파일네임폴리시()
		String subject=mr.getParameter("subject");
		String content=mr.getParameter("content");
		String filename=mr.getOriginalFileName("filename");
		String beforefilename = mr.getParameter("beforefilename");
		String strPage = mr.getParameter("page");
		String strNo = mr.getParameter("no");
		
//		System.out.println(subject+","+content+"," + filename + "(" + beforefilename+")");
		
		BoardDTO d = new BoardDTO();
		d.setNo(Integer.parseInt(strNo));
		d.setSubject(subject);
		d.setContent(content);
		// DB연동
		
		if(filename==null)
		{
				// 안바꿨으면 원래 파일
				d.setFilename(beforefilename);
		}
		else
		{
			d.setFilename(filename);
			File f=new File(path+"\\"+filename);
			
			// 원래 파일 삭제
			File beforefile = new File(path+"\\"+beforefilename);
			beforefile.delete();
		}
		
		
		BoardDAO.boardUpdate(d);
		
		d=BoardDAO.boardUpdateData(
				Integer.parseInt(strNo));
		
		req.setAttribute("dto", d);
		req.setAttribute("no", strNo);
		req.setAttribute("page", strPage);
		req.setAttribute("jsp", "../board/board_content.jsp");
		return "web/main/index.jsp";
	}

}
