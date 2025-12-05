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
</head>
<body>

<section id="header">
    <a href="#"><img src="img/logo.png" alt="" class="logo"></a>

    <div>
        <ul id="navbar">
            <li><a href="index">Home</a></li>
            <li><a   href="shop">Shop</a></li>
            <li><a  href="blog">Blog</a></li>
            <li><a  href="about">About</a></li>
            <li><a class="active" href="contact.html">Contact</a></li>
            <li><a id="lg-bag" href="cart"><i class="far fa-shopping-bag"></i></a></li>
            <a href="#" id="close"><i class="far fa-times"></i></a>
        </ul>
    </div>
    <div id="mobile">
        <a href="cart"><i class="far fa-shopping-bag"></i></a>
        
        <i id="bar" class="fas fa-outdent"></i>
    </div>
</section>
<section id="page-header" class="about-header">
     
<h2>#let's_talk</h2> 

<p>LEAVE A MASSAGE, We love to hear from you! </p>   
</section>

<section id="contact-details" class="section-p1">
    <div class="details">
        <span>GET IN TOUCH</span>
        <h2>Visit one if our agency locations or contact us today</h2>
        <h3>Head Office</h3>
        <div>
            <li>
                <i class="fal fa-map"></i>
                <p>New Ranip</p>
            </li>
            <li>
                <i class="fal fa-envelope"></i>
                <p>nishkal0810@gmail.com</p>
            </li>
            <li>
                <i class="fal fa-clock"></i>
                <p>Monday to Saturday: 9.00am to 16.pm</p>
            </li>
        </div>
    </div>

    <div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3670.2075761253013!2d72.55397717538585!3d23.08949596382728!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e830e080c5221%3A0x839ad6fca0dadb12!2sASHRAY%20PLATINA%2C%20New%20Ranip%2C%20Ahmedabad%2C%20Gujarat%20380081!5e0!3m2!1sen!2sin!4v1714592644353!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>    
	</div>
</section>

<section id="form-details">
    <form action="">
        <span>LEAVE A MASSAGE</span>
        <h2>We love to hear from you</h2>
        <input type="text" placeholder="Your-Name">
        <input type="text" placeholder="E-mail">
        <input type="text" placeholder="Subject"  >
        <textarea name="" id="" cols="30" rows="10" placeholder="Your Comments"></textarea>
        <button class="normal">Submit</button>
    </form>


</section>

<section id="newsletter"  class="section-p1 section-m1">
    <div class="newstext">
        <h4>Sign Up For Newsletters</h4>
        <p>Get E-mail updates about our latet shop and <span>Special offer</span> </p>
    </div>
    <div class="form">
        <input type="text" placeholder="Your email address">
     
    </div>
</section>


 <footer class="section-p1">
   <div class="col">
       <img class="logo" src="img/logo.png" alt="">
       <h4>Contact</h4>
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