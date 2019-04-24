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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/ecsite.css">
<title>BuyItemConfirm画面</title>

<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>BuyItem</p>
		</div>
		<br>
		<p>OK?</p>
		<div>
			<s:form>
			<table border="1">
				<tr>
					<td>ItemName</td>
					<td><s:property value="session.buyItem_name" /></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><s:property value="session.buyItem_price" />yen</td>
				</tr>
				<tr>
					<td>Count</td>
					<td><s:property value="session.count" /></td>
				</tr>
				<tr>
					<td>Payment</td>
					<td><s:property value="session.pay" /></td>
				</tr>
				</table>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td><button type="button" class="btn"
							onclick="submitAction('HomeAction')">Back</button></td>
					<td><button type="button" class="btn"
							onclick="submitAction('BuyItemConfirmAction')">Complete</button></td>
				</tr>
			</s:form>



		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>


</body>
</html>