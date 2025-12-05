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
  	<form action="/addProduct" method="post" class="form">
  		<input type="text"name="name" placeholder="productname" class="inputs">
  		<br><br>
  		<input type="text" name="description" placeholder="Description" class="inputs">
  		<br><br>
  		<input type="number"name="price" placeholder="price" class="inputs">
  		<br><br>
  		<input type="text"name="img" placeholder="imageUrl"class="inputs">
  		<br><br>
  		<input type="number"name="stock_quantity" placeholder="Stock Quantity"class="inputs">
  		<br><br>
  		<input type="submit" value="Add Product" class="submit">
  		
  	</form>
</div>
</body>
</html>