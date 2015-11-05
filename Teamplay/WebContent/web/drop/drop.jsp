<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Drop Captions Demo</title>
<script type="text/javascript" src="dropcss/jquery.min.js"></script>
<script type="text/javascript" src="dropcss/jquery.dropcaptions-noconflict.js"></script>
<script type="text/javascript" src="dropcss/jquery.easing.1.3.js"></script>

<link rel="dropcss/stylesheet" href="lightbox.css" type="text/css" media="screen" />
<script src="dropcss/prototype.js" type="text/javascript"></script>
<script src="dropcss/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
<script src="dropcss/lightbox.js" type="text/javascript"></script>

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
body {
	font-family: Georgia, "Times New Roman", serif;
}
p.content {
	font-size: .9em;
	line-height: 1.4em;
}
img.frame {
	border: 2px solid #333;
	margin: 0;
/* needed for ie because it renders no margin as auto instead of 0 */	padding: 6px;
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
}
</style>
</head>

<body>

<div style="width: 800px; margin: 20px auto">
	<a title="A misty landscape" rel="lightbox">
	<img alt="image" title="¾È³çÇÏ¼¼¿ä." src="../image/1955.jpg" width="300" height="199" class="left blacksheep frame" /></a>

</body>
</html>