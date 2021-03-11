<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a manufacturer</title>
</head>
<body>

    <form action="addManufacturersServlet" method="POST">
    
        <h2>Insert Manufacturer Name</h2>
        <input type="text" name="manufacturerName">
        
        <h2>Insert Manufacturer Country</h2>
        <input type="text" name="country">
        
        <br></br>
        
        <input type="submit" name="Add Manufacturer" value ="Add Manufacturer">
        
    </form>
    
    <br></br>
    
    <a href="index.html">Go to main menu</a>
    
</body>
</html>