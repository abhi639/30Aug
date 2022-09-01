<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.clinic.dao.Patientdao" %>
    <%@ page import="com.clinic.petiont.Patient" %>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Patient</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	.banner-backgrround{
clip-path: polygon(30% 0%, 100% 0, 100% 88%, 75% 84%, 53% 91%, 28% 95%, 0 90%, 0 0);	}
	
	</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed">
  <a class="navbar-brand" href="#">Clinic Managment System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="#">Login</a>
      <a class="nav-item nav-link" href="#"></a>
     
    </div>
  </div>
</nav>

<div class="container">
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Blood Group</th>
      <th scope="col">Age</th>
       
    </tr>
  </thead>
  
  <tbody>
    <tr>
     <%
  Patientdao dao=new Patientdao();
  
   ArrayList<Patient> data1=dao.viewEmp();
   for(Patient emp:data1){
 %>
      <td scope="row"><%=emp.getPetion_id() %></td>
       <td scope="row"><%=emp.getPetion_name()%></td>
        <td scope="row"><%=emp.getBlood_group()%></td>
         <td scope="row"><%=emp.getPetiont_age() %></td>
          
   
    <%} %>
    </tr>
    
    <tr>
    
    
    </tr>
  </tbody>
</table>
</div>
</body>
</html>