<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }
        .form-container h1 {
            margin-bottom: 10px;
            font-size: 24px;
            color: #333;
        }
        .form-container p {
            margin-bottom: 20px;
            font-size: 14px;
            color: #666;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input:focus {
            border-color: #007bff;
        }
        .form-row {
            display: flex;
            gap: 10px;
        }
        .form-row .form-group {
            flex: 1;
        }
        .submit-btn {
            background-color: #000;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            width: 100%;
        }
        .submit-btn:hover {
            background-color: #333;
        }
    </style>		

</head>
<body>
		<div class="form-container">
        <h1>Shipping</h1>
        <p>Please enter your shipping details.</p>
        <form id="shippingForm" action="/shipping-address" method="post">
            <div class="form-row">
                <div class="form-group">
                    <label for="first_name">Full Name</label>
                    <input type="text" value="${user.username}" id="user_name" name="username" required >
                </div>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" value="${user.address}"id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="country">Country</label>
                <input type="text" id="country" value="${user.country}"name="country" required>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="zip_code">ZIP Code</label>
                    <input type="number" id="zip_code" value="${user.zipcode}" name="zipcode" required>
                </div>
                <div class="form-group">
                    <label for="city">City</label>
                    <input type="text" id="city" value="${user.city}"name="city" required>
                </div>
                <div class="form-group">
                    <label for="state">State</label>
                    <input type="text" id="state" value="${user.state}"name="state" required>
                </div>
            </div>
            <input type="hidden" name="total_amount" value="${total_amount}">
            <button type="submit" class="submit-btn">Continue</button>
        </form>
    </div>
</body>
</html>