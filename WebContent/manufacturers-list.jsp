<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Countries </title>
</head>
<link rel ="stylesheet" href ="https://unpkg.com/bootstrap@4.5.0/dist/css/bootstrap.min.css" />
<body>
	
	
	<form method="post" action="viewManufacturers">
		<table border ="1" class="table table-striped table-bordered">
		
		<tr class ="thead-dark">
			<th>Manufacturers</th>
		</tr>
			<c:forEach items="${requestScope.allManufacturers}" var="currentManufacturer">
								
				<tr>
					<td>${currentManufacturer.manufacturerName}</td>
				</tr>
				
			</c:forEach>
		</table>
	</form>
	

    <a href="index.html">Go to main menu</a>

</body>
</html>