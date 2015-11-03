<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> --%>
     <%@ page language="java" contentType="text/html; charset=EUC-KR"
     pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<title>"Welcome to Break&Burger!"</title>
<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="web/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="web/js/move-top.js"></script>
<script type="text/javascript" src="web/js/easing.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 900);
			});
		});

</script>
<script src="web/js/bootstrap.js"></script>

</head>
<body>
	<!--  login -->
	<div class="container">
	   <span>
	   <c:if test="${sessionScope.id==null }">
		<jsp:include page="../join/login.jsp"></jsp:include>
	  </c:if>
	  <c:if test="${sessionScope.id!=null }">
		<jsp:include page="../join/logout.jsp"></jsp:include>
		</c:if>
	   </span>
	</div>
	
	
	<!-- header-section-starts -->	
			<div class="header-top">
			<div class="logo text-center">
				<h1><a href="index.do">BREAK & BURGER</a></h1>
			</div>
			<!-- navigation -->
<div class="navigation">
	<div class="container">
		<nav class="navbar navbar-default">
		 
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
			
				<ul class="nav navbar-nav">
					<li class="hvr-bounce-to-bottom ${active1 }" id=change-0><a href="index.do">HOME <span class="sr-only">(current)</span></a></li>
					<li class="hvr-bounce-to-bottom ${active2 }" id=change-1><a href="menu.do">메뉴</a></li>
					<li class="hvr-bounce-to-bottom ${active3 }" id=change-2><a href="store.do">매장정보</a></li>
					<li class="hvr-bounce-to-bottom ${active4 }" id=change-3><a href="reserve.do">예약</a></li>
					<li class="hvr-bounce-to-bottom ${active5 }" id=change-4><a href="recommend.do">게시판</a></li>
					
				  </ul> 
			 <div class="clearfix"></div>
			</div><!-- /.navbar-collapse -->
		</nav>
	</div>
</div>
<!-- //navigation -->


				<div class="clearfix"></div>
			</div>
	
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div style="margin-bottom : 50px;" >
		 <jsp:include page="${jsp }"></jsp:include> 
	</div>
	

	<!-- footer-section -->
	<div class="footer">
		<div class="container">
			<div class="copyright text-center">
				<p>&copy; 2015 Break&Burger. All rights reserved | Design by  <a href="http://www.mcdonalds.co.kr/www/kor/main/main.do"></a></p>
			</div>
		</div>
	</div>
	<!-- footer-section -->
	<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 

</body>
</html>