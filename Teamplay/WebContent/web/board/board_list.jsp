<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<div class="page-header" >
               <h1>RECOMMENDATION BOARD</h1>
        </div>
		<table border=0 width=800>
			<tr>
				<td align=left>
					<a href="board_insert.do"><button class="btn btn-default" type="button" id="logBtn">글쓰기</button></a>
				</td>
			</tr>
		</table>
		<table border=0 width=800 height=500>
			<tr>
			<c:forEach var="dto" items="${list }">
			
			 
			<c:set var="i" value="${i+1 }"/>
			
			<td class="blog-post">
              <a href="board_content.do?no=${dto.bno }&page=${curpage}"><img src="web/image/${dto.bfilename }" width="200" height="200"></a>
              
               <div class="text">
                  <a href=""> ${dto.bsub}</a>
               </div>
                <c:if test="${dto.replyCount!=0 }">
				(${dto.replyCount})
				</c:if>
               <div class="admin-tag">
               <p>Posted by ${dto.bname} |${dto.replyCount } Comments</p>
               
               <a href="board_content.do?no=${dto.bno }&page=${curpage}" class="hvr-shutter-in-horizontal more">Readmore<span> </span></a>
               </div>	
				
				</td>
			<c:if test="${i%3==0 }">
				</tr>
				<c:if test="${i!=num }">
					<tr>	
				</c:if>	
			</c:if>
		</c:forEach>
		
		</table>
		
		 <div class="blog-pagenat">
               <ul>
                  <li><a class="frist" href="board_list.do?page=${curpage>1?curpage-1:curpage }">Prev</a></li>
               
                  <li>${curpage } page / ${totalpage } pages</li>
                  <li><a class="last" href="board_list.do?page=${curpage<totalpage?curpage+1:curpage }">Next</a></li>
               </ul>
       </div>
	</center>
</body>
</html>