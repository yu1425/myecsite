<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/ecsite.css">
<title>UserCreateComplete画面</title>

</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>UserCreateComplete</p>
		</div>
		<br>
		<br>
		<div>
			<h3>Complete!</h3>
			<div>
				<a href='<s:url action="HomeAction" />'>Login</a>
			</div>
		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>