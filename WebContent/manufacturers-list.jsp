<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manufacturer List</title>
<link href="styles.css" rel="stylesheet" />
</head>
<body>
	<h2>Manufacturer List</h2>
	<form method="post" action="viewManufacturers">
		<table>
		  <thead>
		    <tr>
		    	<th colspan="3">Manufacturer Name</th>
		    	<th>Country</th>
		    </tr>
		  </thead>
		  <tbody>
		  <tr>
			<c:forEach items="${requestScope.allManufacturers}" var="currentManufacturer">	
				<tr>
					<td colspan="3">${currentManufacturer.manufacturerName}</td>
					<td>${currentManufacturer.country.countryName}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</form>
	<br/>
    <a href="index.html">Go to main menu</a>

</body>
</html>