<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Books</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Product List</h1>
<p align="right"><input type="button" value="Logout" onclick="window.location.href='logout';return false;" class="btn btn-primary"></p>
<br><br>
<input type="button" value="Add Product" onclick="window.location.href='showForm';return false;" class="btn btn-primary">
<table class="table table-hover">
<tr>
<th>Name</th>
<th>Brand</th>
<th>Category</th>
<th>Description</th>
<th>Rating</th>
<th>Price</th>
<th></th>
<th></th>
</tr>
<c:forEach var="temp" items="${products}">
<tr>
<c:url var="viewLink" value="/product/viewProduct">
<c:param name="productId" value="${temp.id}"/>
</c:url>
<c:url var="deleteLink" value="/product/deleteProduct">
<c:param name="productId" value="${temp.id}"/>
</c:url>
<td>${temp.name}</td>
<td>${temp.brand}</td>
<td>${temp.category}</td>
<td>${temp.description}</td>
<td>${temp.rating}</td>
<td>${temp.price}</td>

<td><a href="${viewLink}">View</a></td>
<td><a href="${deleteLink}" onClick="if (!(confirm('Are you sure you want to delete this book?'))) return false">Delete</a></td>

</tr>
</c:forEach>

</table>
</body>
</html>