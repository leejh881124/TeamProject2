<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


      <div class="container">
         <div>
           <jsp:include page="${slider }"></jsp:include>
         </div>
         <br>
         <table>
            <th>게시물 best</th>
            <tr>
               <td><img src="web/images/1st.jpg"></td>
               <td><img src="web/images/2st.jpg"></td>
               <td><img src="web/images/3st.jpg"></td>
            </tr>
            <tr>
            	<c:forEach var="list" items="${ list12}">
            	
            	<td><img src="web/images/${list.filename }" width="250px" height="250px"> </td>
            	</c:forEach>
            </tr>
            <tr>
     		    <c:forEach var="list" items="${ list12}">
            	<td>${list.subject } </td>
            	</c:forEach>
            </tr>
         </table>

         <br>
         <div class="container">
            <h2 align=left>BREAK BURGER 이용 방법</h2>
            <img src="web/images/howto2.jpg">
         </div>
      </div>
      
</body>
</html>