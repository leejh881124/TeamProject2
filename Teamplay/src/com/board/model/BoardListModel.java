package com.board.model;
import javax.servlet.http.HttpServletRequest;
import java.util.*;
import com.board.dao.*;
import javax.servlet.http.HttpServletResponse;
import java.text.*;
import com.common.*;
public class BoardListModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
//		System.out.println("BoardListModel");
		String strPage = req.getParameter("page");
		if (strPage == null) 
		{
			strPage = "1";
		}
		int curpage = Integer.parseInt(strPage);
		int rowSize = 9;
		int totalpage = BoardDAO.boardTotalPage();
		int start = (curpage * rowSize) - (rowSize - 1);
		int end = (curpage * rowSize);
		int num = end - start + 1;

		Map map = new HashMap();
		map.put("start", start); 
		map.put("end", end);
		
		List<BoardDTO> list = BoardDAO.boardListData(map);
		
		req.setAttribute("list", list);
		req.setAttribute("num", num);
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("jsp", "../board/board_list.jsp");
		return "web/main/index.jsp";
	}

}
