<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Country</title>
<link href="styles.css" rel="stylesheet" />
</head>
<body>
	<h2>Add Country</h2>
    <form action="addCountryServlet" method="POST">
        <label>Country Name</label><br/>
        <input type="text" name="countryName"><br/>
        <br/>
        <input type="submit" name="Add Country" value ="Add country"><br/>
    </form>
    <br/>
    <a href="index.html">Go to main menu</a>
</body>
</html>