<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <link rel="stylesheet" href="invoice.css">
</head>
<body>
	<div class="container mt-6 mb-7">
    <div class="row justify-content-center">
      <div class="col-lg-12 col-xl-7">
        <div class="card">
          <div class="card-body p-5">
            <h2>
              Hey ${order.user.username},
            </h2>
            <p class="fs-sm">
              This is the receipt for a payment of <strong>&#8377 ${order.total_amount}</strong> you made to purchase our products.
            </p>

            <div class="border-top border-gray-200 pt-4 mt-4">
              <div class="row">
                <div class="col-md-6">
                  <div class="text-muted mb-2">Order Id</div>
                  <strong>#${order.order_id}</strong>
                </div>
                <div class="col-md-6 text-md-end">
                  <div class="text-muted mb-2">Payment Date</div>
                  
                  <strong>${date}</strong>
                </div>
              </div>
            </div>

            <div class="border-top border-gray-200 mt-4 py-4">
              <div class="row">
                <div class="col-md-6">
                  <div class="text-muted mb-2">Client</div>
                  <strong>
                    ${order.user.username}
                  </strong>
        
                  <p class="fs-sm">
	                  	${order.user.address},${order.user.zipcode}
	                  	${order.user.state},${order.user.country}
					
                    <br>
                    <a href="#!" class="text-purple">${order.user.email}
                    </a>
                  </p>
                </div>
                <div class="col-md-6 text-md-end">
                  <div class="text-muted mb-2">Payment To</div>
                  <strong>
                    Cara Pvt.Ltd.
                  </strong>
                  <p class="fs-sm">
                    	New Ranip,Ahmedabad
                    <br>
                    <a href="#!" class="text-purple">nishkal0810@gmail.com
                    </a>
                  </p>
                </div>
              </div>
            </div>

            <table class="table border-bottom border-gray-200 mt-3">
              <thead>
                <tr>
                  <th scope="col" class="fs-sm text-dark text-uppercase-bold-sm px-0">Description</th>
                  <th scope="col" class="fs-sm text-dark text-uppercase-bold-sm px-0">Quantity</th>
                  <th scope="col" class="fs-sm text-dark text-uppercase-bold-sm text-end px-0">Amount</th>
                </tr>
              </thead>
              <tbody>
               <c:forEach var="items" items="${orderItems}">
	                <tr>
	                  <td class="px-0">${items.product.name}</td>
	                  <td class="text-end px-0">${items.quantity}</td>
	                	<td class="text-end px-0">&#8377 ${items.subtotal}</td>
	                </tr>
               </c:forEach>
               
              </tbody>
            </table>

            <div class="mt-5">
              <div class="d-flex justify-content-end">
                <p class="text-muted me-3">Subtotal:</p>
                <span>&#8377 ${order.total_amount}</span>
              </div>
              <div class="d-flex justify-content-end">
                <p class="text-muted me-3">Discount:</p>
                <span>&#8377 00.00</span>
              </div>
              <div class="d-flex justify-content-end mt-3">
                <h5 class="me-3">Total:</h5>
                <h5 class="text-success">&#8377 ${order.total_amount}</h5>
              </div>
            </div>
          </div>
          <a href="/index" class="btn btn-dark btn-lg card-footer-btn justify-content-center text-uppercase-bold-sm hover-lift-light">
            <span class="svg-icon text-white me-2">
              <svg xmlns="http://www.w3.org/2000/svg" width="512" height="512" viewBox="0 0 512 512"><title>ionicons-v5-g</title><path d="M336,208V113a80,80,0,0,0-160,0v95" style="fill:none;stroke:#000;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"></path><rect x="96" y="208" width="320" height="272" rx="48" ry="48" style="fill:none;stroke:#000;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"></rect></svg>
            </span>
           Back To Home
          </a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>