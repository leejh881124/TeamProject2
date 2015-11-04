<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board/table.css"/>
</head>
<body>
	<center>
		<div class="page-header">
               <h1>RECOMMEND</h1>
           </div>
		<table border=0 width=600>
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
               <p>Posted by <a href=""> ${dto.bname}</a> in General | <a href="">${dto.replyCount } Comments</a> </p>
               
               <a href="" class="hvr-shutter-in-horizontal more">Readmore<span> </span></a>
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