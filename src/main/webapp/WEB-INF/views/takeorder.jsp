<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Form</title>
<style type="text/css">
label {
	display: inline-block;
	width: 200px;
	margin: 5px;
	text-align: left;
}

input[type=text], input[type=password], select {
	width: 200px;
}

input[type=radio] {
	display: inline-block;
	margin-left: 45px;
}

input[type=checkbox] {
	display: inline-block;
	margin-right: 190px;
}

button {
	padding: 10px;
	margin: 10px;
}
</style>
</head>
<body>
	<div align="center">
		<h3>Welcome, Take Order</h3>
		<form:form method="POST" action="/takeorder" modelAttribute="order">
			<form:label path="tableNo">Table No</form:label>
			<form:input path="tableNo" /><br/>

			<form:label path="menuItem">Menu Item</form:label>
			<form:select path="menuItem" items="${menuList}" /><br/>

			<form:label path="quantity">Quantity</form:label>
			<form:input path="quantity" /><br/>

			<form:button>Submit</form:button>
		</form:form>
	</div>
</body>
</html>