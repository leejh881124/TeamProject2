<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
/* body{
      font-family: 'Oswald', sans-serif;
      font-size: 9pt;
}
ul {
     list-style-type: none;
      
}
li {
      display:  inline;
      padding-left: 100px;
      padding-top: 50px;
      width: 100px;
}
a{
     text-decoration: none;
     color: black;
}
tr {
	height: 30px;
}

a:HOVER {
	text-decoration: underline;
	color: green;
}
input[type="submit"] {
  font-size: 1em;
  background: #242a2c;
  padding: 0.7em 2em;
  text-align: center;
  color: #fff;
  border: none;
  outline: none;
  text-transform: uppercase;
  -webkit-appearance: none;
    transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
  -ms-transition: 0.5s all;
  letter-spacing:1px;
}
input[type="submit"]:hover {
  background:rgba(249, 72, 119, 0.79);
}
 */
</style>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fitness Zone Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
</head>
<body>
	<center>
	<h1 class="page-header">RESERVE</h1>
	<br>
		<table border=0>
			<tr>
				<td>
					<table border=0 width=200 align =left >
						<tr bgcolor="black">
							<th width=200><font color="white">날짜&시간</font></th>
						</tr>
						<tr>
							<td width=100> 날짜 : <input type=date id="userbday" name="bday">
						</tr>
						<tr>
							<td width=100>시간:</td>
						</tr>
					</table>
					
					<table border=0 width=200 align =left>
						<tr bgcolor="black">
							<th width=200><font color="white">매장 장소</th>
						</tr>
						<tr>
							<td width=100>
								<input type=radio name=loc value=신촌 checked> 신촌<br>
								<input type=radio name=loc value=동인천> 동인천<br>
								<input type=radio name=loc value=노량진> 노량진
							</td>
						</tr>
					</table>
					<table border=0 width=200 align =left>
						<tr bgcolor="black">
							<th width=200><font color="white">버거</th>
						</tr>
						<tr>
							<td>
								<input type=radio name=choice value=기본버거 checked> 기본버거<br>
								<input type=radio name=choice value=나만의버거> 나만의버거<br>
								<input type=radio name=choice value=History버거> History버거
							</td>
						</tr>
					</table>
					<table border=0 width=200 align =left>
						<tr bgcolor="black">
							<th width=200><font color="white">결제 방법</th>
						</tr>
						<tr>
							<td>
								<input type=radio name=pay value=핸드폰 checked> 핸드폰<br>
								<input type=radio name=pay value=카드> 카드
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<hr width=1000>
		<br>
		<br>
		<h1 class="page-header">CONFIRM</h1>
		<table border=0 width=800>
			<tr>
				<th bgcolor="black" width=150><font color="white">
				<b>날짜 및 시간</b>
				</font></th>
				<td>
					&nbsp;&nbsp;&nbsp;2015/10/15
				</td>
				<td>
					오후 13:10
				</td>
			</tr>
			<tr>
				<th bgcolor="black" width=150><font color="white">
					장소
				</th>
				<td colspan=2>
					&nbsp;&nbsp;&nbsp;서울시 신촌 맥날
				</td>
			</tr>
			<tr>
				<th bgcolor="black" width=150><font color="white">
					버거
				</th>
				<td>
					&nbsp;&nbsp;&nbsp;나만의버거 와구아
				</td>
				<td>
					수량 : 7개
				</td>
			</tr>
			<tr>
				<th bgcolor="black" width=150><font color="white">
					결제
				</th>
				<td>
					&nbsp;&nbsp;&nbsp;핸드폰 결제
				</td>
				<td>
					금액 : 35000
				</td>
			</tr>
			<br>
			<tr>
				<td colspan=3 align=center>
				<input type="submit" value=예약완료>
				</td>
				
			</tr>
		</table>
	</center>
</body>
</html>