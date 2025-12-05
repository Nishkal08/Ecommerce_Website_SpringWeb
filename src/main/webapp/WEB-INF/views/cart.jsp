<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            <li><a href="shop">Shop</a></li>
            <li><a href="blog">Blog</a></li>
            <li><a href="about">About</a></li>
            <li><a href="contact">Contact</a></li>
            <li><a class="active" id="lg-bag" href="cart.html"><i class="far fa-shopping-bag"></i></a></li>
            <a href="#" id="close"><i class="far fa-times"></i></a>
        </ul>
    </div>
    <div id="mobile">
        <a href="cart"><i class="far fa-shopping-bag"></i></a>
        
        <i id="bar" class="fas fa-outdent"></i>
    </div>
</section>
<section id="page-header" class="about-header">
     
<h2>Cart</h2> 

<p>We are glad to deliver your choices! </p>   
</section>


<section id="cart" class="section-p1">
    <table  width="100%">
        <thead>
            <tr>
                <td>Remove</td>
                <td>Image</td>
                <td>Product</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Subtotal</td>
            </tr>
        </thead>

        <tbody>
        <c:forEach var="items" items="${items}">
            <tr>
                <td><a href="/deleteItem/${items.item_id}"><i class="far fa-times-circle"></i></a></td>
                <td><img src="${items.product.img}" alt=""></td>
                <td>${items.product.name}</td> <!-- Cartoon Astronaut T-Shirts -->
                <td>&#8377 ${items.item_price}</td>
                <td>${items.quantity}</td>
                <td>&#8377 ${items.subtotal}</td>
            </tr>
        </c:forEach>
         
        </tbody>
    </table>
</section>

<section id="cart-add" class="section-p1">
    
    <div id="subtotal">
        <h3>Cart Totals</h3>
        <table>
            <tr>
                <td>Cart Subtotal</td>
                <td>&#8377 ${total_amount}</td>
            </tr>
            <tr>
                <td>Shipping</td>
                <td>Free</td>
            </tr>
            <tr>
                <td><Strong>Total</Strong></td>
                <td><strong>&#8377 ${total_amount}</strong></td>
            </tr>
        </table>
        
        
        <form action="shipping-details" method="post">        
        	  <input type="hidden" name="total_amount" value="${total_amount}">
      		  <button type="submit" class="normal">Proceed to Checkout</button>
        </form>
        
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
    <a href="/signup">Sign In</a>
    <a href="#">View Cart</a>
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