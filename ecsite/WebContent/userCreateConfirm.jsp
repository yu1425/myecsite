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
<title>UserCreateConfirm画面</title>

</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="main">
		<div id="top">
			<p>UserCreateConfirm</p>
		</div>
		<div>
			<br>

			<h3>OK?</h3>
			<s:form action="UserCreateCompleteAction" theme="simple">
				<table border="1">
					<tr>
						<td><label>LOGIN ID:</label></td>
						<td><s:property value="loginUserId" escape="false" /></td>
					</tr>
					<tr>
						<td><label>LOGIN PASS:</label></td>
						<td><s:property value="loginPassword" escape="false" /></td>
					</tr>
					<tr>
						<td><label>USER NAME:</label></td>
						<td><s:property value="userName" escape="false" /></td>
					</tr>
				</table>
				<br>
				<div class="btn1">
				<s:submit class="btn" value="Complete" />
				</div>



			</s:form>
		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>