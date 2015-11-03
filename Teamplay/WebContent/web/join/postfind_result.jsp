<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${count==0}">
		<table border=0 width=410>
			<tr>
				<td align=center>
				�˻��� ����� �����ϴ�.
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${count!=0 }">
		<table border=0 width=410 class="table table-hover">
			<thead>
			<tr>
				<th width=20%>��ȣ</th>
				<th width=80%>�ּ�</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="d" items="${list }">
				<tr>	
					<td width=20%>${d.zipcode }</td>
					<td width=80%><a href="javascript:postOk('${d.zipcode }','${d.addr }')">${d.addr }</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</c:if>
</body>
</html>