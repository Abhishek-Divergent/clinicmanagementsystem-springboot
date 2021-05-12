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
						<a class="nav-link text-white btn-dark btn-outline-success "
							href="AddDoctor" role="button">Doctor Panel </a>
					</div>
					<div class="d-inline pt-1 ">
						<a class="nav-link  bg-dark disabled " href="AddPatient"
							role="button">Patient Panel</a>
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
				<form class="form-horizontal" action="AddPatient" method="POST">
					<fieldset>
						<!-- Form Name -->
						<legend>
							<b>PATIENT PANEL</b>
						</legend>


						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="patientName">Patient
								Name</label>
							<div class="col-md-4">
								<input id="patientName" name="patientName" type="text"
									placeholder="Enter Patient Name" class="form-control input-md">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="gender">Patient
								Gender</label>
							<div class="radio-inlin col-md-4">
								<div class="form-check">
									<label class="form-check-label" for="male"> <input
										class="form-check-input" type="radio" name="gender"
										id="gender" value="m"> Male
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label md-4" for="female"> <input
										class="form-check-input" type="radio" name="gender"
										id="gender" checked value="f">Female
									</label>
								</div>
							</div>

						</div>


						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="patientAge">Patient
								Age</label>
							<div class="col-md-4">
								<input id="patientAge" name="patientAge" type="number"
									placeholder="Enter patient Age" class="form-control input-md">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label" for="patientWeight">Patient
								Weight</label>
							<div class="col-md-4">
								<input id="patientWeight" name="patientWeight" type="number"
									placeholder="Enter Patient Weight"
									class="form-control input-md">
							</div>
						</div>


						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="patientContact">Patient
								Phone Number</label>
							<div class="col-md-4">
								<input id="patientContact" name="patientContact" type="number"
									placeholder="Enter Patient Phone Number"
									class="form-control input-md">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label" for="patientAddress">Patient
								Address</label>
							<div class="col-md-4">
								<input id="patientAddress" name="patientAddress" type="text"
									placeholder="Enter Patient Address"
									class="form-control input-md">
							</div>
						</div>
						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="add"></label>
							<div class="col-md-4">
								<input type="submit" class="btn btn-info" value="Add Patient">
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<div class="row pt-2">
			<div class="col" style="text-align: center;">
				<h2>
					<b>PATIENT LIST</b>
				</h2>
			</div>
		</div>
		<div class="row ">
			<div class="col">

				<div class="table-responsive">
					<table id="example" class="table table-dark table-bordered ">
						<thead>
							<tr>
								<th>Patient ID</th>
								<th>Patient Name</th>
								<th>Patient Age</th>
								<th>Patient Gender</th>
								<th>Patient Weight</th>
								<th>Patient Contact</th>
								<th>Patient Address</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${paitentList}" var="patient">
								<tr>
									<td><c:out value="${patient.id}" /></td>
									<td><c:out value="${patient.name}" /></td>
									<td><c:out value="${patient.gender}" /></td>
									<td><c:out value="${patient.age}" /></td>
									<td><c:out value="${patient.weight}" /></td>
									<td><c:out value="${patient.contact}" /></td>
									<td><c:out value="${patient.address}" /></td>
									<td><a href="AddPatient/remove?patientId=${patient.id}"
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