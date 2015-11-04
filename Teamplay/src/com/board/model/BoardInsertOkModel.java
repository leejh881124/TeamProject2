package com.board.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.ReplyBoardDAO;
import com.board.dao.ReplyBoardDTO;
import com.common.Model;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardInsertOkModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
//		String path="C:\\Users\\sist\\Git\\TeamProject2\\Teamplay\\WebContent\\web\\image";
		String path="C:\\Users\\sist\\git\\TeamProject2\\Teamplay\\WebContent\\web\\image";
		
		String enctype="EUC-KR";
		req.setCharacterEncoding("EUC-KR");
		int size=1024*1024*500;
		MultipartRequest mr = new MultipartRequest(req,path,size,enctype,new DefaultFileRenamePolicy()); //파일이름이 같을때 바뀌게 하는거 파일네임폴리시()
		String bname=mr.getParameter("bname");
		String bsub=mr.getParameter("bsub");
		String bcont=mr.getParameter("bcont");
		String bpwd=mr.getParameter("bpwd");
		String bfilename=mr.getOriginalFileName("upload");
		System.out.println(bname+","+bsub+","+bcont+","+bpwd+","+bfilename);
		ReplyBoardDTO d= new ReplyBoardDTO();
		d.setBname(bname);
		d.setBsub(bsub);
		d.setBcont(bcont);
		d.setBpwd(bpwd);
		
		if(bfilename==null)
		{
				d.setBfilename("");
		}
		else
		{
			d.setBfilename(bfilename);
			File f=new File(path+"\\"+bfilename);
		}
		
		// DB연동
		ReplyBoardDAO.boardInsert(d);
		return "board_list.do";
	}

}




