<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style>
/* CSS styles same as before */
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">book my hotel</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value='/logout' />">Logout</a></li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown"
					   aria-haspopup="true" aria-expanded="false">LandLord</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
						<a class="dropdown-item" href="LandLogin">Login</a>
						<a class="dropdown-item" href="AdminApproveLandLord">Approve</a>
						<a class="dropdown-item" href="AdminReadAllApprovedLandlords">Read Approve</a>
						<a class="dropdown-item" href="AdminReadAllUnapprovedLandlords">Read Un-Approve</a>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown"
					   aria-haspopup="true" aria-expanded="false">Customer</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
						<a class="dropdown-item" href="CustomerLogin">Login</a>
						<a class="dropdown-item" href="BookRoom">Book</a>
						<a class="dropdown-item" href="CancelRoom">Cancel</a>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown"
					   aria-haspopup="true" aria-expanded="false">Admin</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
						<a class="dropdown-item" href="AdminLogin">Login</a>
						<a class="dropdown-item" href="AdminUpdate.jsp">Update</a>
						<a class="dropdown-item" href="AdminDelete.jsp">Delete</a>
						<a class="dropdown-item" href="AdminGetAll2.jsp">Show All</a>
						<a class="dropdown-item" href="AdminGetById.jsp">View By Id</a>
					</div>
				</li>
			</ul>

			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="img/pexels-pixabay-271618.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/pexels-pixabay-271619.jpg" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/pexels-pixabay-271624.jpg" alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="wrap container mt-5">
		<form action="#">
			<div class="a-col mb-3">
				<select class="form-control">
					<option value="" disabled selected>Select Hotel</option>
					<option value="email">Luxe Hotel</option>
					<option value="twitter">Deluxe Hotel</option>
					<option value="linkedin">Five Star Hotel</option>
				</select>
			</div>

			<div class="card-deck">
				<!-- Repeat for each room type -->
				<div class="card">
					<img class="card-img-top" src="images/hotel_feture_1.jpg" alt="AC Room">
					<div class="card-body">
						<h5 class="card-title">AC Room</h5>
						<p class="card-text">24 hours air conditioning with free wifi and room service</p>
					</div>
					<div class="card-footer">
						<a class="btn btn-primary" href="bookNow.jsp">BOOK NOW</a>
					</div>
				</div>

				<div class="card">
					<img class="card-img-top" src="images/hotel_feture_2.jpg" alt="Non AC Room">
					<div class="card-body">
						<h5 class="card-title">Non AC Room</h5>
						<p class="card-text">Natural air with free wifi</p>
					</div>
					<div class="card-footer">
						<a class="btn btn-primary" href="bookNow.jsp">BOOK NOW</a>
					</div>
				</div>

				<div class="card">
					<img class="card-img-top" src="images/hotel_feture_3.jpg" alt="Luxury Room">
					<div class="card-body">
						<h5 class="card-title">Luxury Room</h5>
						<p class="card-text">24-hour AC with meals and service available</p>
					</div>
					<div class="card-footer">
						<a class="btn btn-primary" href="bookNow.jsp">BOOK NOW</a>
					</div>
				</div>
			</div>
		</form>
	</div>

	<footer class="footer mt-5">
		<div class="waves">
			<div class="wave" id="wave1"></div>
			<div class="wave" id="wave2"></div>
			<div class="wave" id="wave3"></div>
			<div class="wave" id="wave4"></div>
		</div>
		<ul class="social-icon">
			<li class="social-icon__item"><a class="social-icon__link" href="#"><ion-icon name="logo-facebook"></ion-icon></a></li>
			<li class="social-icon__item"><a class="social-icon__link" href="#"><ion-icon name="logo-twitter"></ion-icon></a></li>
			<li class="social-icon__item"><a class="social-icon__link" href="#"><ion-icon name="logo-linkedin"></ion-icon></a></li>
			<li class="social-icon__item"><a class="social-icon__link" href="#"><ion-icon name="logo-instagram"></ion-icon></a></li>
		</ul>
		<ul class="menu">
			<li class="menu__item"><a class="menu__link" href="#">Home</a></li>
			<li class="menu__item"><a class="menu__link" href="#">About</a></li>
			<li class="menu__item"><a class="menu__link" href="#">Services</a></li>
			<li class="menu__item"><a class="menu__link" href="#">Team</a></li>
			<li class="menu__item"><a class="menu__link" href="#">Contact</a></li>
		</ul>
		<p>&copy; Qspiders | All Rights Reserved</p>
	</footer>

	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
