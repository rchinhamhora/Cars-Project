<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Countries </title>
</head>
<body>
	
	<h1>Manufacturers</h1>
	<form method="post" action="viewManufacturers">
		<table>
			<c:forEach items="${requestScope.allManufacturers}" var="currentManufacturer">
								
				<tr>
					<td colspan="3">${currentManufacturer.manufacturerName}</td>
				</tr>
				
			</c:forEach>
			
		</table>
	</form>

    <a href="index.html">Go to main menu</a>

</body>
</html>