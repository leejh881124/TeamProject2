<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css'/>
<script src="../js/jquery.min.js"></script>
<!-- <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" /> -->
<script src="../js/bootstrap.js"></script>
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
function postFind_result()
{
	if(httpRequest.readyState==4)
	{
		if(httpRequest.status==200)
		{
			$('#postPrint').html(httpRequest.responseText);
		}
	}
}
function postFind()
{
	var param=$('#dong').val();
	/* alert(param); */
	if(param=="")
	{
		$('#dong').focus();
		$('#result').text("동/읍/면을 입력하세요");
		return;
	}
	param="?dong="+param;
	sendMessage('GET',param,"../../postFind.do",postFind_result);
}



function postOk(zip, addr)
{
	parent.join_frm.post.value=zip;
	parent.join_frm.addr1.value=addr;
	parent.Shadowbox.close();
}
$(function(){
		$('#postFindBtn').click(function(){
			postfind();
		});
		$("#dong").keypress(function(key){
	        if(key.keyCode == 13)
	        {
				postFind();
				return false;
	        }
	    });
});

</script>
<style type="text/css">
body{
	color:white;
}
a{
	color:white;
} 
a:Hover, a:focus {
	text-decoration: none;
	text-transform: none;
}
</style>
</head>
	<body>	
	<center>
		<form id="postForm" name="post_frm" method=post action="postFind_result.jsp">
			<p align=center>
			    <label for="userdong">입력 : </label>
				<input type=text id="dong" name="dong" class="form-control">
				<input type="button" id="postFindBtn" value="찾기" onclick="postFind()" class="btn btn-default">
			</p>
			<p align=center>
				<span id="result">동/읍/면을 입력하세요</span>
			</p>
			<span id="postPrint"></span>
		</form>
	</body>
	</center>
</html>