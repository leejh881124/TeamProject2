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
Shadowbox.init({
	players:["iframe"]
});

$(function(){
	$('#idBtn').click(function(){
		Shadowbox.open({
			content:'web/join/idcheck.jsp',
			player:'iframe',
			title:'���̵� �ߺ�üũ',
			width:350,
			height:180
		});
	});
	$('#postBtn').click(function(){
		Shadowbox.open({
			content:'web/join/postfind.jsp',
			player:'iframe',
			title:'�����ȣ ã��',
			width:500,
			height:500
		});
}	);
});
</script>
</head>
<body>
	<div class="container">
		<center>
		<br>
		<br>
		<h2 class="heading text-center">Join </h2>
		<br>
		<br>
	
		<table class="table" border="0" width="550" height="550">
			<tbody>
			<form name="join_frm" id="joinForm">
			<tr>
				<td width="20%"><p class="your-para">���̵�</p></td>
				<td width="80%" align="left" class="send">
					<input type="text" id="id" name="id" size="20" readonly class="form-control" placeholder="@email.com">
					<input type="button" name="idCheck" id="idBtn" value="�ߺ�üũ" class="btn btn-default" >
				</td>
				
			</tr>
			<tr>
				<td width="20%" rowspan="2"><p class="your-para">��й�ȣ</p></td>
				<td width="80%" align="left">
					<input type="password" name="pwd" id="pwd" size="35" class="form-control">
					
				</td>
			</tr>
			<tr>
				
				<td width="80%" align="left">
					<input type="password" name="pwd2" id="pwd2" size="35" placeholder="���Է�" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">�̸�</p></td>
				<td width="80%" align="left">
					<input type="text" name="name" id="name" size="35" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">�������</p></td>
				<td width="80%" align="left">
					<input type="date" name="bday" id="bday" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="30%"><p class="your-para">����</p></td>
				<td width="70%" align="left">
				<input class="btn btn-default dropdown-toggle" type="radio" name="sex"  id="sex" value="����" checked="">����
					<input type="radio" name="sex" id="sex" value="����">����
				</td>
			</tr>
			
			<tr>
				<td width=20%><p class=your-para>��ȭ��ȣ</p></td>
				<td width=80% align=left >
					<input type=text id="tel1" name="tel1" size=6 class="form-control">- 
    			    <input type=text id="tel2" name="tel2" size=7 class="form-control">-
					<input type=text id="tel3" name="tel3" size=7 class="form-control">
				</td>
			</tr>
			
			<tr>
				<td width="20%"><p class="your-para">�����ȣ</p></td>
				<td width="80%" align="left">
					<input type="text" id="post" name="post" size="15" readonly class="form-control">
					<input type="button" value="�����ȣ �˻�" name="postBtn" id="postBtn" class="btn btn-default" >
					
				</td>
			</tr>
			
			
			
			<tr>
				<td width="20%" rowspan="2"><p class="your-para">�ּ�</p></td>
				<td>
					<input type="text" id="addr1" name="addr1" size="50" readonly class="form-control">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="addr2" name="addr2" size="50" class="form-control">
				</td>
			</tr>
			<tr>
				<td class="send" colspan="3" align="center">
					<br>
					<input type="submit" value="�����ϱ�">
				</td>
			</tr> 
			
		
			<!-- <tr>
				<td width="20%"><p class="your-para">�̸���</p></td>
				<td width="80%" align="left">
					<input type="text" name="email" size="35" class="form-control">
				</td>
			</tr>
			-->
			</form>
		</tbody></table>
	

		
		</center>
	</div>
</body>
</html>
