<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board/table.css"/>
</head>
<body>
	<center>
		<table border=0 width=600>
			<tr>
				<td align=left>
					<a href="board_insert.do"><img src="image/write.gif"></a>
				</td>
			</tr>
		</table>
		<table id="table_content">
			<tr>
				<th width=10%>��ȣ</th>
				<th width=45%>����</th>
				<th width=15%>�̸�</th>
				<th width=20%>�ۼ���</th>
				<th width=10%>��ȸ��</th>
			</tr>
			<%--
				for(BoardDTO dto:list)
			 --%>
			 <c:forEach var="dto" items="${list }">
			<tr id="listTd">
			<%--
				dto.getNo()
			 --%>
			<td class="tdcenter">${dto.no }</td>
			<td class="tdleft">
			<%--
				if(dto.getGroup_tab()!=0)
				{
					for(int i=0;i<dto.getGroup_tab();i++)
					{
					
					}
				}
			 --%>

			
			<a href="board_content.do?no=${dto.no }&page=${curpage}">${dto.subject }</a>
				<c:if test="${dto.replyCount!=0 }">
				(${dto.replyCount})
				</c:if>
				
				<c:if test="${today==dto.dbday }">
					<sup>
						<img src="image/icon_new.gif">
					</sup>
				</c:if>
				</td>
			<td class="tdcenter">${dto.name }</td>
			<td class="tdcenter">${dto.dbday }</td>
			<td class="tdcenter">${dto.hit}</td>
			</tr>
			<c:set var="count" value="${count-1}"/>
			</c:forEach>
		
		</table>
		<table border=0 width=600>
			<tr>
				<td align=right>
				<a href="board_list.do?page=${curpage>1?curpage-1:curpage }"><img src="image/prev_icon.gif"></a>
				<a href="board_list.do?page=${curpage<totalpage?curpage+1:curpage }"><img src="image/next_icon.gif"></a>
				${curpage } page / ${totalpage } pages
				</td>
			</tr>
		</table>
	</center>
</body>
</html>