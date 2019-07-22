<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>update hours</title>
</head>
<body>

	<form:form method="POST" action="${pageContext.request.contextPath }/user/updateDT/${dt.idDipendenteTicket}"
		modelAttribute="dt">
		<form:hidden path="Users.username" />
		<input type="hidden" name="_method" value="PUT" />
		<h3>update Hours</h3>
		<table>
			<tr>
				<td>commessa</td>
				<td><form:select path="idTicket.idTicket" items="${tickets}"
						itemLabel="Commessa" itemValue="idTicket">
					</form:select></td>
			</tr>
			<tr>
				<td>ore lavorate</td>
				<td><form:input path="oreLavorate" type="number" step="any" max="8.00" min="1.00"/></td>
			</tr>
			<tr>
				<td>data</td>
				<td><form:input path="data" type="date"/></td>
			</tr>
			<tr>
				<td>descrizione</td>
				<td><form:textarea path="descrizione"/></td>
			</tr>
			<tr>
				<td>
					<button class="button" type="submit" >modifica</button> <a
					href="${pageContext.request.contextPath}">
						<button type="button">annulla</button>
				</a>
				</td>
			</tr>
		</table>

	</form:form>
</body>
</html>