<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tech2etc Ecommerce Tutorial</title>
    <link rel="stylesheet" href="http://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<section id="header">
    <a href="#"><img src="img/logo.png" alt="" class="logo"></a>

    <div>
        <ul id="navbar">
            <li><a href="index">Home</a></li>
            <li><a class="active" href="shop">Shop</a></li>
            <li><a href="blog">Blog</a></li>
            <li><a href="about">About</a></li>
            <li><a href="contact">Contact</a></li>
            <li><a id="lg-bag" href="/viewcart"><i class="far fa-shopping-bag"></i></a></li>
            <a href="#" id="close"><i class="far fa-times"></i></a>
        </ul>
    </div>
    <div id="mobile">
        <a href="/viewcart"><i class="far fa-shopping-bag"></i></a>
        
        <i id="bar" class="fas fa-outdent"></i>
    </div>
</section>
<section id="page-header">
     
<h2>Shop</h2> 

<p>Select fits that resonates with you personality!</p>   
</section>



<section id="product1" class="section-p1">

<div class="pro-container">


<c:forEach var="product" items="${products}">
   <div class="pro" >
   		 <a href="/viewproduct?imgUrl=${product.img}&productId=${product.product_id}">  <img src="${product.img}" alt="">   </a>
        <div class="des">
            <span>Shirts</span>
            <h5>${product.name}</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 ${product.price}</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
</c:forEach>
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
      <p><strong>Address :</strong> Ahmedabad</p>
       <p><strong>Phone :</strong> 08000334811</p>
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
       <a href="#">Privacy Policy</a>
       <a href="#">Terms & Conditions</a>
       <a href="#">Contact Us</a>
   </div>
 <div class="col">
    <h4>My Account</h4>
    <a href="#">My Account</a>
    <a href="/signup">Sign In</a>
    <a href="/viewcart">View Cart</a>
  
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



 </footer>
    
    <script src="script.js"></script>
</body>
</html>