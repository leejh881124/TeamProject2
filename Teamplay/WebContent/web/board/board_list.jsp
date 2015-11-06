<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="test/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	   $('#writeBtn').click(function(){
	     alert('로그인 후 이용할수 있습니다.');
	     return;
	   });
});
</script>
</head>
<body>
	<center>
		<div class="page-header" >
               <h1>RECOMMENDATION BOARD</h1>
        </div>

		<table border=0 width=800>
			<tr>
			 <td>
				<c:if test="${sessionScope.id==null }">
					<button class="btn btn-default" type="button" id="writeBtn">글쓰기</button>
				</c:if>
				<c:if test="${sessionScope.id!=null }">
					<a href="board_insert.do">
						<button class="btn btn-default" type="button">글쓰기</button>
					</a>
				</c:if>
			  </td>
			</tr>
		</table>
		<br>
		<table border=0 width=800 height=500 style="border-collapse: inherit; ">
			<tr>
			<c:forEach var="dto" items="${list }">
			 
			<c:set var="i" value="${i+1 }"/>
			
			<td class="blog-post">
              <a href="board_content.do?no=${dto.no }&page=${curpage}"><img src="web/image/${dto.filename }" width="200" height="200"></a>
              
               <div class="text">
                  <a href=""> ${dto.subject}</a>
               </div>
            
               <div class="admin-tag">
               <p>Posted by ${dto.name} | ${dto.dbday } |  ${dto.recommend }</p>
               <p></p>
               
               <a href="board_content.do?no=${dto.no }&page=${curpage}" class="hvr-shutter-in-horizontal more">Readmore<span> </span></a>
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
                  <li><a class="first" href="board_list.do?page=${curpage>1?curpage-1:curpage }">이전</a></li>
               		&nbsp;
                  <li>${curpage } page / ${totalpage } pages</li>
                  &nbsp;
                  <li><a class="last" href="board_list.do?page=${curpage<totalpage?curpage+1:curpage }">다음</a></li>
               </ul>
       </div>
	</center>
</body>
</html>