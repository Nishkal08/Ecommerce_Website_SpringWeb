<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<script src="https://cdn.tailwindcss.com"></script>
<script>
	module.exports = {
	    // ...
	    plugins: [
	      // ...
	      require('@tailwindcss/forms'),
	    ],
	  }
 </script>
<style>
	.card
	{
		display:flex;
		justify-content:center;
		align-items: center;
		height:100vh;
	}
	.inputs
	{
		border: 1px solid #ccc; 
   		border-radius: 3px; 
   		width:100%;
		padding:1rem;
		margin:10px 0px;
	}
	.form
	{
		 border: 2px solid #ccc;
   		 padding: 20px; 
   		 width:35vw;
  	 	 border-radius: 5px; 
	}
	.submit
	{
		 padding: 10px 20px;
  		 background-color: #007bff; 
  		 color: #fff; 
   		 border: none; 
   		 width:100%;
   		 border-radius: 3px; 
  	 	 cursor: pointer; 
  	}
</style>
</head>
<body>
<div class="card">
  	<form action="/admin/update-product" method="post" class="form">
  		Name:
  		<input type="text"name="name" placeholder="productname" value="${product.name}"class="inputs">
  		<br><br>
  		Description;
  		<input type="text" name="description" placeholder="Description" value="${product.description}"class="inputs">
  		<br><br>
  		Price:
  		<input type="number"name="price" placeholder="price" value="${product.price}"class="inputs">
  		<br><br>
  		Img Url:
  		<input type="text"name="img" placeholder="imageUrl"value="${product.img}"class="inputs">
  		<br><br>
  		Stock Quantity:
  		<input type="number"name="stock_quantity" placeholder="Stock Quantity"value="${product.stock_quantity}"class="inputs">
  		<input type="hidden" name="product_id" value="${product.product_id}">
  		<br><br>
  		<input type="submit" value="Update Product" class="submit">
  		
  	</form>
</div>
</body>
</html>