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
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
	background-image: url("images/wallpaper044.jpg");
	background-size: 100% 100%;
	background-repeat: no-repeat;
}

table {
	text-align: center;
	margin: 0 auto;
}

#header {
	width: 100%;
	height: 80px;
	background-color: black;
}

#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
	background-color: rgba(255, 255, 255, 0.9);
}
.btn {
	background-color: rgba(255, 255, 255, 0.01);
	border:solid 1px rgba(30, 30, 30, 0.3) ;
	margin-right:150px;
}

.btn:hover {
	background-color: white;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>
	<div id="main">
		<div id="top">
			<p>UserCreate</p>
		</div>
		<div>
			<s:if test="errorMessage !=''">
				<s:property value="errorMessage" escape="false" />
			</s:if>
			<table>
			<s:form action="UserCreateConfirmAction">

					<tr>
						<td><label>ログインID:</label></td>
						<td><input type="text" class="txt" name="loginUserId" value="" /></td>
					</tr>
					<tr>
						<td><label>ログインPASS:</label></td>
						<td><input type="text" class="txt" name="loginPassword" value="" /></td>
					<tr>
						<td><label>ユーザー名:</label></td>
						<td><input type="text" class="txt" name="userName" value="" /></td>
					</tr>
					<tr>
						<s:submit class="btn" value="登録" />
					</tr>
			</s:form>
			</table>

			<div>
				<p>
					前ページに戻る場合は<a href='<s:url action="HomeAction" />'>こちら</a>
				</p>
			</div>

		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>


</body>
</html>