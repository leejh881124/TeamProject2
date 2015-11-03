<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.menu.dao.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="com.menu.dao.MenuDAO"/>
<%
	String tno=request.getParameter("tno");
	List<MenuDTO> list= MenuDAO.menuListData(Integer.parseInt(tno));	
%>
<c:set var="list" value="<%=list %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table border=0 width=500>
			<tr bgcolor=#ccffcc height=30>
				<th>번호</th>
				<th>이름</th>
				<th>가격</th>
			</tr>
			<c:forEach var="dto" items="${list }">			
			<tr height=25>
				<td>${dto.hno }</td>
				<td>${dto.hname }</td>
				<td>${dto.price }</td>
			</tr>
			</c:forEach>
		</table>
		<hr width=500>
	</center>
</body>
</html>