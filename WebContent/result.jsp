<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>result</title>
</head>
<body>
<c:if test="${fn.length(list) ne 0 }">
<table border="1">
<tr>
<th>Name </th>
<th> ID</th>
<th> Salary</th>
<c:forEach var="obj" items="$(list)">
<tr>
<td>${obj.name} </td>
<td>${obj.id }</td>
<td>${obj.salary}</td>
</tr>
</c:forEach>
  </table>
</c:if>
</body>
</html>