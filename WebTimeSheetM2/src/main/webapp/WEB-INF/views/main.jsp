<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TimeSheet</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
body{background-image: url("../images/manager2.jpg");
		background-size: cover;}
		h2 {
    margin-left: 100px;
}
h5 {
    margin-left: 250px;
    color: cornsilk;
}
a {
    margin-left: 100px;
}
</style>
</head>
<body>
 <sec:authentication property="principal.username" scope="session" var="username"></sec:authentication> 
<h2>Welcome,${username}</h2>
<a href="${pageContext.request.contextPath}/logout">logout</a>
<br>

<sec:authorize access="hasRole('ROLE_USER')"><td>
<h5>Access Employee</h5>
<a href ="${pageContext.request.contextPath}/user/listDT"><button type="button" class="btn btn-lg btn-danger">MY TIMESHEET</button></a></td>
<br>
<br>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<h5>Access Manager</h5>
<td><a href ="${pageContext.request.contextPath}/admin/listDTM"><button type="button"class="btn btn-lg btn-success">ALL TIMESHEET</button></a></td>
<td><a href ="${pageContext.request.contextPath}/admin/listT"><button type="button"class="btn btn-lg btn-warning">LIST TICKET</button></a></td>
 </sec:authorize>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>