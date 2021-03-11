<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a manufacturer</title>
</head>
<link rel ="stylesheet" href ="https://unpkg.com/bootstrap@4.5.0/dist/css/bootstrap.min.css" />
<body>

    <form action="addManufacturersServlet" method="POST">
    
        <h2>Insert manufacturer details</h2>
        <label for="mfname">Manufacturer name:</label>
        <input type="text"  class="form-control" id="mfname" name="manufacturerName">
        
        <label for="cname">Country name:</label>
        <input type="text" class="form-control" id="cname" name="country">
        
        <br>
        <input type="submit" class="btn btn-secondary" name="Add Manufacturer" value ="Add Manufacturer">
        
    </form>
    
    <br>
    
    <a href="index.html">Go to main menu</a>
    
</body>
</html>