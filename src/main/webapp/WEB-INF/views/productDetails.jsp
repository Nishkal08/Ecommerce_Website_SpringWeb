<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tech2etc Ecommerce Tutorial</title>
    <link rel="stylesheet" href="http://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
    <link rel="stylesheet" href="style.css">
    <style>
    	.custom-select {
 			 width: 200px; /* Set width */
			 padding: 10px; /* Add padding */
			  border: 1px solid #ccc; /* Add border */
			  border-radius: 5px; /* Add border radius */
			  background-col	or: #f8f8f8; /* Add background color */
			  font-size:16px; /* Set font size */
			  color: #333; /* Set text color */
		}
		.custom-input {
		  width: 100px; /* Set width */
		  padding: 10px; /* Add padding */
		  border: 1px solid #ccc; /* Add border */
		  border-radius: 5px; /* Add border radius */
		  background-color: #f8f8f8; /* Add background color */
		  font-size: 16px; /* Set font size */
		  color: #333; /* Set text color */
		}

		/* Style hover and focus states */
		.custom-select:hover,
		.custom-select:focus {
		  border-color: #999; /* Change border color */
		}	

		/* Style selected option */
		.custom-select option:checked {
		  background-color: #ccc; /* Change background color */
		  color: #fff; /* Change text color */
		}	
		.button{
			padding:5px;
		    border-radius: 7px;
		    font-weight: bold;
		    font-size: medium;
		    margin-left:1rem;
		   	text-decoration: none;
		    background-color: #088178;
		   	height:6vh;
		   	width:10vw;
		    color: white;
		    border: none;
		}
    </style>
</head>
<body>

<section id="header">
    <a href="#"><img src="img/logo.png" alt="" class="logo"></a>

    <div>
        <ul id="navbar">
            <li><a href="index">Home</a></li>
            <li><a class="active"  href="shop">Shop</a></li>
            <li><a href="blog">Blog</a></li>
            <li><a href="about">About</a></li>
            <li><a href="contact">Contact</a></li>
            <li><a id="lg-bag" href="/viewcart"><i class="far fa-shopping-bag"></i></a></li>
            <a href="#" id="close"><i class="far fa-times"></i></a>
        </ul>
    </div>
    <div id="mobile">
        <a href="cart.html"><i class="far fa-shopping-bag"></i></a>
        
        <i id="bar" class="fas fa-outdent"></i>
    </div>
</section>

<section id="prodetails"  class="section-p1">
    <div class="single-pro-image">
        <img src="${url}" width="100%" id="mainimg" alt="">
        </div>
    </div>
	
    <div class="single-pro-details">
    
        <h6>Home / T-shirt</h6>
        <h4>${product.name}</h4>
        <h2>&#8377 ${product.price}</h2>
        
        <form action="/addtocart" method="post">
	        <select class="custom-select" name="size">
	            <option value="medium">Select Size</option>
	            <option value="small">Small</option>
	            <option value="medium">medium</option>
	            <option value="Large">Large</option>
	            <option value="XXL">XXL</option>
	            <option value="XL">XL</option>
	        </select>
	        <input type="number"class="custom-input" value="1"name="quantity">
	        <input type="hidden" name="product_id"value="${product.product_id}">
	        <input type="submit" value="Add to Cart"class="button">
	    </form>
	    
	    <h4>Product Details</h4>
        <span>${product.description} is made from  a substantial 6.0 oz.per sq. yd. fabric constructed from 100% cotton, this classic fit preshunk jersey knit provides unmatched comfort with each wear. featuring a tapd neck and shoulder, and a seamless double-needle collar, and available in  a range of colors, it offers it all in the ultimate head-turning package</span>
    </div>
</section>


<section id="newsletter"  class="section-p1 section-m1">
    <div class="newstext">
        <h4>Sign Up For Newsletters</h4>
        <p>Get E-mail updates about our latet shop and <span>Special offer</span> </p>
    </div>
</section>

 <footer class="section-p1">
   <div class="col">
       <img class="logo" src="img/logo.png" alt="">
       <h4>Contact</h4>
       <p><strong>Address :</strong> 560 Willington Road, street 32 , san Francisko</p>
       <p><strong>Phone :</strong> 01945565465354161263123</p>
       <p><strong>Hours :</strong> 10:00 - 18:00, Mon - Sat</p>
       <div class="follow"> 
           <h4>Follow Us</h4>
           <div class="icon">
               <i class="fab fa-facebook-f"></i>
               <i class="fab fa-twitter"></i>
               <i class="fab fa-instagram"></i>
               <i class="fab fa-pinterest-p"></i>
               <i class="fab fa-youtube"></i>
           </div>
       </div>
   </div>
   <div class="col">
       <h4>About</h4>
       <a href="#">About US</a>
       <a href="#">Delivery Information</a>
       <a href="#">Privacy Policy</a>
       <a href="#">Terms & Conditions</a>
       <a href="#">Contact Us</a>
   </div>
 <div class="col">
    <h4>My Account</h4>
    <a href="#">My Account</a>
    <a href="#">Sign In</a>
    <a href="#">View Cart</a>
    <a href="#">My Wishlist</a>
    <a href="#">Track My Order</a>
    <a href="#">Help</a>
</div>
<div class="col install">
    <h4>Install  App</h4>
    <p>Form App Store or Google Play</p>
    <div class="row">
        <img src="img/pay/app.jpg" alt="">
        <img src="img/pay/play.jpg" alt="">
    </div>
    <p>Secure PAyment Gateways</p>
    <img src="img/pay/pay.png" alt="">
    
</div>
<div class="copyright">
    <p>© 2021, Tech2 etc - HTML CSS Ecommerce Template</p>
</div>


 </footer>

 <script>
     const Mainimg = document.getElementById("mainimg")
     const smallimg = document.getElementsByClassName("small-img");


     
     smallimg[0].onclick = function(){
         Mainimg.src = smallimg[0].src;
     }
     smallimg[1].onclick = function(){
         Mainimg.src = smallimg[1].src;
     }

     smallimg[2].onclick = function(){
         Mainimg.src = smallimg[2].src;
     }

     smallimg[3].onclick = function(){
         Mainimg.src = smallimg[3].src;
     }



 </script>
    
    <script src="script.js"></script>
</body>
</html>