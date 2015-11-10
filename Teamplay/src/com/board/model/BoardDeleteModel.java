package com.board.model;
import java.io.File;

/*
  		board_delete.do => ��Ī	 (XML�ڵ�  bean�±�)
  						board_delete (BoardDeleteModel)	 
  		 => handlerRequest() <=> DB (mapper:SQL) => DAO
  		 => jsp ���				
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
import com.board.dao.*;
public class BoardDeleteModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
//		System.out.println("BoardDeleteModel");
		String no=req.getParameter("no");
		String page = req.getParameter("page");
		
		// ���� ����
		// ������ �ڱⲨ��
		String path="C:\\webDev\\webStudy2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Teamplay\\web\\image";
		BoardDTO d = BoardDAO.boardContentData(Integer.parseInt(no));
		File file = new File(path+"\\"+d.getFilename());
		file.delete();
		
		// DB����
		BoardDAO.boardDelete(Integer.parseInt(no));
		
		req.setAttribute("page", page);
//		return "board/delete.jsp";
		return "board_list.do";
	}

}
