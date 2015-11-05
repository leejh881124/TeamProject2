<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=EUC-KR">
<title>Insert title here</title>

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
        
         $('#username').focus();
         return;
      }
      var sub = $('#usersubject').val();
      if(sub=="")
      {
         $('#usersubject').focus();
         return;
      }
      $('#subSpan').text("");
      
      var cont = $('#usercontent').val();
      if(cont=="")
      {
         $('#usercontent').focus();
         return;
      }
      var file = $('#userfile').val();
      if(file=="")
      {
         $('#userfile').focus();
         return;
      }
      var pwd = $('#userpwd').val();
      if(pwd=="")
      {
         $('#userpwd').focus();
         return;
      }
      
      $('#writeForm').submit();
   });
   $('#btnCancel').click(function(){
      history.back();
   });
});
</script>

</head>
<body>
  <center>
	<div class="page-header">
		<h1>WRITE </h1>
	</div>
	<br>
	<br>
	<div id="container">
	<form name="write_frm" id="writeForm" method=post
			action="board_insert_ok.do" enctype="multipart/form-data">
		<table class="table" border="0" width="600" height="550" style="border-spacing: 0px;
		     border-collapse: collapse;">
		 <tbody>
			<tr>
				<td width="20%" style="border-top: none;"><p class="your-para">이름</p></td>
				<td width="80%"   style="border-top: none;">
					<input type=text id="username"
					name="bname"class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">이메일</p></td>
				<td width="80%"  >
				 <input type=text id="useremail"
					name="bemail"class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">제목</p></td>
				<td width="80%"  >
					<input type=text class="form-control"
					id="usersubject" name="bsub">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">내용</label>
				<td width="80%"  >
					<textarea id="usercontent" cols="60" rows="8" class="form-control" name="bcont"></textarea>
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">이미지</p></td>
				<td width="80%"  >
					 <input type=file id="userfile"
					name=upload size=25 class="form-control"> 
					
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">비밀번호</p></td>
				<td width="80%"  >
					<input type=password id="userpwd" class="form-control"
					name="bpwd">
				</td>
			</tr>
			</tbody>
		</table>			
		</form>
		<div class="send">
			<input type="submit" value="글쓰기" id="btnSub" onClick="return false;">
			<input type="submit" value="취소" id="btnCancel">
		</div>
	</div>
  </center>
</body>