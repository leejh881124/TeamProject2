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
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});

</script>
<title>Insert title here</title>
</head>
<body>
   <center>
    <table border=0 width=500 id="aaa">
         
         <tr>
         <c:forEach var="dto" items="${list }">  
         	<c:set var="i" value="${i+1 }"/> 
         	<td>
         	<div class="content-grid l-grids" style="width: 300px;">
				 <figure class="effect-bubba">
            	
            	<img src="web/image/${dto.hname2}.jpg" alt=""/>
						<figcaption>
							<h4> </h4>
							<p>${dto.info }</p>																
						</figcaption>			
				 </figure>
				 <div class="clearfix"></div>
				 <h4>${dto.hname }</h4>
			 </div>
          </td>
         	<c:if test="${i%3==0 }">
					</tr>
				<c:if test="${i!=num }">
					<tr>	
				</c:if>	
			</c:if>
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