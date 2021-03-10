<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countries</title>
</head>
<body>
    <form action="countriesNavigationServlet">
    <table>
    	<tr>
        	<c:forEach items="${requestScope.allCountries}" var="currentcountry">
				<tr>
			 		<td><input type="radio" name="id" value="${currentcountry.countryId}"></td>
		 			<td> Country Name: ${currentcountry.countryName}</td>
	            </tr>
        	</c:forEach>
    	</tr>
    </table>
    </form>
    <a href="index.html">Go to main menu</a>
</body>
</html>