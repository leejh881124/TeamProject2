/*package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.ReplyBoardDAO;
import com.board.dao.ReplyBoardDTO;
import com.common.Model;

public class BoardUpdateOkModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("EUC-KR");
	
		String strPage=req.getParameter("page");
		String strNo=req.getParameter("no");
		String name=req.getParameter("name");
		String subject=req.getParameter("subject");
		String content=req.getParameter("content");
		String pwd=req.getParameter("pwd");
		ReplyBoardDTO d= new ReplyBoardDTO();
		d.setNo(Integer.parseInt(strNo));
		d.setName(name);
		d.setSubject(subject);
		d.setContent(content);
		d.setPwd(pwd);
		// DB연동
		req.setAttribute("no", strNo);
		req.setAttribute("page", strPage);
		return "board/board_update_ok.jsp";
	}

}*/
package com.board.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.ReplyBoardDAO;
import com.board.dao.ReplyBoardDTO;
import com.common.Model;

public class BoardUpdateOkModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("EUC-KR");
		String strPage=req.getParameter("page");
		String strNo=req.getParameter("no");
		String bname=req.getParameter("name");
		String bsub=req.getParameter("subject");
		String bcontent=req.getParameter("content");
		String bpwd=req.getParameter("pwd");
		ReplyBoardDTO d=new ReplyBoardDTO();
		d.setBno(Integer.parseInt(strNo));
		d.setBname(bname);
		d.setBsub(bsub);
		d.setBcont(bcontent);
		d.setBpwd(bpwd);
		// DB연동 
		String db_pwd=ReplyBoardDAO.boardGetPwd(d.getBno());
		boolean bCheck=false;
		if(db_pwd.equals(bpwd))
		{
			bCheck=true;
			ReplyBoardDAO.boardUpdate(d);
		}
		else
		{
			bCheck=false;
		}
		req.setAttribute("bCheck", bCheck);
		req.setAttribute("no", strNo);
		req.setAttribute("page", strPage);
		return "board/board_update_ok.jsp";
	}

}




