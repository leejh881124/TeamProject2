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
	<br>
	<h2>�ֹ��ϱ�</h2>
	<br>
		<table border=0>
			<tr>
				<td>
					<table border=0 width=200 align =left >
						<tr bgcolor="black">
							<th width=200><font color="white">��¥&�ð�</font></th>
						</tr>
						<tr>
							<td width=100> ��¥ : <input type=date id="userbday" name="bday">
						</tr>
						<tr>
							<td width=100>�ð�:</td>
						</tr>
					</table>
					
					<table border=0 width=200 align =left>
						<tr bgcolor="black">
							<th width=200><font color="white">���� ���</th>
						</tr>
						<tr>
							<td width=100>
								<input type=radio name=loc value=���� checked> ����<br>
								<input type=radio name=loc value=����õ> ����õ<br>
								<input type=radio name=loc value=�뷮��> �뷮��
							</td>
						</tr>
					</table>
					<table border=0 width=200 align =left>
						<tr bgcolor="black">
							<th width=200><font color="white">����</th>
						</tr>
						<tr>
							<td>
								<input type=radio name=choice value=�⺻���� checked> �⺻����<br>
								<input type=radio name=choice value=�����ǹ���> �����ǹ���<br>
								<input type=radio name=choice value=History����> History����
							</td>
						</tr>
					</table>
					<table border=0 width=200 align =left>
						<tr bgcolor="black">
							<th width=200><font color="white">���� ���</th>
						</tr>
						<tr>
							<td>
								<input type=radio name=pay value=�ڵ��� checked> �ڵ���<br>
								<input type=radio name=pay value=ī��> ī��
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<hr width=1000>
		
		<h2>����Ȯ��</h2>
		<table border=0 width=800>
			<tr>
				<th bgcolor="black" width=150><font color="white">
				<b>��¥ �� �ð�</b>
				</font></th>
				<td>
					&nbsp;&nbsp;&nbsp;2015/10/15
				</td>
				<td>
					���� 13:10
				</td>
			</tr>
			<tr>
				<th bgcolor="black" width=150><font color="white">
					���
				</th>
				<td colspan=2>
					&nbsp;&nbsp;&nbsp;����� ���� �Ƴ�
				</td>
			</tr>
			<tr>
				<th bgcolor="black" width=150><font color="white">
					����
				</th>
				<td>
					&nbsp;&nbsp;&nbsp;�����ǹ��� �ͱ���
				</td>
				<td>
					���� : 7��
				</td>
			</tr>
			<tr>
				<th bgcolor="black" width=150><font color="white">
					����
				</th>
				<td>
					&nbsp;&nbsp;&nbsp;�ڵ��� ����
				</td>
				<td>
					�ݾ� : 35000
				</td>
			</tr>
			<br>
			<tr>
				<td colspan=3 align=center>
				<input type="submit" value=����Ϸ�>
				</td>
				
			</tr>
		</table>
	</center>
</body>
</html>