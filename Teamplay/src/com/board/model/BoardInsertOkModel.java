package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.ReplyBoardDAO;
import com.board.dao.ReplyBoardDTO;
import com.common.Model;

public class BoardInsertOkModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String bname=req.getParameter("name");
		String bsub=req.getParameter("subject");
		String bcont=req.getParameter("content");
		String bpwd=req.getParameter("pwd");
		ReplyBoardDTO d=new ReplyBoardDTO();
		d.setBname(bname);
		d.setBsub(bsub);
		d.setBcont(bcont);
		d.setBpwd(bpwd);
		// DB¿¬µ¿
		ReplyBoardDAO.boardInsert(d);
		return "board_list.do";
	}

}




