<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>   
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="../js/jquery.min.js"></script>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
body{
	color:white;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
var httpRequest=null;
function createHttpRequest()
{
	if(window.ActiveXObject) // IE 6.0이상
	{
		return new ActiveXObject("Msxml2.XMLHTTP");
		// Microsoft.XMLHTTP
	}
	else if(window.XMLHttpRequest) // 크롬,ff
	{
		return new XMLHttpRequest();
	}
	else
	{
		return null;// 지원하지 않는 브라우저
	}
}
function sendMessage(method,param,url,callback)
{
	// 서버연결 DWR,DOJO
	httpRequest=createHttpRequest();
	httpRequest.open(method,url+param,true);
	// true: 비동기, false:동기
	httpRequest.onreadystatechange=callback;
	httpRequest.send(null);
}
function idcheck_result()
{
	if(httpRequest.readyState==4)
	{
		if(httpRequest.status==200)
		{
			var res=httpRequest.responseText;
		/* 	alert(res); */
			if(res.trim()=='NOID')
			{
				$('#result').html('<font color=white>사용가능한 ID입니다</font>');
			    $('#Ok').html('<input type=button value="확인" class="btn btn-default" onclick="Ok()">');
			}
			else
			{
				$('#result').html('<font color=white>이미 사용중인 ID입니다</font>');
				 $('#Ok').html('');
			}
		}
	}
}
function idcheck()
{
	var param=$('#id').val();
	if(param=="")
	{
		$('#id').focus();
		$('#result').text("아이디를 입력하세요");
		return;
	}
	else if(param.indexOf("@")==-1 || param.indexOf(".")==-1 )
	{
		$('#id').focus();
		$('#result').text("이메일 형식으로 입력하세요");
		return;
	}
	param="?id="+param;
	sendMessage('GET',param,"../../idcheck.do",idcheck_result);
}
function Ok()
{
	parent.join_frm.id.value=$('#id').val(); 
	parent.Shadowbox.close();
}

</script>
</head>
<body>
	<div >
		<p align=center>
			<br>
			<label for="userdong">입력 : </label>
			<input type=text id="id" name="id" class="form-control"  placeholder="이메일형식"">
			<input type=button value="검색" onclick="idcheck()" class="btn btn-default">
		</p>
		<p align=center>
			<span id="result">아이디를 입력하세요</span>
		</p>
		<br>
		<p align=center>
			<span id="Ok"></span>
		</p>
	</div>
</body>
</html>