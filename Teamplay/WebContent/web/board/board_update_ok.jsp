<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${bCheck==false }">
  <script>
   alert("비밀번호가 틀립니다");
   history.back();
  </script>
</c:if>
<c:if test="${bCheck==true }">
  <c:redirect url="board_content.do?bno=${bno }&page=${page }"/>
</c:if>