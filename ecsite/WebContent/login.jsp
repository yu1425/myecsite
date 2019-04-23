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
<title>Login画面</title>
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

.table1 {
	margin: 0 auto;
	text-align: center;
	table-layout: fixed;
}

.label {
	margin: 0 auto;
}

.txt {
	margin-right: 100px;
	background-color: rgba(255, 255, 255, 0.01);
}

.txt:hover {
	background-color: white;
}

.btn {
	background-color: rgba(255, 255, 255, 0.01);
	border:solid 1px rgba(30, 30, 30, 0.3) ;
}

.btn:hover {
	background-color: white;
}

.bg_test {
	/* 背景画像指定 */

}

/* #box {
	position: abusolute;
	top: 100px;
	left: 500px;
} */
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

#main {
	width: 100%;
	height: 500px;
	text-align: center;
	background-color: #
}

#error {
	font-size: 0.8em;
	color: red;
	border: 1px solid red;
	background-color: #FFBABA;
	margin: 10px auto;
	background-position: 10px center;
	width: 60%;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}

#text-link {
	display: inline-block;
	text-align: right;
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>

	<div id="main">

		<div id="top">
			<p>
				<strong>Login</strong>
			</p>
		</div>
		<br>
		<p>商品を購入するならログインせぇや。</p>


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
				<table class="table1">
					<tr>
						<th scope="row"><s:label class="label" value="ユーザーID：" /></th>
						<td><s:if test="#session.savedUserIdFlg ==true">
								<s:textfield name="loginUserId" class="txt"
									value='%{session.savedUserId}' placeholder="ユーザーID"
									autocomplete="off" />
							</s:if> <s:else>
								<s:textfield name="loginUserId" value='%{loginUserId}'
									class="txt" placeholder="ユーザーID" autocomplete="off" />
							</s:else></td>
					</tr>
					<tr>
						<th scope="row"><s:label class="label" value="パスワード：" /></th>
						<td><s:password name="loginPassword" class="txt"
								placeholder="パスワード" autocomplete="off" /></td>
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
					<s:label value="ユーザーID保存" />
					<br> <br>


				</div>
				<s:submit value="ログイン" class="btn" />

			</s:form>
			<br />
			<div id="text-link">
				<p>
					新規ユーザー登録は<a href='<s:url action="UserCreateAction" />'>こちら</a>
				</p>
				<p>
					Homeへ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a>
				</p>
			</div>
		</div>

	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>