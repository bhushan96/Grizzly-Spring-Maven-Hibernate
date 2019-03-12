<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Book form</h2>
  <p align="right"><input type="button" value="Logout" onclick="window.location.href='logout';return false;" class="btn btn-primary"></p>
  <form action="saveProduct" method="post" modelAttribute="product">
    <div class="form-group">
      
      <input type="hidden" class="form-control" id="id" name="id" value="${product.id}">
    </div>
  
    <div class="form-group">
      <label for="title">Enter product Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Name" name="name">
    </div>
    
    <div class="form-group">
      <label for="title">Enter Product Brand:</label>
      <input type="text" class="form-control" id="brand" placeholder="Brand" name="brand">
    </div>
    
    <div class="form-group">
      <label for="title">Enter Product Category:</label>
      <input type="text" class="form-control" id="category" placeholder="Category" name="category">
    </div>
    
    <div class="form-group">
      <label for="title">Enter Product Description:</label>
      <input type="text" class="form-control" id="description" placeholder="Description" name="description">
    </div>
    
    
    <div class="form-group">
      <label for="rating">Enter Product Rating:</label>
      <input type="text" class="form-control" id="rating" placeholder="Rating" name="rating">
    </div>
    
    <div class="form-group">
      <label for="price">Enter Product Price:</label>
      <input type="text" class="form-control" id="price" placeholder="Price" name="price">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button> <p align="center"><input type="button" value="back" onclick="window.location.href='back';return false;" class="btn btn-primary"></p>
   
  </form>
</div>


</body> 
</html>