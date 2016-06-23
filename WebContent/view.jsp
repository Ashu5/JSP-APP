<%@ page import="MVC.Model"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
</head>
<body>
<form action="Controller" method="get">
<input type="text" name="salary"  placeholder="enter salary" ><br>
<input type="submit" value="search">

<c:if test="${list.size() > 0 }">
<table border="1">
<tr>
<th>Name </th>
<th> ID</th>
<th> Salary</th>
<c:forEach var="obj" items="${list}">
<tr>
<td>${ obj.id}</td>
<td>${obj.name}</td>
<td>${ obj.salary}</td>
</tr>
</c:forEach>
  </table>
</c:if> 

</form>
</body>
</html>