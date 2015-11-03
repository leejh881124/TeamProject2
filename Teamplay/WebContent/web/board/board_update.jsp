<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="board/board.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// window.onload=function(){}
// $(document).ready(function(){})
$(function(){
	$('#username').focus();
	//$('#username').val("admin");
	$('#btnSub').click(function(){
		
		var name=$('#username').val();
		if(name=="")
		{
			$('#nameSpan').text("�̸��� �ݵ�� �Է��ؾ� �մϴ�!!");
			$('#username').focus();
			return;
		}
		$('#nameSpan').text("");
		
		var sub=$('#usersubject').val();
		if(sub=="")
		{
			$('#subSpan').text("������ �ݵ�� �Է��ؾ� �մϴ�!!");
			$('#usersubject').focus();
			return;
		}
		$('#subSpan').text("");
		
		var cont=$('#usercontent').val();
		if(cont=="")
		{
			$('#contSpan').text("������ �ݵ�� �Է��ؾ� �մϴ�!!");
			$('#userscontent').focus();
			return;
		}
		$('#contSpan').text("");
		
		var pwd=$('#userpwd').val();
		if(pwd=="")
		{
			$('#pwdSpan').text("��й�ȣ�� �ݵ�� �Է��ؾ� �մϴ�!!");
			$('#userpwd').focus();
			return;
		}
		$('#pwdSpan').text("");
		
		$('#writeForm').submit();
	});
	$('#btnCancel').click(function(){
		history.back();
	});
});
</script>
</head>
<body>
  <div id="wrapper">
    <form name="write_frm" id="writeForm" method=post action="board_update_ok.do">
      <p>
       <label for="username">�̸�</label>
       <input type=text id="username" name="name" value="${dto.name }">
       <input type=hidden name="no" value="${dto.no}">
       <input type=hidden name="page" value="${page}">
       <br>
       <span id="nameSpan" style="color:red;text-align: center"></span>
      </p>
      
      <p>
       <label for="usersubject">����</label>
       <input type=text id="usersubject" name="subject" value="${dto.subject }">
        <br>
       <span id="subSpan" style="color:red;text-align: center"></span>
      </p>
      <p>
       <label for="usercontent">����</label>
       <textarea name="content" id="usercontent">${dto.content }</textarea>
        <br>
       <span id="contSpan" style="color:red;text-align: center"></span>
      </p>
      <p>
       <label for="userpwd">��й�ȣ</label>
       <input type=password id="userpwd" name="pwd">
        <br>
       <span id="pwdSpan" style="color:red;text-align: center"></span>
      </p>
      <p class="btnSubmit">
       <input type=button value="����" id="btnSub">
       <input type=button value="���" id="btnCancel">
      </p>
    </form>
  </div>
</body>
</html>
