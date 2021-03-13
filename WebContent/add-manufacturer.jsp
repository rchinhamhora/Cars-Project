<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Manufacturer</title>
<link href="styles.css" rel="stylesheet" />
</head>
<body>
	<h2>Add Manufacturer</h2>
    <form action="addManufacturersServlet" method="POST">
    
        <label>Manufacturer Name</label><br/>
        <input type="text" name="manufacturerName"><br/>
        
        <label>Manufacturer Country</label><br/>
        <input type="text" name="country"><br/>
        
        <br/>
        <input type="submit" name="Add Manufacturer" value ="Add Manufacturer">
    </form>
    <br/>
    <a href="index.html">Go to main menu</a>
    
</body>
</html>