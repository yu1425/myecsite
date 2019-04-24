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
<title>HOME画面</title>

<style type="text/css">

</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>HOME</p>
		</div>
		<%--  <div id="sample">
			<s:itetrator>
				<s:property value="session.buyItem_name" />
				<s:property value="session.buyItem_price" />
			</s:itetrator>
		</div> --%>
		<br>
		<br>
		<div id="text-center">
			<s:form action="HomeAction">
				<s:submit class="btn" value="WELCOME" />
			</s:form>
			<s:if test="#session.id != null">
				<p>
					<a href='<s:url action="LogoutAction" />'>Logout</a>
				</p>
			</s:if>

		</div>
	</div>
	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>