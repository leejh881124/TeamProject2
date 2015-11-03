package com.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;
// Controller
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private WebApplicationContext wc;
	public void init(ServletConfig config) throws ServletException {
		String path=config.getInitParameter("xmlPath");
		wc=new WebApplicationContext(path); // xml 이용해서 이파일들을 안건들여도 된다.
	}	


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 따로 하게 하는 run 메소드랑 같다  쓰레드임
		try
		{
			String cmd= request.getRequestURI();//사용자가 한건 URI가 아닐까
			//              =====
			// /MainProject/main.do
			// ============= contextpath
			     
			cmd=cmd.substring(request.getContextPath().length()+1, cmd.lastIndexOf('.'));
			
			Model model=wc.getBean(cmd);
			
			String jsp=model.handlerRequest(request, response);
			System.out.println(jsp);
			String temp=jsp.substring(jsp.lastIndexOf('.')+1);
			if(temp.equals("do"))
			{
				//sendredirect
				response.sendRedirect(jsp);
			}
			else
			{
				RequestDispatcher rd= request.getRequestDispatcher(jsp);
				rd.forward(request, response);
			}
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}

}
