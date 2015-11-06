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
         
           <tr>
         <c:forEach var="dto" items="${list }">   
            <td><img class="circle" src="web/image/${dto.hname2}.jpg" width=200></td>
          
         </c:forEach>
           </tr>
      
      </table>
   
  	
      
<%-- 			<tr>
				<c:forEach var="dto" items="${list }">
					<td style="width:200px; height:200px ">
						<div style="width:200px; height:200px ">
							<figure class="effect-bubba"> <img class="circle"
								src="web/image/${dto.hname2}.jpg" width=200> <figcaption>
							<h4>${dto.hname}</h4>
							<p>${dto.price }</p>
							</figcaption> </figure>
						</div>
					</td>

				</c:forEach>

			</tr>





		</table>
      <hr width=500>
      
      <!-- -------------------- -->
      <div class="col-md-4 bride-grid">
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="web/image/1955.jpg" alt="">
						<figcaption>
							<h4>Cardio </h4>
							<p>In sit amet sapien eros Integer in tincidunt labore et dolore magna aliqua</p>																
						</figcaption>			
				 </figure>
				 <div class="clearfix"></div>
				
			 </div>
			
		 </div> --%>
   </center>
</body>
</html>