<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<form:form method="POST" action="addDT" modelAttribute="dt">
		<h2>aggiungi ore</h2>
		<table>
			<sec:authentication property="principal.username" scope="session"
				var="username"></sec:authentication>
			<form:hidden path="Users.username" value="${username}" />
			<tr>
				<td>Commessa</td>
				<td><form:select path="idTicket.idTicket" items="${tickets}"
						itemLabel="Commessa" itemValue="idTicket">
					</form:select></td>
			</tr>
			<tr>
				<td>Ore Lavorate</td>
				<td><form:input type="number" step="any" max="8.00" min="1.00" path="oreLavorate"/></td>
			</tr>
			<tr>
				<td>Data</td>
				<td><form:input type="date" path="data" /></td>
			</tr>
			<tr>
				<td class="bold">Descrizione</td>
				<td><form:textarea path="descrizione" /></td>
			</tr>

			<tr>
				<td><button class="button" type="submit">Aggiungi</button></td>
				<td><a href="${pageContext.request.contextPath}/user/listDT">
						<button class="button" type="button">Annulla</button>
				</a></td>
			</tr>
		</table>
	</form:form>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>