<%@ page  import = "java.io.*,java.util.*, java.sql.*, javax.servlet.http.*, javax.servlet.*"
language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix ="sql" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Retrieving Data</title>
</head>
<body>
<sql:setDataSource var="shot" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/Test"
user="root" password="password"
/>
<sql:query dataSource="${shot}" var="result" >

select name,id,course from student;
</sql:query>
<table border="1" >
<tr>
<th> ID</th>
<th> Name</th>
<th> Course</th>
</tr>
<c:forEach var="row" items="${result.rows }">
<tr>
<td><c:out value="${row.id }"/></td>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.course}"/></td>
</tr>
 </c:forEach>
</table>

</body>
</html>