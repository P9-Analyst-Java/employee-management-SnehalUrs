<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employment History</title>
<style type="text/css">
body{
background-color:#FFC0CB;
}
<div style="text-align:center">
table{width:600px}
 
td{border:1px solid black; padding:5px; border-collapse: collapse;text-align: center; background-color:white }
th{width:1000px; border:1px solid black; background-color:#F08080 }
span{color:yellow; font-weight: bold; font-family: sans-serif;font-size: large;}
</style>
</head>
<body>
<div style="text-align:center">
<h1>EMPLOYEE SEARCH LIST SCREEN</h1>
</div>
<hr>
<table>
<tr>
<th bgcolor=#ffd700>ORGANIZATION</th>
<th bgcolor=#ffd700>PERIOD</th>
<th bgcolor=#ffd700>LOCATION</th>
<th bgcolor=#F08080>POST</th>
</tr>
<%-- <h2>${name.first_name} ${name.last_name} (#${name.emp_id})</h2>
 --%><c:forEach var="employee" items="${employees}">
<tr>
<td><h4>${employee.organization_name} </h4></td>
<td><p>${employee.from_date} </p></td>
<td>${employee.location}</td>
<td>${employee.post}</td>
</tr>
</c:forEach>
</table>

<br>
<br>
 
<h3><a href="${contextRoot}/">BACK TO LIST</a></h3>
 
 
</body>
</html>

