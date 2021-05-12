<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Clinic Management System</title>
<link rel="stylesheet" href="static/CSS/bootstrap.min.css">
<link rel="stylesheet" href="static/MYCSS/Index.css">
</head>
<body>
	<div class="container-fluid ">

		<div class="row bg-dark bg-gradient text-white pt-4 ">
			<div class="col"
				style="font-size: 60px; font-family: 'Courier New', Courier, monospace; text-align: center;">
				<h1>Clinc Management system</h1>
			</div>
		</div>
		<div class="row">
			<div class="col mt-1">
				<nav class="nav justify-content-center">
					<div class="d-inline pt-1">
						<a class="nav-link text-white  btn-dark btn-outline-success"
							href="/" role="button">Home </a>
					</div>
					<div class="d-inline pt-1">
						<a class="nav-link text-white btn-dark btn-outline-success"
							href="AddDoctor" role="button">Doctor Panel </a>
					</div>
					<div class="d-inline pt-1 ">
						<a class="nav-link text-white btn-dark btn-outline-success"
							href="AddPatient" role="button">Patient Panel</a>
					</div>

					<div class="d-inline pt-1 ">
						<a class="nav-link text-white btn-dark btn-outline-success "
							href="AddAppointment" role="button">Appointment Panel</a>
					</div>

					<div class="d-inline pt-1 ">
						<a class="nav-link text-white btn-dark btn-outline-success"
							href="AddDrugs" role="button">Drugs Panel</a>
					</div>

					<div class="d-inline pt-1 ">
						<a class="nav-link bg-dark disabled" href="AddLabtest"
							role="button">LabTest Panel</a>
					</div>
				</nav>
			</div>
		</div>

		<div class="row mt-3">
			<div class="col-4"></div>
			<div class="col-md">
				<form class="form-horizontal" action="AddLabtest" method="POST">
					<fieldset>

						<!-- Form Name -->
						<b>Labtest Panel</b>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="name">Name</label>
							<div class="col-md-4">
								<input id="name" name="name" type="text" placeholder=""
									class="form-control input-md">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="price">Price</label>
							<div class="col-md-4">
								<input id="price" name="price" type="number" placeholder=""
									class="form-control input-md">

							</div>
						</div>

						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="add"></label>
							<div class="col-md-4">
								<input type="submit" class="btn btn-info" value="Add Labtest">
							</div>
						</div>

					</fieldset>
				</form>
			</div>
		</div>






		<div class="row pt-2">
			<div class="col" style="text-align: center;">
				<h2>
					<b>LABTEST LIST</b>
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="table-responsive">
					<table id="AddLabtest" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Price</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${labtestlist}" var="labtest">
								<tr>
									<td><c:out value="${labtest.id}" /></td>
									<td><c:out value="${labtest.name}" /></td>
									<td><c:out value="${labtest.price}" /></td>
									<td><a href="AddLabtest/remove?labtestId=${labtest.id}"
										class="btn btn-danger" type="button">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>











		<div class="row bg-dark bg-gradient text-light   ">
			<footer class="col"
				style="text-align: center; background: black; bottom: 0%;">
				<h1>Divergent</h1>
				<H6>Copyright © 2021 Divergent</H6>
			</footer>
		</div>
		<script src="static/JS/bootstrap.bundle.min.js"></script>
		<script src="static/JS/jquery-3.6.0.min.js"></script>
</body>
</html>
