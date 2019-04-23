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
			<p>BuyItemComplete</p>
		</div>
		<div>
			<p>購入手続きが完了いたしました。</p>
			<div>
				<a href='<s:url action="MyPageAction" />'>マイページ</a>から購入履歴の確認が可能です。<br>
				<p>
					Home画面に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a>
				</p>
			</div>

		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>


</body>
</html>