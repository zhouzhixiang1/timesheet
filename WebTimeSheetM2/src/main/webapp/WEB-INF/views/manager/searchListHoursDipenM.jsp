<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Dipendente-Ticket</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<c:if test="${not empty page}">
	<form action="${pageContext.request.contextPath}/admin/listDTSearchM" method="post">
	<table class="table table-hover table-sm table-dark">
	<thead class="thead-light">
		<tr>
			<td colspan="8">
			username:
			<input type="text" name="username">
			commessa:
			<input type="text" name="commessa">
			<input type="submit" value="search">
			</td>
		</tr>
		
		<tr>
			<th scope="col">Username</th>
			<th scope="col">Commessa</th>
			<th scope="col">Ore_lavorate</th>
			<th scope="col">Data</th>
			<th scope="col">Descrizione</th>

		</tr>
		</thead>
		<c:forEach items="${page}" var="p">
			<tr>
				<th scope="row">${p.users.username}</th>
				<th scope="row">${p.idTicket.commessa}</th>
				<th scope="row">${p.oreLavorate}</th>
				<th scope="row">${p.data}</th>
				<th scope="row">${p.descrizione}</th>
			</tr>
		</c:forEach>
	<tr><td>totale ore lavorate : ${totalHours}</td></tr>
	</table>
	</form>
	</c:if>
	<c:if test="${empty page }">nessun dato trovato,</c:if>
	<a href="${pageContext.request.contextPath}/admin/listDTM">
		<button class="button" type="button">torna alla tabella</button>
	</a>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>