<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	   $('#btnSub').click(function(){
	      var subject = $('#usersubject').val();
	      if(subject=="")
	      {
	         $('#usersubject').focus();
	         return;
	      }
	      var content = $('#usercontent').val();
	      if(content=="")
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
	   
	      $('#updateForm').submit();
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
		<h1>UPDATE</h1>
	</div>
	<br>
	<br>
	<div id="container">
	<form name="update_frm" id="updateForm" method=post
			action="board_update_ok.do" enctype="multipart/form-data">
		<table class="table" border="0" width="600" height="550" style="border-spacing: 0px;
		     border-collapse: collapse;">
		 <tbody>
			<tr>
				<td width="20%" style="border-top: none;"><p class="your-para">작성자</p></td>
				<td width="80%"   style="border-top: none;">
					<input type=hidden name="no" value="${dto.no }">
					<input type=hidden name="page" value="${page }">
					<span class="your-para">${sessionScope.name}</span>
					<span class="your-para">(${sessionScope.id})</span>
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">제목</p></td>
				<td width="80%"  >
					<input type=text class="form-control"
					id="usersubject" name="subject" value="${dto.subject}">
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">내용</label>
				<td width="80%"  >
					<textarea id="usercontent" cols="60" rows="8" class="form-control" name="content">${dto.content}</textarea>
				</td>
			</tr>
			<tr>
				<td width="20%"><p class="your-para">이미지</p></td>
				<td width="80%"  >
					 <input type=file id="userfile"
					name=upload size=25 class="form-control"> 
					
				</td>
			</tr>
			
			</tbody>
		</table>			
		</form>
		<div class="send">
			<input type="submit" value="수정하기" id="btnSub" onClick="return false;">
			<input type="submit" value="취소" id="btnCancel">
		</div>
	</div>
  </center>
</body>