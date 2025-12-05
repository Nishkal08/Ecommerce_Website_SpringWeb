<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="signup.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

   <script>
   
   		if(${isLogin} == false)
   		{
   			alert("Login or signup required")
   		}
   		
   </script>

</head>
<body>
  <main>
    <div class="page-container">
      <div class="grid-container">
        <div class="left-side">
          <div class="img-and-text">
            <img class="cart-illustration" src="img/cart-illustration.png" alt="">
            <h1>Start for free and get attractive offers.</h1>
          </div>
        </div>
        <div class="right-side">
          <div class="wrapper">
            <h2>Get started.</h2>
            <p id="login_redirect">Already have an account? <a href="login">Log in</a></p>
          

            <form action="/signup" method="post">
              <label for="full name">Full Name</label>
              <div class="email-input-container">
             	<i class="fi fi-rs-user"></i>
                <input type="text" value="${username}"name="username" placeholder="example" id="fullname">
			  	<p class="error">${usernameError}</p>
              </div>
             
             <label for="email">Email address</label>
              <div class="email-input-container">
                <i class="fi fi-rr-envelope icon-email"></i>
                <input type="email" name="email" value="${email}"placeholder="exemple@gmail.com" id="email">
	             <p class="error">${emailError}</p>
              </div>
              
          
              <label for="password">Password</label>
              
              <div class="password-input-container">
                <i class="fi fi-rr-lock icon-password"></i>
                <input type="password" value="${password}"name="password" placeholder="Your password" id="password">
              </div>
				<p class="error">${fieldNullError}</p>
			  
           	 <button id="register-button" type="submit">Sign Up</button>
            </form>
			
			<!-- <div class="agreement-check">
              <input type="checkbox" name="terms_of_service_and_privacy_policy">
              <span class="terms-of-use-text">I agree to Plataform's
                <a href="#">Terms of Service</a> and
                <a href="#">Privacy Policy</a>
              </span>
            </div>
			-->
            <p class="credits">Made with love <a href="#" target="_blank">For You</a></p>
          </div>
        </div>    
      </div>
    </div>
  </main>
</body>
</html>