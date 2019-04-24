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
<title>UserCreate画面</title>

</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="main">
		<div id="top">
			<p>UserCreate</p>
		</div>
		<div>
			<br> <br>
			<p>Create new account!</p>

			<s:if test="errorMessage !=''">
				<s:property value="errorMessage" escape="false" />
			</s:if>



			<s:form action="UserCreateConfirmAction" theme="simple">
				<table border="1">
					<tr>
						<th><label>LOGIN ID:</label></th>
						<td><input type="text" class="txt" name="loginUserId"
							value="" /></td>
					</tr>
					<tr>
						<th><label>LOGIN PASS:</label></th>
						<td><input type="text" class="txt" name="loginPassword"
							value="" /></td>
					<tr>
						<th><label>USER NAME:</label></th>
						<td><input type="text" class="txt" name="userName" value="" /></td>
					</tr>
				</table>
				<br>
				<div class="btn1">
				<s:submit class="btn" value="Registraction" />
				</div>
			</s:form>


			<div id="text-link">
				<p>
					<a href='<s:url action="HomeAction" />'>Back</a>
				</p>
			</div>

		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>


</body>
</html>