<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="web/shadow/css/shadowbox.css"/>
<script type="text/javascript" src="web/shadow/js/shadowbox.js"></script>
<script type="text/javascript">

var httpRequest=null;
function createHttpRequest(){
	if(window.ActiveXObject){
		return new ActiveXObject("Msxml2.XMLHTTP");
	}
	else if(window.XMLHttpRequest){
		return new XMLHttpRequest();
	}
	else {
		return null;
	}
}
function sendMessage(tno){
	httpRequest=createHttpRequest();
	httpRequest.open("GET", "web/menu/material.jsp?tno="+tno, true);
	httpRequest.onreadystatechange=result;
	httpRequest.send(null);
}
function result(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var div=document.getElementById("materialPrint");
			//alert(httpRequest.responseText);
			div.innerHTML=httpRequest.responseText;
		}
	}
}

Shadowbox.init({
	players:["iframe"]
});
function nutirition()
{
	Shadowbox.open({
		content:'web/menu/nutrition.jsp',
		player:'iframe',
		title:'��������',
		width:800,
		height:500
	});
}
</script>
</head>
<body>
 <center>
  <br>
  <br>
  <h2 class="heading text-center">make burger</h2>
  <br>
  <br>
  	<form>
		<input type=button class="form-control" value="��������" onclick="sendMessage(10)">
		<input type=button class="form-control" value="step1. �� �����ϱ�" onclick="sendMessage(20)">
		<input type=button class="form-control" value="step2. ��Ƽ �����ϱ�" onclick="sendMessage(30)">
		<input type=button class="form-control" value="step3. ġ�� ���ϱ�" onclick="sendMessage(40)">
		<input type=button class="form-control" value="step4. ä�� �߰��ϱ�" onclick="sendMessage(50)">
		<br>
		<input type=button class="form-control" value="step5. �ҽ� �����ϱ�" onclick="sendMessage(60)">
		<input type=button class="form-control" value="step6. �����̾� �����ϱ�" onclick="sendMessage(70)">
		<input type=button class="form-control" value="step7. ���̵� �޴�" onclick="sendMessage(80)">
	</form>	
		<br>
		<br>
		
		<div id="materialPrint"></div>
		<hr width=800 color="red">
        <buttton value="��������" onclick="nutirition()" ><img src="web/images/info.jpg" width=50 height=50></buttton>
  		
   <!-- <table border=0 width=500>
    <tr>
     <td align=center>
      <a href=""><img src="web/image/1955fire.png" border=0 width=300>&nbsp;B&B ���̾�</a></td>
     <td align=center> 
      <a href=""><img src="web/image/1955smoky.png" border=0 width=300>&nbsp;B&B ����Ű</a></td>
     <td align=center> 
      <a href=""><img src="web/image/1955.png" border=0 width=300>&nbsp;B&B</a></td>
     
    </tr>
    <tr>
     <td align=center> 
      <a href=""><img src="web/image/bacontomato.png" border=0 width=300>&nbsp;������ �丶��</a></td>
     <td align=center>  
      <a href=""><img src="web/image/double1955.png" border=0 width=300>&nbsp;���� B&B</a></td>
     <td align=center>  
      <a href=""><img src="web/image/doublebulgogi.png" border=0 width=300>&nbsp;���� �Ұ��</a></td>
     
    </tr>
    <tr>
     <td align=center>
      <a href=""><img src="web/image/doublequater.png" border=0 width=300>&nbsp;���� ���� B&B</a></td>
     <td align=center> 
      <a href=""><img src="web/image/quaterpounder.png" border=0 width=300>&nbsp;���� B&B</a></td>
     <td align=center> 
      <a href=""><img src="web/image/tomatocheese.png" border=0 width=300>&nbsp;�丶�� ġ��</a></td>
     
    </tr>
    <tr>

   
   </tr>
   </table> -->
 </center>
</body>
</html>