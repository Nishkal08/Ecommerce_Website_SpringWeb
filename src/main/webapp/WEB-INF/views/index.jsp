<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.util.CookieUtil" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CARA SHOP</title>
    <link rel="stylesheet" href="http://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<section id="header">
    <a href="#"><img src="img/logo.png" alt="" class="logo"></a>
    <div>
        <ul id="navbar">
            <li><a class="active" href="index">Home</a></li>
            <li><a href="shop">Shop</a></li>
            <li><a href="blog">Blog</a></li>
            <li><a href="about">About</a></li>
            <li><a href="contact">Contact</a></li>
         	<a href="signup" class="button" id="signin">Sign In</a>
            <li><a id="lg-bag" href="/viewcart"><i class="far fa-shopping-bag"></i></a></li>
            <a href="#" id="close"><i class="far fa-times"></i></a>
        </ul>
    </div>
    <div id="mobile">
        <a href="cart.html"><i class="far fa-shopping-bag"></i></a>
        
        <i id="bar" class="fas fa-outdent"></i>
    </div>
</section>
<section id="hero">
	<h2 id="successfull">${successfull}</h2>
    <h4>Trade-in-offer</h4>
    <h2>supervalue deals</h2>
    <h1>On all products</h1>
    <p>Save more with coupons & up to 70% off!</p>
    <a href="shop" class="button">Shop Now</a>    
</section>


<section id="product1" class="section-p1">
<h2>Featured Products</h2>
<p>Summer Collection New Modern Design</p>
<div class="pro-container">
    <div class="pro">
        <a href="/shop"><img src="img/products/f1.jpg" alt=""></a>
        <div class="des">
            <span>Adidas</span>
            <h5>Cartoon Astronaut T-Shirts</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 800</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
    <div class="pro" onclick="window.location.href='shop'">
        <a href="/shop"><img src="img/products/f2.jpg"  alt=""></a>
        <div class="des">
            <span>Adidas</span>
            <h5>Cartoon Astronaut T-Shirts</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 800</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
    <div class="pro" onclick="window.location.href='shop'">
        <a href="/shop"><img src="img/products/f3.jpg" alt=""></a>
        <div class="des">
            <span>Adidas</span>
            <h5>Cartoon Astronaut T-Shirts</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 800</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
    <div class="pro" onclick="window.location.href='shop'">
        <a href="/shop"><img src="img/products/f4.jpg" alt=""></a>
        <div class="des">
            <span>Adidas</span>
            <h5>Cartoon Astronaut T-Shirts</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 800</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
    <div class="pro" onclick="window.location.href='shop'">
          <a href="/shop"><img src="img/products/f5.jpg" alt=""></a>
        <div class="des">
            <span>Adidas</span>
            <h5>Cartoon Astronaut T-Shirts</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 800</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
    <div class="pro" onclick="window.location.href='shop'">
          <a href="/shop"><img src="img/products/f6.jpg" alt=""></a>
        <div class="des">
            <span>Adidas</span>
            <h5>Cartoon Astronaut T-Shirts</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 800</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
    <div class="pro" onclick="window.location.href='shop'">
          <a href="/shop"><img src="img/products/f7.jpg" alt=""></a>
        <div class="des">
            <span>Adidas</span>
            <h5>Cartoon Astronaut T-Shirts</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 800</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
    <div class="pro" onclick="window.location.href='shop'">
          <a href="/shop"><img src="img/products/f8.jpg" alt=""></a>
        <div class="des">
            <span>Adidas</span>
            <h5>Cartoon Astronaut T-Shirts</h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4>&#8377 800</h4>
        </div>
        <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
    </div>
</div>
</section>

<section id="banner" class="section-m1">
    <h4>Repair Services</h4>
    <h2>Up to  <span>70% off</span>  - All t-shirts & Accesories</h2>
    <button class="normal">Explore More</button>
</section>
<section id="product1" class="section-p1">
    <h2>New Arrrivals</h2>
    <p>Summer Collection New Modern Design</p>
    <div class="pro-container">
        <div class="pro">
            <img src="img/products/n1.jpg" alt="">
            <div class="des">
                <span>Adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>&#8377 800</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/products/n2.jpg" alt="">
            <div class="des">
                <span>Adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>&#8377 800</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/products/n3.jpg" alt="">
            <div class="des">
                <span>Adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>&#8377 800</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/products/n4.jpg" alt="">
            <div class="des">
                <span>Adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>&#8377 800</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/products/n5.jpg" alt="">
            <div class="des">
                <span>Adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>&#8377 800</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/products/n6.jpg" alt="">
            <div class="des">
                <span>Adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>&#8377 800</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/products/n7.jpg" alt="">
            <div class="des">
                <span>Adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>&#8377 800</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
        <div class="pro">
            <img src="img/products/n8.jpg" alt="">
            <div class="des">
                <span>Adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                <h4>&#8377 700</h4>
            </div>
            <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
    </div>
    </section>

    <section id="sm-banner" class="section-p1">
        <div class="banner-box">
            <h4>Crazy deals</h4>
            <h2>buy 1 get 1 free</h2>
            <span>The Best Classic dress is on Sale at cara</span>
         <button class="white">Learn More</button>
        </div>
        <div class="banner-box banner-box2">
            <h4>Spring/summer</h4>
            <h2>Upcoming Season</h2>
            <span>The Best Classic dress is on Sale at cara</span>
         <button class="white">Collection</button>
        </div>
    </section>

<section id="banner3">
    <div class="banner-box">
    <h2>SEASONAL SALE</h2>
     <h3>Winter Collection -50% OFF</h3>
    </div>
    <div class="banner-box banner-box2">
        <h2>SEASONAL SALE</h2>
         <h3>Spring / Summer 2022</h3>
        </div>
        <div class="banner-box banner-box3">
            <h2>SEASONAL SALE</h2>
             <h3>New Trendy Prints</h3>
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
       <a href="/contact">Contact Us</a>
   </div>
 <div class="col">
    <h4>My Account</h4>
    <a href="#">My Account</a>
    <a href="/signup">Sign In</a>
    <a href="/viewcart">View Cart</a>
    <a href="/logout">Logout</a>
	<script>
		if(${isLogout} == true)
		{
			alert("Logged out successfully");
		}
		else
		{
			alert("Your are not Logged in");
		}
		if(${isAdmin} == false)
		{
			alert("You are not authorized to access admin controls")
		}
		
		
		
		
	</script>
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