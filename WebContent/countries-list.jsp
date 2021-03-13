<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Country List</title>
<link href="styles.css" rel="stylesheet" />
</head>
<body>
	<h2>Country List</h2>
    <form action="countriesNavigationServlet">
    <table>
      <thead>
         <tr>
      		<th>Country</th>
      	 </tr>
      </thead>
      <tbody>
        	<c:forEach items="${requestScope.allCountries}" var="currentcountry">
				<tr>
		 			<td>${currentcountry.countryName}</td>
	            </tr>
        	</c:forEach>
      </tbody>
    </table>
    </form>
    <br/>
    <a href="index.html">Go to main menu</a>
</body>
</html>