<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- Montserrat Font -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,0,0" />    <!-- Custom CSS -->
    <link rel="stylesheet" href="/adminStyle.css">
  	<link rel="stylesheet" href="/table.css">

  </head>
  <body>
    <div class="grid-container">

  	<!--Header-->
  	<header class="header">
  			<h2>Orders</h2>
  	</header>
      <!-- Sidebar -->
      <aside id="sidebar">
        <div class="sidebar-title">
          <div class="sidebar-brand">
            <span class="material-icons-outlined">inventory</span> Admin Panel
          </div>
          <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
        </div>

        <ul class="sidebar-list">
          <li class="sidebar-list-item">
            <a href="/admin/admin-dashboard">
              <span class="material-icons-outlined">dashboard</span> Dashboard
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="/admin/list?type=products">
              <span class="material-icons-outlined">inventory_2</span> Products
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="/admin/list?type=users">
              <span class="material-icons-outlined">person</span> Users
            </a>
          </li>

          <li class="sidebar-list-item">
            <a href="/admin/list?type=orders">
              <span class="material-icons-outlined">shopping_cart</span> Sales Orders
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="/admin/list?type=products">
              <span class="material-icons-outlined">poll</span> Reports
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#">
              <span class="material-icons-outlined">settings</span> Settings
            </a>
          </li>
        </ul>
      </aside>
      <!-- End Sidebar -->
	   

<div class="table-wrapper">
	<table class="fl-table">
		<thead>
			<tr>
				<th>order ID</th>
				<th>Date</th>
				<th>Status</th>
				<th>total_amount</th>
				<th>user ID</th>
			</tr>

		</thead>
		<tbody>
	<c:forEach var="order" items="${orders}">	
		<tr>
				<td>${order.order_id}</td>
				<td>${order.order_date}</td>
				<td>${order.status}</td>
				<td>${order.total_amount}</td>
				<td>${order.user.userId}</td>
            </td>
		</tr>
	</c:forEach>

		</tbody>
	</table>
</div>
</div>   
	   
</body>
</html>