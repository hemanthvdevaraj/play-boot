<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<style type="text/css">
    span {
        display: inline-block;
        width: 200px;
        text-align: left;
    }
</style>
</head>
<body>
    <div align="center">
        <h2>Order Succees!</h2>
        <span>Table No:</span><span>${order.tableNo}</span><br/>
        <span>Menu Item:</span><span>${order.menuItem}</span><br/>
        <span>Quantity:</span><span>${order.quantity}</span><br/>
    </div>
</body>
</html>