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
  	.error
	{
		color: red !important;
	    font-weight: 300 !important;
	    font-size: medium !important;
	   	margin-bottom: 5px;
	}
  	
</style>
</head>
<body>
<div class="card">
  	<form action="/admin/update-user" method="post" class="form">
  		Name:
  		<input type="text"name="username" placeholder="username" value="${user.username}"class="inputs">
  		<br><br>
  		Email
  		<input type="email" name="email" placeholder="Email" value="${user.email}"class="inputs">
  		<br><br>
  		Password:
  		<input type="number"name="password" placeholder="Password" value="${user.password}"class="inputs">
  		<br><br>
  		
	  	<label for="role">Select Role:</label>
	    <select name="role" class="inputs">
	        <option value="ADMIN">Admin</option>
	        <option value="USER" selected>User</option>
	    </select>
  		<br><br>
  		<p class="error">${emptyError}</p>
  		<input type="hidden" name="userId" value="${user.userId}">
  		<br><br>
  		<input type="submit" value="Update User" class="submit">
  		
  	</form>
</div>
</body>
</html>