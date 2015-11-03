<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>   
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="../js/jquery.min.js"></script>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
body{
	color:white;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
var httpRequest=null;
function createHttpRequest()
{
	if(window.ActiveXObject) // IE 6.0�̻�
	{
		return new ActiveXObject("Msxml2.XMLHTTP");
		// Microsoft.XMLHTTP
	}
	else if(window.XMLHttpRequest) // ũ��,ff
	{
		return new XMLHttpRequest();
	}
	else
	{
		return null;// �������� �ʴ� ������
	}
}
function sendMessage(method,param,url,callback)
{
	// �������� DWR,DOJO
	httpRequest=createHttpRequest();
	httpRequest.open(method,url+param,true);
	// true: �񵿱�, false:����
	httpRequest.onreadystatechange=callback;
	httpRequest.send(null);
}
function idcheck_result()
{
	if(httpRequest.readyState==4)
	{
		if(httpRequest.status==200)
		{
			var res=httpRequest.responseText;
		/* 	alert(res); */
			if(res.trim()=='NOID')
			{
				$('#result').html('<font color=white>��밡���� ID�Դϴ�</font>');
			    $('#Ok').html('<input type=button value="Ȯ��" class="btn btn-default" onclick="Ok()">');
			}
			else
			{
				$('#result').html('<font color=white>�̹� ������� ID�Դϴ�</font>');
				 $('#Ok').html('');
			}
		}
	}
}
function idcheck()
{
	var param=$('#id').val();
	if(param=="")
	{
		$('#id').focus();
		$('#result').text("���̵� �Է��ϼ���");
		return;
	}
	else if(param.indexOf("@")==-1 || param.indexOf(".")==-1 )
	{
		$('#id').focus();
		$('#result').text("�̸��� �������� �Է��ϼ���");
		return;
	}
	param="?id="+param;
	sendMessage('GET',param,"../../idcheck.do",idcheck_result);
}
function Ok()
{
	parent.join_frm.id.value=$('#id').val(); 
	parent.Shadowbox.close();
}

</script>
</head>
<body>
	<div >
		<p align=center>
			<br>
			<label for="userdong">�Է� : </label>
			<input type=text id="id" name="id" class="form-control"  placeholder="�̸�������"">
			<input type=button value="�˻�" onclick="idcheck()" class="btn btn-default">
		</p>
		<p align=center>
			<span id="result">���̵� �Է��ϼ���</span>
		</p>
		<br>
		<p align=center>
			<span id="Ok"></span>
		</p>
	</div>
</body>
</html>