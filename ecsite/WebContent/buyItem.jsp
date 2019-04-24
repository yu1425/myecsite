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
<title>BuyItem画面</title>

</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="main">
		<div id="top">
			<p>BuyItem</p>
		</div>
		<br> <br>

		<div>
			<s:form action="BuyItemAction" theme="simple">
				<table border="1">
					<tr>
						<td><span>Item Name</span></td>
						<td><s:property value="session.buyItem_name" /><br></td>
					</tr>
					<tr>
						<td><span>Price</span></td>
						<td><s:property value="session.buyItem_price" /> <span>yen</span>
						</td>
					</tr>
					<tr>
						<td><span>Count</span></td>
						<td><select name="count">
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
						</select></td>
					</tr>
					<tr>
						<td><span>Payment</span></td>
						<td><input type="radio" name="pay" value="1"
							checked="checked">Cash <input type="radio" name="pay"
							value="2">Credit Card</td>
					</tr>
				</table>
				<br>
				<div class="btn1">
					<s:submit class="btn" value="Purchase" />
				</div>

			</s:form>

			<div>
				<p>
					<a href='<s:url action="GoHomeAction" />'>Back</a>
				</p>
				<p>
					<a href='<s:url action="MyPageAction" />'>MyPage</a>
				</p>
			</div>

		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>


</body>
</html>