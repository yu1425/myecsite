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

<title>Login画面</title>

</head>
<body>
	<jsp:include page="header.jsp"/>

	<div id="main">

		<div id="top">
			<p>
				<strong>Login</strong>
			</p>
		</div>
		<br>
		<p>Please Login!</p>


		<div id="loginform">
			<s:form action="LoginAction" theme="simple">

				<s:if
					test="userIdErrorMessageList != null && userIdErrorMessageList.size()>0">
					<div id="error">

						<s:iterator value="userIdErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</s:if>
				<s:if
					test="userPasswordErrorMessageList != null && userPasswordErrorMessageList.size()>0">
					<div id="error">
						<s:iterator value="userPasswordErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</s:if>
				<s:if
					test="isNotUserInfoErrorMessage!= null && !isNotUserInfoErrorMessage.isEmpty()">
					<div id="error">
						<s:iterator value="isNotUserInfoErrorMessage">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</s:if>
				<table border="1">
					<tr>
						<th scope="row"><s:label class="label" value="User ID：" /></th>
						<td><s:if test="#session.savedUserIdFlg ==true">
								<s:textfield name="loginUserId" class="txt"
									value='%{session.savedUserId}' placeholder="User ID"
									autocomplete="off" />
							</s:if> <s:else>
								<s:textfield name="loginUserId" value='%{loginUserId}'
									class="txt" placeholder="User ID" autocomplete="off" />
							</s:else></td>
					</tr>
					<tr>
						<th scope="row"><s:label class="label" value="Password：" /></th>
						<td><s:password name="loginPassword" class="txt"
								placeholder="Password" autocomplete="off" /></td>
					</tr>

				</table>
				<div id="box">
					<s:if
						test="#session.savedUserIdFlg ==true && #session.savedUserId!=null && !#session.savedUserId.isEmpty()">
						<s:checkbox name="savedUserIdFlg" checked="checked" class="btn" />
					</s:if>
					<s:else>
						<s:checkbox name="savedUserIdFlg" class="btn" />
					</s:else>
					<s:label value="Saved User ID" />
					<br><br>


				</div>
				<div class="btn1">
				<s:submit value="Login" class="btn" />
				</div>

			</s:form>
			<br />
			<div id="text-link">
				<p>
					<a href='<s:url action="UserCreateAction" />'>UserCreate</a>
				</p>
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