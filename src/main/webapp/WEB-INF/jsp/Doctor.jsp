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
						<a class="nav-link  bg-dark disabled" href="AddDoctor"
							role="button">Doctor Panel </a>
					</div>
					<div class="d-inline pt-1 ">
						<a class="nav-link text-white btn-dark btn-outline-success"
							href="AddPatient" role="button">Patient Panel</a>
					</div>

					<div class="d-inline pt-1 ">
						<a class="nav-link text-white btn-dark btn-outline-success"
							href="AddAppointment" role="button">Appointment Panel</a>
					</div>
					
					<div class="d-inline pt-1 ">
						<a class="nav-link text-white btn-dark btn-outline-success"
							href="AddDrugs" role="button">Drugs Panel</a>
					</div>
					
					<div class="d-inline pt-1 ">
						<a class="nav-link text-white btn-dark btn-outline-success"
							href="AddLabtest" role="button">LabTest Panel</a>
					</div>
				</nav>
			</div>
		</div>






		<div class="row mt-3">
			<div class="col-4"></div>
			<div class="col-md">
				<form class="form-horizontal" action="AddDoctor" method="POST">
					<fieldset>
						<legend>
							<b>Doctor Panel</b>
						</legend>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="doctorUserName">Doctor
								User Name</label>
							<div class="col-md-4">
								<input id="doctorUserName" name="doctorUserName" type="email"
									placeholder="Enter Doctor UserName"
									class="form-control input-md">
							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="doctorName">Doctor
								Name</label>
							<div class="col-md-4">
								<input id="doctorName" name="doctorName" type="text"
									placeholder="Enter Doctor Name" class="form-control input-md">

							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="doctorPassword">Doctor
								Password</label>
							<div class="col-md-4">
								<input id="doctorPassword" name="doctorPassword" type="password"
									placeholder="Enter Doctor Password"
									class="form-control input-md">
							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="doctorContact">Doctor
								Phone Number</label>
							<div class="col-md-4">
								<input id="doctorContact" name="doctorContact" type="number"
									placeholder="Enter Doctor Phone Number"
									class="form-control input-md">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label" for="doctorSpeciality">Doctor
								Speciality</label>
							<div class="col-md-4">
								<input id="doctorSpeciality" name="doctorSpeciality" type="text"
									placeholder="Enter Doctor Speciality"
									class="form-control input-md">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label" for="doctorFees">Doctor
								Fees</label>
							<div class="col-md-4">
								<input id="doctorFees" name="doctorFees" type="number"
									placeholder="Enter Doctor Fees" class="form-control input-md">
							</div>
						</div>
						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="add"></label>
							<div class="col-md-4">
								<input type="submit" class="btn btn-info" value="Add Doctor">
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<div class="row pt-2">
			<div class="col" style="text-align: center;">
				<h2>
					<b>DOCTOR LIST</b>
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<!--   <legend style="text-align: center;"><b>DOCTOR LIST</b></legend> -->
				<div class="table-responsive">
					<table id="example" class="table table-dark table-bordered ">
						<thead>
							<tr>
								<th>Doctor ID</th>
								<th>Doctor Name</th>
								<th>Doctor UserName</th>
								<th>Doctor Password</th>
								<th>Doctor Contact</th>
								<th>Doctor Speciality</th>
								<th>Doctor Fees</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${doctorList}" var="doctor">
								<tr>
									<td><c:out value="${doctor.id}" /></td>
									<td><c:out value="${doctor.name}" /></td>
									<td><c:out value="${doctor.username}" /></td>
									<td><c:out value="${doctor.password}" /></td>
									<td><c:out value="${doctor.contact}" /></td>
									<td><c:out value="${doctor.speciality}" /></td>
									<td><c:out value="${doctor.fees}" /></td>
									<td><a href="AddDoctor/remove?doctorId=${doctor.id}"
										class="btn btn-danger" type="button">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>











		<div class="row bg-dark bg-gradient text-light ">
			<footer class="col"
				style="text-align: center; background: black; bottom: 0%;">
				<h1>Divergent</h1>
				<H6>Copyright © 2021 Divergent</H6>
			</footer>
		</div>
	</div>


	<script src="static/JS/bootstrap.bundle.min.js"></script>
	<script src="static/JS/jquery-3.6.0.min.js"></script>
</body>
</html>