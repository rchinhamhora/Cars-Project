<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countries</title>
</head>
<link rel ="stylesheet" href ="https://unpkg.com/bootstrap@4.5.0/dist/css/bootstrap.min.css" />
<body>
    <form action="countriesNavigationServlet">
    <table border ="1" class="table table-striped table-bordered">
    
    	<tr class ="thead-dark">
    		<th>Countries</th>
    	</tr>
        	<c:forEach items="${requestScope.allCountries}" var="currentcountry">
				<tr>
		 			<td>${currentcountry.countryName}</td>
	            </tr>
        	</c:forEach>
    </table>
    </form>
    <a href="index.html">Go to main menu</a>
</body>
</html>