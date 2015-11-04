<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="board/board.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// window.onload=function(){}
// $(document).ready(function(){})
$(function(){
   $('#username').focus();
   $('#btnSub').click(function(){
      var name = $('#username').val();
      if(name=="")
      {
         $('#nameSpan').text("�̸��� �ݵ�� �Է��ؾ� �մϴ�!!");
         $('#username').focus();
         return;
      }
      $('#nameSpan').text("");
      
      var sub = $('#usersubject').val();
      if(sub=="")
      {
         $('#subSpan').text("������ �ݵ�� �Է��ؾ� �մϴ�!!");
         $('#usersubject').focus();
         return;
      }
      $('#subSpan').text("");
      
      var cont = $('#usercontent').val();
      if(cont=="")
      {
         $('#contSpan').text("������ �ݵ�� �Է��ؾ� �մϴ�!!");
         $('#usercontent').focus();
         return;
      }
      $('#contSpan').text("");
      

      var file = $('#userfile').val();
      if(file=="")
      {
         $('#fileSpan').text("���ε带 �ݵ�� �Է��ؾ� �մϴ�!!");
         $('#userfile').focus();
         return;
      }
      $('fileSpan').text("");
      
      var pwd = $('#userpwd').val();
      if(pwd=="")
      {
         $('#pwdSpan').text("��й�ȣ�� �ݵ�� �Է��ؾ� �մϴ�!!");
         $('#userpwd').focus();
         return;
      }
      $('pwdSpan').text("");
      
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
      <form name="write_frm" id="writeForm" method=post action="board_insert_ok.do" enctype="multipart/form-data">
         <p>
            <label for="username">�̸�</label>
            <input type=text id="username" name="bname">
            <br>
            <span id="nameSpan" style="color:red; text-align: center"></span>
         </p>
         <p>
            <label for="useremail">�̸���</label>
            <input type=text id="useremail" name="bemail">
         </p>
         <p>
            <label for="usersubject">����</label>
            <input type=text id="usersubject" name="bsub">
            <br>
            <span id="subSpan" style="color:red; text-align: center"></span>
         </p>
         <p>
            <label for="usercontent">����</label>
            <textarea id="usercontent" name="bcont"></textarea>
            <br>
            <span id="contSpan" style="color:red; text-align: center"></span>
         </p>
        <p>
		<label for="userfile">����</label>
					
			<input type=file id="userfile" name=upload size=25>
			<span id="fileSpan" style="color:red; text-align: center"></span>	
		</p>		
         <p>
            <label for="userpwd">��й�ȣ</label>
            <input type=password id="userpwd" name="bpwd">
            <br>
            <span id="pwdSpan" style="color:red; text-align: center"></span>
         </p>
         <p class="btnSubmit">
            <input type=button value="�۾���" id="btnSub">
            <input type=button value="���" id="btnCancel">
         </p>
      </form>
   </div>
</body>