<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link href="web/slider/themes/2/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="web/slider/themes/2/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="div1" align=center><h2>�� ���Ű� �ϵ��ؽ�!</h2></div>
    <div id="sliderFrame">
        <div id="slider">
			<img src="web/image/1955.jpg" alt="1���̷���">
            <a class="lazyImage" href="web/image/1955fire.jpg" title="No2�� ���ΰ�~"></a>
           <!--  <b data-src="web/image/1955smoky.jpg"></b> -->
            <a class="lazyImage" href="web/image/1955smoky.jpg" title="���𽺸�"></a>
            <a class="lazyImage" href="web/image/quaterpounder.jpg" title="�۸�"></a>
        </div>
        <!--thumbnails-->
        <div id="thumbs">
            <div class="thumb">
                <div class="frame"><img src="web/image/1955.jpg" /></div>
                <div class="thumb-content"><p>Hong</p>�ɽ��ؼ�������µ� ��</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="web/image/1955fire.jpg" /></div>
                <div class="thumb-content"><p>�������ٺ�</p>�������� �ϵ��ϰڽ�</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="web/image/1955smoky.jpg" /></div>
                <div class="thumb-content"><p>Username3</p>���� ����̴�</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="web/image/quaterpounder.jpg" /></div>
                <div class="thumb-content"><p>Shim</p>�� ���Ŵ� ��¼����¼��~</div>
                <div style="clear:both;"></div>
            </div>
        </div>
        <!--clear above float:left elements. It is required if above #slider is styled as float:left. -->
        <div style="clear:both;height:0;"></div>
    </div>
</body>
</html>
