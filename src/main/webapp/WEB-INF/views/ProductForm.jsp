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
    </div><button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body> 
</html>