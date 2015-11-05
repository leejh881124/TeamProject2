<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


      <div class="container">
         <div>
           <jsp:include page="${slider }"></jsp:include>
         </div>
         <br>
         <table>
            <th>게시물 best</th>
            <tr>
               <td><img src="web/images/1st.jpg"></td>
               <td><img src="web/images/2st.jpg"></td>
               <td><img src="web/images/3st.jpg"></td>
            </tr>
            <tr>
               <td><img src="web/images/exa.png"> </td>
               <td><img src="web/images/exb.png"> </td>
               <td><img src="web/images/exc.png"> </td>
            </tr>
            <tr>
               <td align=center>내가 만든 버거</td>
               <td align=center>너가 만든 버거</td>   
               <td align=center>우리가 만든 버거</td>
            </tr>
         </table>

         <br>
         <div class="container">
            <h2 align=left>BREAK BURGER 이용 방법</h2>
            <img src="web/images/howto2.jpg">
         </div>
      </div>
      
</body>
</html>