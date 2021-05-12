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
						<a class="nav-link bg-dark disabled " href="AddAppointment"
							role="button">Appointment Panel</a>
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

		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" action="AddAppointment" method="POST">
					<fieldset>

						<!-- Form Name -->
						<legend style="text-align: center;">
							<b>ADD APPOINTMENT</b>
						</legend>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="doctorId">Doctor
								ID</label>
							<div class="col-md-4">
								<input id="doctorID" name="doctorId" type="number"
									placeholder="Enter Doctor Id" class="form-control input-md">
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
							<label class="col-md-4 control-label" for="patientId">Patient
								ID</label>
							<div class="col-md-4">
								<input id="patientId" name="patientId" type="number"
									placeholder="Enter Patient Id" class="form-control input-md">
							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="patientName">Patient
								Name</label>
							<div class="col-md-4">
								<input id="patientName" name="patientName" type="text"
									placeholder="Enter Patient Name" class="form-control input-md">
							</div>
						</div>


						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="patientProblem">Patient
								Problem</label>
							<div class="col-md-4">
								<input id="patientProblem" name="patientProblem" type="text"
									placeholder="Enter Patient Problem"
									class="form-control input-md">
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="date">Date</label>
							<div class="col-md-4">
								<input id="date" name="date" type="date"
									class="form-control input-md">
							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="time">Time</label>
							<div class="col-md-4">
								<input placeholder="Selected time" type="time" id="time"
									name="time" class="form-control timepicker">
							</div>
						</div>
						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="add"></label>
							<div class="col-md-4">
								<input type="submit" class="btn btn-info" value="Add Appointment">
							</div>
						</div>
					</fieldset>
				</form>
			</div>
			<div class="col"></div>
		</div>
		<div class="row pt-2">
			<div class="col" style="text-align: center;">
				<h2>
					<b>APPOINTMENT LIST</b>
				</h2>
			</div>
		</div>
		<div class="row ">
			<div class="col">
				<div class="table-responsive">
					<table id="example" class="table table-dark table-bordered ">
						<thead>
							<tr>
								<th>Appointment ID</th>
								<th>Appointment DoctorID</th>
								<th>Appointment DoctorName</th>
								<th>Appointment PatientID</th>
								<th>Appointment PatientName</th>
								<th>Appointment Problem</th>
								<th>Appointment Date</th>
								<th>Appointment Time</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${appointmentList}" var="appointment">
								<tr>
									<td><c:out value="${appointment.id}" /></td>
									<td><c:out value="${appointment.doctor_id}" /></td>
									<td><c:out value="${appointment.doctor_name}" /></td>
									<td><c:out value="${appointment.patient_id}" /></td>
									<td><c:out value="${appointment.patient_name}" /></td>
									<td><c:out value="${appointment.problem}" /></td>
									<td><c:out value="${appointment.date}" /></td>
									<td><c:out value="${appointment.time}" /></td>
									<td><a
										href="AddAppointment/remove?appointmentId=${appointment.id}"
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