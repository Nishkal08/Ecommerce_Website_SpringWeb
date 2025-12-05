<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>

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
            <h2>Reset Password</h2>
            
          

            <form action="/update-password" method="post">
              

             <label for="email">Email address</label>
              <div class="email-input-container">
                <i class="fi fi-rr-envelope icon-email"></i>
                <input type="email" name="email" placeholder="exemple@gmail.com" id="email">
              </div>
              <p class="error">${invalidEmail}</p>
              <p class="error">${invalidToken}</p>
              
              <label for="password">Password</label>
              
              <div class="password-input-container">
                <i class="fi fi-rr-lock icon-password"></i>
                <input type="password" name="password" placeholder="Enter New password" id="password">
              </div>
           	 <button id="register-button" type="submit">Reset Password</button>
            </form>
            <br>
			
	
            <p class="credits">Made with love by <a href="#" target="_blank">Nishkal</a></p>
          </div>
        </div>    
      </div>
    </div>
  </main>
</body>
</html>