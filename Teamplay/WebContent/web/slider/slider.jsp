<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link href="web/slider/themes/2/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="web/slider/themes/2/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="div1" align=center><h2>오늘의 추천</h2></div>
    <div id="sliderFrame">
        <div id="slider">
			<img src="web/images/a.jpg" alt="1등이래요">
            <c:forEach var="list" items="${ list12}">
            	
            	<a class="lazyImage" href="web/images/${list.filename }" title="${list.subject }" > </a>
            </c:forEach>
        </div>
        <!--thumbnails-->
        <div id="thumbs">
           
            <c:forEach var="list" items="${ list12}">
             <div class="thumb">
                <div class="frame"><img src="web/images/${list.filename }" /></div>
                <div class="thumb-content"><p>${list.name }</p>${list.subject }</div>
                <div style="clear:both;"></div>
            </div>
            </c:forEach>
           

        </div>
        <!--clear above float:left elements. It is required if above #slider is styled as float:left. -->
        <div style="clear:both;height:0;"></div>
    </div>
</body>
</html>
