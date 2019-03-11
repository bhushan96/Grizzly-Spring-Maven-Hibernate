<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>View Product</title>
	<link rel='stylesheet' href='<c:url value="/resources/css/style.css" />' type='text/css' media='all' /> 
</head>
<body>
<h2><u>Product Name</u></h2><br>
<h4>${product.name }</h4><br><br>
<h2><u>Product Brand</u></h2><br>
<h4>${product.brand }</h4><br><br>
<h2><u>Product Category</u></h2><br>
<h4>${product.category }</h4><br><br>
<h2><u>Product Description</u></h2><br>
<h4>${product.description }</h4><br><br>
<h2><u>Price</u></h2><br>
<h4>${product.price }</h4><br><br>


</body>
</html>