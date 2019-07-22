<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form method="POST"
		action="${pageContext.request.contextPath }/dipen/${idDipendente}"
		modelAttribute="dipendente">
		<form:hidden path="idDipendente" />
		<input type="hidden" name="_method" value="PUT" />
		<table>
			<tr>
				<td>NOME DIPENDENTE</td>
				<td><form:input type="readonly" path="nomeDipendente" /></td>
			</tr>
			<tr>
				<td>ORE LAVORATE</td>
				<td><form:input type="text" path="oreLavorate" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="editsave"></td>
			</tr>
		</table>
	</form:form>



</body>
</html>