<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AIRBNB : host</title>
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
				<li class="nav-item active"><a class="nav-link" href="#">H ome <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown"
					   aria-haspopup="true" aria-expanded="false">Hosts</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
						<a class="dropdown-item" href="HostBooking">Booking</a>
						<a class="dropdown-item" href="HostReviews">Reviews</a>
                        <a class="dropdown-item" href="addProperty">Add Property</a>
					</div>
				</li>
				<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
			</ul>

			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container mt-4">
		<h3>Welcome, ${host.name}!</h3>
		<h4 class="mt-4">Your Listed Properties</h4>
	
		<c:choose>
			<c:when test="${not empty properties}">
				<div class="row">
					<c:forEach var="property" items="${properties}">
						<div class="col-md-4 mb-4">
							<div class="card shadow-sm">
								<div class="card-body">
									<h5 class="card-title">${property.title}</h5>
									<p class="card-text">${property.description}</p>
									<p><strong>Location:</strong> ${property.location}</p>
									<p><strong>Price:</strong> ₹${property.pricePerNight} / night</p>
									<p><strong>Max Guests:</strong> ${property.maxGuests}</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:when>
			<c:otherwise>
				<p class="text-muted">You haven’t added any properties yet. Go ahead and <a href="addProperty">add one</a>!</p>
			</c:otherwise>
		</c:choose>
	</div>
	
</body>
</html>
