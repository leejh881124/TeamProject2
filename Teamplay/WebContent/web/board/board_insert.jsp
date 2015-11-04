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
         $('#nameSpan').text("이름은 반드시 입력해야 합니다!!");
         $('#username').focus();
         return;
      }
      $('#nameSpan').text("");
      
      var sub = $('#usersubject').val();
      if(sub=="")
      {
         $('#subSpan').text("제목은 반드시 입력해야 합니다!!");
         $('#usersubject').focus();
         return;
      }
      $('#subSpan').text("");
      
      var cont = $('#usercontent').val();
      if(cont=="")
      {
         $('#contSpan').text("내용은 반드시 입력해야 합니다!!");
         $('#usercontent').focus();
         return;
      }
      $('#contSpan').text("");
      

      var file = $('#userfile').val();
      if(file=="")
      {
         $('#fileSpan').text("업로드를 반드시 입력해야 합니다!!");
         $('#userfile').focus();
         return;
      }
      $('fileSpan').text("");
      
      var pwd = $('#userpwd').val();
      if(pwd=="")
      {
         $('#pwdSpan').text("비밀번호는 반드시 입력해야 합니다!!");
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
            <label for="username">이름</label>
            <input type=text id="username" name="bname">
            <br>
            <span id="nameSpan" style="color:red; text-align: center"></span>
         </p>
         <p>
            <label for="useremail">이메일</label>
            <input type=text id="useremail" name="bemail">
         </p>
         <p>
            <label for="usersubject">제목</label>
            <input type=text id="usersubject" name="bsub">
            <br>
            <span id="subSpan" style="color:red; text-align: center"></span>
         </p>
         <p>
            <label for="usercontent">내용</label>
            <textarea id="usercontent" name="bcont"></textarea>
            <br>
            <span id="contSpan" style="color:red; text-align: center"></span>
         </p>
        <p>
		<label for="userfile">파일</label>
					
			<input type=file id="userfile" name=upload size=25>
			<span id="fileSpan" style="color:red; text-align: center"></span>	
		</p>		
         <p>
            <label for="userpwd">비밀번호</label>
            <input type=password id="userpwd" name="bpwd">
            <br>
            <span id="pwdSpan" style="color:red; text-align: center"></span>
         </p>
         <p class="btnSubmit">
            <input type=button value="글쓰기" id="btnSub">
            <input type=button value="취소" id="btnCancel">
         </p>
      </form>
   </div>
</body>