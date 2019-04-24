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

<title>Login</title>
<script type="text/javascript" src="js/header.js"></script>
<body>
	<div class="head">
		<s:form id="form" theme="simple">
			<ul class="headerul">


				<li class="headerli"><a href='<s:url action="GoHomeAction" />'
					class="title"> <img src="images/07.gif" class="headerimg" />
				</a></li>

				<s:if test='#session.get("loginUser").getLoginFlg()'>
					<li class="headerli"><s:submit value="LOGOUT" class="contents"
							onclick="goLogoutAction()" /></li>
				</s:if>

				<s:else>
					<li class="headerli"><s:submit value="LOGIN" class="contents"
							onclick="goHomeAction()" /></li>
				</s:else>

				<s:if test='#session.get("loginUser").getLoginFlg()'>
					<li class="headerli"><s:submit value="MYPAGE" class="contents"
							onclick="goMyPageAction()" /></li>
				</s:if>

			</ul>
		</s:form>
	</div>
</body>
</html>