<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a country</title>
</head>
<link rel ="stylesheet" href ="https://unpkg.com/bootstrap@4.5.0/dist/css/bootstrap.min.css" />
<body>

    <form action="addCountryServlet" method="POST">
        <h2>Insert Country Name</h2>
        <input type="text" class="form-control col-sm-4" name="countryName">
        
        <br>
        <input type="submit" class="btn btn-secondary" name="Add Country" value ="Add country">
    </form>
    
    <br>
    
    <a href="index.html">Go to main menu</a>
    
</body>
</html>