<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AIRBNB : guest</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style>
/* CSS styles same as before */
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">airbnb</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown"
					   aria-haspopup="true" aria-expanded="false">Guests</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
						<a class="dropdown-item" href="GuestBook">Book</a>
						<a class="dropdown-item" href="GuestCancel">Cancel</a>
					</div>
				</li>
				<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
			</ul>

			<form class="form-inline my-2 my-lg-0" action="searchProperties" method="get">
				<input class="form-control mr-sm-2" type="search" name="location" placeholder="Search by Location" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<!-- Properties Section -->
	<!-- Properties Section -->
	<div class="container mt-4">
		<h3>Available Airbnbs</h3>
		<div class="row">
			<c:forEach var="property" items="${properties}">
				<div class="col-md-4 mb-3">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">${property.title}</h5>
							<p class="card-text">Location: ${property.location}</p>
							<p class="card-text">Price: $${property.pricePerNight}</p>
							<p class="card-text">Max Guests: ${property.maxGuests}</p>
							<a href="bookProperty?id=${property.propertyId}" class="btn btn-primary">Book Now</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>
