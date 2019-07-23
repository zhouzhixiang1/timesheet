<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>update hours</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
	<form:form method="POST" action="${pageContext.request.contextPath }/user/updateDT/${dt.idDipendenteTicket}"
		modelAttribute="dt">
		<form:hidden path="Users.username" />
		<input type="hidden" name="_method" value="PUT" />
		<h3>modifica ore</h3>
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
	</div>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>