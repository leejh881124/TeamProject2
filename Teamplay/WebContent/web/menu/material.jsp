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
<style type="text/css">
.circle {
	 border-radius: 50%;
}
</style>
</head>
<body>
	<center>
		<table border=0 width=500>
			
			
			<c:forEach var="dto" items="${list }">	
				<img class="circle" src="web/image/${dto.hname2}.jpg">${dto.hname }
			</c:forEach>
			
			
					
			<%-- <c:forEach var="dto" items="${list }">			
			<tr height=25>
				<td align=center>${dto.hname }
				<c:if test="${dto.price!=0}">
					&nbsp;&nbsp;(${dto.price }원)
				</c:if>
				</td>
				<td><img class="circle" src="web/image/${dto.hname2}.jpg"></td>
				
			</tr>
			</c:forEach> --%>
		</table>
		<hr width=500>
	</center>
</body>
</html>