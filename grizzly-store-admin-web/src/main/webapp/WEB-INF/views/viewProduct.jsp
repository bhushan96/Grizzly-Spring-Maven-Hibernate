<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<p align="center"><h1> Product</h1>
<p align="right"><input type="button" value="Logout" onclick="window.location.href='logout';return false;" class="btn btn-primary"></p>
<br><br>
<table class="table table-hover">
<tr>
<th>Name</th>
<th>Brand</th>
<th>Category</th>
<th>Description</th>
<th>Price</th>
</tr>
<tr>
<td>${product.name}</td>
<td>${product.brand}</td>
<td>${product.category}</td>
<td>${product.description}</td>
<td>${product.price}</td>
</tr>

</table>
<br><br>
<p align="center"><input type="button" value="back" onclick="window.location.href='back';return false;" class="btn btn-primary"></p>
</body>
</html>