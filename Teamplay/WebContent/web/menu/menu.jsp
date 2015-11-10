<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
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
		title:'영양정보',
		width:800,
		height:500
	});
}
</script>
</head>
<body>
 <center>
  
   <div id="myCarousel" class="carousel slide span3" style="width:90%">
            
            <div class="carousel-inner">
                <div class="item" >
                   
                    <img src="web/image/menu_info.jpg">
                    
                </div>
                <div class="item active">
                    
                    <img src="web/image/menu_info1.jpg">
                    
                </div>
                <div class="item">
                    
                    <img src="web/image/menu_info2.jpg">
                    
                    
                </div>
            </div>
            
            <a class="carousel-control left" href="#myCarousel" data-slide="prev"></a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next"></a>
        </div>
      
   <!-- <h1 class="page-header">MAKE BURGER</h1> -->
 
  <br>
  
  	<form>
		<input type=button class="form-control" value="기존버거" onclick="sendMessage(10)">
		<input type=button class="form-control" value="step1. 번 선택하기" onclick="sendMessage(20)">
		<input type=button class="form-control" value="step2. 패티 선택하기" onclick="sendMessage(30)">
		<input type=button class="form-control" value="step3. 치즈 더하기" onclick="sendMessage(40)">
		<input type=button class="form-control" value="step4. 채소 추가하기" onclick="sendMessage(50)">
		<br>
		<input type=button class="form-control" value="step5. 소스 선택하기" onclick="sendMessage(60)">
		<input type=button class="form-control" value="step6. 프리미엄 토핑하기" onclick="sendMessage(70)">
		<input type=button class="form-control" value="step7. 사이드 메뉴" onclick="sendMessage(80)">
	</form>	
		<br>
		<br>
		
		<div id="materialPrint"></div>
		<hr width=800 color="red">
        <div align="right" style="margin-right:200px">
        <buttton value="영양정보" onclick="nutirition()" ><img src="web/images/info2.jpg" width=50 height=50></buttton>
  		</div>
   
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
 </center>
</body>
</html>