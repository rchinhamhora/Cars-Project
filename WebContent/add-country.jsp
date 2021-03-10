<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a country</title>
</head>
<body>

    <form action="addCountryServlet" method="POST">
        <h2>Insert name of country</h2>
        <input type="text" name="countryName">
        
        <input type="submit" name="Add Country" value ="Add country">
    </form>
    <a href="index.html">Go to main menu</a>
</body>
</html>