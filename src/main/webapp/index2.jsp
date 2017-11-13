<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电子签章管理平台</title>
	<style type="text/css">
		* { margin:0px; padding:0px; border:0px;}
	</style>
</head>
<body>
	<div style="width: 100%;height: 100%">
		<div style="width: 100%;height: 20%">
			<iframe src="top.html" name="topFrame" scrolling="No" id="topFrame" title="topFrame" width="100%" height="100%"></iframe>
		</div>
		<div style="width: 100%;height: 75%">
			<div style="float: left ;width: 15%;height: 100%">
				<iframe src="left.html" name="leftFrame" scrolling="No" id="leftFrame" title="leftFrame" width="100%" height="100%"></iframe>
			</div>
			<div style="float: right;width: 85%;height: 100%">
				<iframe  src="main.jsp" name="mainFrame" id="mainFrame" title="mainFrame" width="100%" height="100%"></iframe>
			</div>
		</div>
		<div style="width: 100%;height: 5%">
			<iframe src="end.html" name="bottomFrame" scrolling="No"  id="bottomFrame" title="bottomFrame" width="100%" height="100%" ></iframe>
		</div>
	</div>

</body>
</html>
