package com.board.model;
import java.io.File;

/*
  		board_delete.do => 매칭	 (XML코딩  bean태그)
  						board_delete (BoardDeleteModel)	 
  		 => handlerRequest() <=> DB (mapper:SQL) => DAO
  		 => jsp 출력				
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
		
		// 파일 삭제
		// 절대경로 자기꺼로
		String path="C:\\webDev\\webStudy2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Teamplay\\web\\image";
		BoardDTO d = BoardDAO.boardContentData(Integer.parseInt(no));
		File file = new File(path+"\\"+d.getFilename());
		file.delete();
		
		// DB삭제
		BoardDAO.boardDelete(Integer.parseInt(no));
		
		req.setAttribute("page", page);
//		return "board/delete.jsp";
		return "board_list.do";
	}

}
