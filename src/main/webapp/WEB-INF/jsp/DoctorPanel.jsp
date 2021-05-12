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
			<div class="col bg-info text-white" style="text-align: center;">
				<h3>Doctor Panel</h3>
			</div>
		</div>

		<div class="row pt-4">
			<div class="col justify-content-center"
				style="text-align: center; align-items: center; align-content: center;">
				<form action="patientdoctor" method="post">
					<label for="findid">Doctor ID <input type="number"
						name="findid" id="findid" placeholder="Enter Your Id">
					</label> <input type="submit" class="btn btn-info" value="Find Patient">
					<!--  <button type="submit" class="btn btn-primary">Submit</button> -->
				</form>

			</div>

		</div>


		<div class="row ">
			<div class="col">
				<div class="table-responsive">
					<table id="example" class="table table-striped table-bordered ">
						<thead>
							<tr>

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
									<td><c:out value="${appointment.doctor_id}" /></td>
									<td><c:out value="${appointment.doctor_name}" /></td>
									<td><c:out value="${appointment.patient_id}" /></td>
									<td><c:out value="${appointment.patient_name}" /></td>
									<td><c:out value="${appointment.problem}" /></td>
									<td><c:out value="${appointment.date}" /></td>
									<td><c:out value="${appointment.time}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>









		<div class="row bg-dark bg-gradient text-light ">
			<footer class="col"
				style="text-align: center; position: fixed; background: black; bottom: 0%;">
				<h1>Divergent</h1>
				<H6>Copyright © 2021 Divergent</H6>
			</footer>
		</div>
	</div>


	<script src="static/JS/bootstrap.bundle.min.js"></script>
	<script src="static/JS/jquery-3.6.0.min.js"></script>
</body>
</html>