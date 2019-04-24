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
<title>BuyItemComplete画面</title>


</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>BuyItemComplete</p>
		</div>
		<br>
		<br>

		<div>
			<p>Complete!</p>
			<br>
			<div>
				<a href='<s:url action="MyPageAction" />'>MyPage</a><br>
				<p>
					<a href='<s:url action="GoHomeAction" />'>Home</a>
				</p>
			</div>

		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>


</body>
</html>