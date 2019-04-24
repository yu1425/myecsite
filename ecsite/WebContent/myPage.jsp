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
<title>MyPage画面</title>


</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>MyPage</p>
		</div>
		<br>
		<div>
			<s:if test="myPageList == null">
				<h3>Nothing</h3>
			</s:if>
			<s:elseif test="message == null">
				<h3>Purchase History</h3>


				<table class="table2" border="1">
					<tr>
						<th>Item Name</th>
						<th>Price</th>
						<th>Count</th>
						<th>Payment</th>
						<th>Purchase date</th>
					</tr>
					<s:iterator value="myPageList">

						<tr>
							<td><s:property value="itemName" /></td>
							<td><s:property value="totalPrice" /><span>yen</span></td>
							<td><s:property value="totalCount" /><span></span></td>
							<td><s:property value="payment" /></td>
							<td><s:property value="insert_date" /></td>


						</tr>
					</s:iterator>
				</table>
				<br>


				<s:form action="MyPageAction" theme="simple">
					<input type="hidden" name="deleteFlg" value="1" />
					<div class="btn1"><s:submit class="btn" value="Delete" /></div>
				</s:form>
				</s:elseif>

				<s:if test="message !=null">
					<h3>
						<s:property value="message" />
					</h3>
				</s:if>






			<div id="text-link">

				<p>
					<a href='<s:url action="GoHomeAction" />'>Home</a>
				</p>
				<p>
					<a href='<s:url action="LogoutAction" />'>Logout</a>
				</p>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>