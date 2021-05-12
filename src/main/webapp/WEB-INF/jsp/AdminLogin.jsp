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
          <div class="col" style="font-size:60px;font-family: 'Courier New', Courier, monospace; text-align: center;"><h1> Clinc Management system</h1></div>
      </div>
      <div class="row">
          <div class="col mt-1">
            <nav class="nav justify-content-center">
            <div class="d-inline pt-1">
						<a class="nav-link text-white  btn-dark btn-outline-success"
							href="/" role="button">Home </a>
					</div>
            <div class="d-inline pt-1">
                <a class="nav-link bg-dark disabled" href="adminpage" role="button" disabled>ADMIN LOGIN </a>
            </div>
            <div class="d-inline pt-1 ">
                <a class="nav-link text-white btn-dark btn-outline-success" href="doctorpage" role="button">DOCTOR LOGIN </a>
            </div>
        </nav>
          </div>
      </div>

      <div class="row pt-3">
        <div class="col"><h1 style="text-align: center;">ADMIN LOGIN</h1></div> 
        
      </div>

      <div class="row pt-4 ">
          <div class="col"></div> 
          <div class="col">  
            <form action="adminLogin" method="post">
           <div >
               <label for="UserName" class="form-label">ADMIN UserName</label>
               <input type="text" class="form-control" name="username" id="UserName" placeholder="Enter Admin UserName">
            </div>
            <div >
                <label for="Password" class="form-label">ADMIN Password</label>
                <input type="password" class="form-control" name="password" id="Password" placeholder="Enter Admin Password">
             </div>
            
            <div class="pt-3">
               <input  type="submit" class="form-control text-white  btn-dark btn-outline-danger  " value="LOGIN">
             </div>
            </form>
        </div>
        <div class="col"></div> 

      </div>

        <div class="row bg-dark bg-gradient text-light ">
            <footer class="col" style="text-align: center; position: fixed; background: black; bottom: 0%;">
                    <h1>Divergent</h1>
                    <H6>Copyright © 2021 Divergent</H6>
            </footer>
        </div>
</div>


	<script src="static/JS/bootstrap.bundle.min.js"></script>
	<script src="static/JS/jquery-3.6.0.min.js"></script>
</body>
</html>