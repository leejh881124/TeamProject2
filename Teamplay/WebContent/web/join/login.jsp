<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="test/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#logBtn').click(function(){
		var id=$('#id').val();
		if(id=="")
		{
			$('#id').focus();
			$('#logPrint').text("ID를 입력하세요");
			return;
		}
		var pwd=$('#pwd').val();
		if(pwd=="")
		{
			$('#pwd').focus();
			$('#logPrint').text("Password를 입력하세요");
			return;
		}
		$('#log_frm').submit();
	});
});

</script>
</head>
<body>

  
  <div align=right style="margin-top: 30px; font-size: 12px" >
		 <form method=post action="login.do" id="log_frm">
			<span> ID </span> 
			<input type="text" name=id id="id" class="form-control"
				placeholder="@email.com" size=14> 
			<span>PW</span> 
			<input type="password" name=pwd id="pwd" class="form-control" placeholder="password" size=8>

			<button class="btn btn-default" type="button" id="logBtn">로그인</button>
			<a href="join.do" style="color: black;">
				<button class="btn btn-default" type="button">회원가입</button>
			</a>
		 </form>
		</div>
		<div align=right style="margin-right: 30px">
			<span id="logPrint" ></span>
		</div>
</body>
</html>