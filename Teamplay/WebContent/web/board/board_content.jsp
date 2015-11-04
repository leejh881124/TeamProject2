<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board/table.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
var i=0;
$(function(){
   $('#delTr').hide();
   $('#delA').click(function(){
      if(i==0)
      {
         $('#delTr').show();
         i=1;
      }
      else
      {
         $('#delTr').hide();
         i=0;
      }
   });
   $('#delBtn').click(function(){
      var pwd=$('#pwd').val();
      if(pwd=="")
      {
         $('#pwd').focus();
         return;
      }
      $('#delfrm').submit();
   });
   var j=0;
   $('#replyShow').click(function(){
      if(j==0)
      {
         $('#reply').show();
         $('#replyShow').text("댓글닫기");
         j=1;
         
      }
      else
      {
         $('#reply').hide();
         $('#replyShow').text("댓글보기");
         j=0;
         // text() val() html() attr()
         /*
            text() : <a>aaaaa</a>
            text('bbbb') <a>bbbb</a>
            
            val() : <input> <textarea> <select>
            $('a').html() : <a><b><c></c></b></a>
                  ==> innerHTML
            attr('src')
         */
      }
   });
   $('#replyBtn').click(function(){
      var msg=$('#rmsg').val();
      if(msg=="")
      {
         alert("댓글 내용을 입력하세요");
         $('#rmsg').focus();
         return;
      }
      $('#re_new_frm').submit();
      // action수행
   });
   var k=0;
   $('.reRe').click(function(){
      var no=$(this).attr('name');
      if(k==0)
      {
         $('#re_re_tr'+no).show();
         k=1;
      }
      else
      {
         $('#re_re_tr'+no).hide();
         k=0;
      }
   });
   var p=0;
   $('.reUpdate').click(function(){
      var no=$(this).attr('name');
      if(p==0)
      {
         $('#re_update_tr'+no).show();
         p=1;
      }
      else
      {
         $('#re_update_tr'+no).hide();
         p=0;
      }
   });
});
function replyBtnClick(no)
{
   var msg=$('#rmsg'+no).val();
   if(msg=="")
   {
      alert("댓글 내용 입력하세요");
      $('#rmsg'+no).focus();
      return;
   }
   $('#re_re_frm'+no).submit();
}
function replyUpdateClick(no)
{
   var msg=$('#umsg'+no).val();
   if(msg=="")
   {
      alert("댓글 내용 입력하세요");
      $('#umsg'+no).focus();
      return;
   }
   $('#re_update_frm'+no).submit();
}

</script>
</head>
<body>
  <center>

    <table border=1 width=900 height=700>
    
      <tr>
         <td colspan="5" height=10% align=center>${dto.bsub }</td>
      </tr>
      
      <tr>
         <td rowspan="6" width=65% height=90%>
         
            <img src="web/image/${dto.bfilename}">
         </td>
         <td colspan="3" height="10">
         ${dto.bname }
             </td>
        </tr>
      <tr>
             <td align="left" height="10">
                   조회수 : ${dto.bhit }
                   등록일 : ${dto.dbday }
                   좋아요 : ${dto.brec }
           </td>  
      </tr>
      
        <tr>
           <td height="250">
              ${dto.bcont }
           </td>
        </tr>
        
<!-- 수정 삭제 게시물가기 및 채팅창 및 버튼-->        
      <tr>
         <td algin=left>
            <input type=button class="form-control" value="좋아요">
            <input type=button class="form-control" value="댓글보기">
            
          
 	<br>
               <a href="board_update.do?no=${dto.bno }&page=${page}"><button class="btn btn-default" type="button" id="logBtn">수정</button></a>
               <a href="board_insert.do"><button class="btn btn-default" type="button" id="logBtn">삭제</button></a>
               <a href="board_list.do?page=${page }"><button class="btn btn-default" type="button" id="logBtn">목록</button></a>
            </td>
      </tr>
      <tr id="delTr">
         <td align=right>
            <form method=post action="board_delete.do" id="delfrm">
                  Password : <input type="password" name=pwd id=pwd size=10>
                          <input type=hidden name=no value="${ dto.bno}">
                          <input type=hidden name=page value="${page }">
                          <input type=button value=삭제 id="delBtn">
               </form>
           </td>
         </tr>
       
       <tr>
          <td>
               <span style="float: left;">
                 <form method=post action="reply_re_insert.do" id="re_re_frm${rDto.no }">
                     <textarea rows="5" cols="40" name="rmsg" id="rmsg${rDto.no }" style="resize: none; wrap:hard;"></textarea>
                     <input type=hidden name=bno value="${ dto.bno}">
                    <input type=hidden name=page value="${page }">
                     <input type=hidden name=pno value="${rDto.no }">
                     <input type=button value="확인" style="width:25px" onclick="replyBtnClick(${rDto.no })">
                 </form>
              </span>      
            </td>
      </tr>
      <tr>
         <td>
       댓글 만들수있을까
         </td>
      </tr>
   </table>
      
   
  </center>
</body>
</html>


