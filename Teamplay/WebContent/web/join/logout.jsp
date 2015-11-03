<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#logoutBtn').click(function(){
		$('#logout_frm').submit();
	});
});
</script>
</head>
<body>
   
    
    <div align=right style="margin-top: 30px; font-size: 12px" >
		 <form method=post action="logout.do" id="logout_frm">
			<span class="media-heading">${sessionScope.name }님   ${sessionScope.admin=='y'?"관리자":"일반" } 로그인입니다</span> 
			
			<!-- <button class="btn btn-default" type="button" id="logoutBtn">로그아웃</button> -->
		  	<input class="btn btn-default" type=button value=로그아웃 id="logoutBtn">
		 </form>
		 
	</div>
	
</body>
</html>