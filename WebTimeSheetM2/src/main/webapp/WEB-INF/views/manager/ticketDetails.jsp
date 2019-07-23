<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dettaglio ticket-TS</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/delete2.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	</head>
	<body>
		<div class="jumbotron jumbotron-fluid">
  <div class="container">
		<form:form method="POST"
			action=""
			modelAttribute="mticket" id="_form">
			<form:hidden path="idTicket" />
			<input type="hidden"  id="_method" name="_method" />
			<h2>Dettaglio ticket</h2>
			<table style=" text-align: left;" border=1>
				<tr>
					<td>Cliente</td>
					<td><label>${mticket.cliente}</label></td>
				</tr>
				<tr>
					<td>Commessa</td>
					<td><label>${mticket.commessa}</label></td>
				</tr>
				<tr>
					<td>Sorgente</td>
					<td><label>${mticket.sorgenteTicket}</label></td>
				</tr>
				<tr>
					<td>Stato Ticket</td>
					<td><label>${mticket.statoTicket}</label></td>
				</tr>
				<tr>
					<td>Priorita</td>
					<td><label>${mticket.priorita}</label></td>
				</tr>
				<tr>
					<td>Tipologia</td>
					<td><label>${mticket.tipologia}</label></td>
				</tr>
				<tr>
					<td>Data Inserimento</td>
					<td><label>${mticket.dataInserimento}</label></td>
				</tr>
				<tr>
					<td>Data Rilascio</td>
					<td><label>${mticket.dataRilascio}</label></td>
				</tr>
				<tr>
					<td>Applicazione Riferimento</td>
					<td><label>${mticket.applicazioneRiferimento}</label></td>
				</tr>
				<tr>
					<td>Stima</td>
					<td><label>${mticket.stima}</label></td>
				</tr>
				<tr>
					<td>Descrizione</td>
					<td><label>${mticket.descrizione}</label></td>
				</tr>
				<tr>
					<td>Totale Ore Lavorate</td>
					<td><label>${mticket.totOreLavorate}</label></td>
				</tr>
				<tr>
					<td>Note</td>
					<td><label>${mticket.note}</label></td>
				</tr>	
			</table>
		</form:form>
		

		<a href="${pageContext.request.contextPath }/admin/deleteT/${mticket.idTicket}" class="delete">
			<button class="button" style=" width: 120px; margin-left: 16px;">Cancella</button>
		</a>
		<input type="hidden" value="${mticket.commessa}">
		<a href="${pageContext.request.contextPath }/admin/listT">
			<button class="button" type="button" style=" width: 120px; margin-left: 16px;">back</button>
		</a>
		</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>