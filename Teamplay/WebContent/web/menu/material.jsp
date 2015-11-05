<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.menu.dao.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="com.menu.dao.MenuDAO"/>
<%
	String tno=request.getParameter("tno");
	List<MenuDTO> list= MenuDAO.menuListData(Integer.parseInt(tno));	
%>
<c:set var="list" value="<%=list %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="web/drop/dropcss/jquery.min.js"></script>
<script type="text/javascript" src="web/drop/dropcss/jquery.dropcaptions-noconflict.js"></script>
<script type="text/javascript" src="web/drop/dropcss/jquery.easing.1.3.js"></script>

<link rel="web/drop/dropcss/stylesheet" href="lightbox.css" type="text/css" media="screen" />
<script src="web/drop/dropcss/prototype.js" type="text/javascript"></script>
<script src="web/drop/dropcss/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
<script src="web/drop/dropcss/lightbox.js" type="text/javascript"></script>

<script type="text/javascript">
jQuery(function(){
	jQuery('.autocap').dropCaptions({
		showSpeed: 1000,
		showOpacity: .85,
		hideOpacity: .25,
		showEasing: 'easeOutBounce',
		showDelay: 500,
		hideDelay: 1000
	});
	jQuery('.blacksheep').dropCaptions();
	jQuery('.bottom').dropCaptions({
		showSpeed: 2000,
		hideSpeed: 1000,
		showOpacity: 1,
		hideOpacity: 0,
		showEasing: 'easeOutElastic',
		hideEasing: 'easeInQuint',
		hideDelay: 2000
	});
});
</script>
<style type="text/css">
.caption {
	background: #333;
	border-right: 1px solid #666;
	border-bottom: 1px solid #666;
	border-left: 1px solid #666;
	border-top: 1px solid #666;
	font-family: Verdana;
	font-size: 11px;
	padding: 4px;
	-moz-border-radius-bottomright: 6px;
	-moz-border-radius-bottomleft: 6px;
	-webkit-border-bottom-right-radius: 6px;
	-webkit-border-bottom-left-radius: 6px;
	color: #eee;
}
/*body {
	font-family: Georgia, "Times New Roman", serif;
}
p.content {
	font-size: .9em;
	line-height: 1.4em;
}
img.frame {
	border: 2px solid #333;
	margin: 0;
-- needed for ie because it renders no margin as auto instead of 0 	padding: 6px;
	background: #eee;
}
img.right {
	float: right;
	margin: 0 0 6px 10px;
}
img.left {
	float: left;
	margin: 0 10px 6px 0;
}
.clear {
	clear: both;
}
.center {
	margin: 0px auto 0px auto;
	text-align: center;
}*/
</style>
</head>
<body>
	<center>
		<table border=0 width=500>
			
			  <tr>
			<c:forEach var="dto" items="${list }">	
				<td style="width: 800px; margin: 20px auto"><img alt="image" title="${dto.minfo }" class="circle" class="left blacksheep frame"  src="web/image/${dto.hname2}.jpg" width=200></td>
		
				<%-- <c:if test="${list%3==1 }">
					</tr><tr>
				</c:if> --%>
				<%-- ${dto.hname }
				<c:if test="${dto.price!=0}">
					&nbsp;&nbsp;(${dto.price }원)
				</c:if> --%>
			</c:forEach>
			  </tr>
			
					
			<%-- <c:forEach var="dto" items="${list }">			
			<tr height=25>
				<td align=center>${dto.hname }
				<c:if test="${dto.price!=0}">
					&nbsp;&nbsp;(${dto.price }원)
				</c:if>
				</td>
				<td><img class="circle" src="web/image/${dto.hname2}.jpg"></td>
				
			</tr>
			</c:forEach> --%>
		</table>
		<hr width=500>
	</center>
</body>
</html>