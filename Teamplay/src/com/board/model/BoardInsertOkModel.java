package com.board.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardInsertOkModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		//String path="C:\\Users\\sist\\Git\\TeamProject2\\Teamplay\\WebContent\\web\\image";
		//String path="C:\\webDev\\webStudy2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Teamplay\\web\\images";
//		String path="C:\\webDev\\webStudy\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Teamplay\\web\\images";
		//C:\\webDev\\webStudy\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Teamplay\\web\\image
		// 절대경로 자기꺼로
		String path="C:\\webDev\\webStudy2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Teamplay\\web\\image";
		String enctype="EUC-KR";
		req.setCharacterEncoding("EUC-KR");
		int size=1024*1024*500;
		MultipartRequest mr = new MultipartRequest(req,path,size,enctype,new DefaultFileRenamePolicy()); //파일이름이 같을때 바뀌게 하는거 파일네임폴리시()
		String id = mr.getParameter("id");
		String name=mr.getParameter("name");
		String subject=mr.getParameter("subject");
		String content=mr.getParameter("content");
		String filename=mr.getOriginalFileName("filename");
//		System.out.println(id+"," +name+","+subject+","+content+","+filename);
		BoardDTO d= new BoardDTO();
		d.setId(id);
		d.setName(name);
		d.setSubject(subject);
		d.setContent(content);
		d.setFilename(filename);

		if(filename==null)
		{
				d.setFilename("");
		}
		else
		{
			d.setFilename(filename);
			File f=new File(path+"\\"+filename);
		}
		
		// DB연동
		BoardDAO.boardInsert(d);
		return "board_list.do";
	}

}




