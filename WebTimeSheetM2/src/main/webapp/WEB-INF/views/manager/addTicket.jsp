<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
	<meta charset="ISO-8859-1">
		<title>Add Ticket-TS</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		
	</head>
	<body>
			<form:form method="POST" action="${pageContext.request.contextPath }/admin/addTicket" modelAttribute="ticket">
				<table style=" text-align: left;">
				<tr>
				<td><h1>Aggiungi ticket</h1></td>
				</tr>
				<tr>
					<td>
						<form:hidden path="totOreLavorate" value="0" />
					</td>
				</tr>
				<tr>
					<td class="bold">Cliente</td>
					<td>
						<form:input type="text" path="cliente"/>
					</td>
				</tr>
				<tr>
					<td class="bold">Sorgente Ticket</td>
					<td>
						<form:input type="text" path="sorgenteTicket" />
					</td>
				</tr>
				<tr>
					<td class="bold">Stato Ticket</td>
					<td>
						<form:select path="statoTicket">
				  			<option value="aperto">aperto</option>
				 			<option value="chiuso">chiuso</option>
				  			<option value="in lavorazione">in lavorazione</option>
				  			<option value="Rilasciato">Rilasciato</option>
				  			<option value="in attesa di riscontro">in attesa di riscontro</option>
		  				</form:select>
	  				</td>
				</tr>
				<tr>
					<td class="bold">Priorita</td>
					<td>
						<form:select path="priorita">
				  			<option value="alto">alto</option>
				 			<option value="medio">medio</option>
				  			<option value="basso">basso</option>
		  				</form:select>
		  			</td>
				</tr>
				<tr>
					<td class="bold">Tipologia</td>
					<td>
						<form:select path="tipologia">
	  						<option value="correttiva">correttiva</option>
	 						<option value="evolutiva">evolutiva</option>
	  						<option value="nuovo sviluppo">nuovo sviluppo</option>
	  					</form:select>
	  				</td>
				</tr>
				<tr>
					<td class="bold">Data Rilascio</td>
					<td>
						<form:input type="date" path="dataRilascio" />
					</td>
				</tr>
				<tr>
					<td class="bold">Stima</td>
					<td>
						<form:input type="number" path="stima" />
					</td>
				</tr>
				<tr>
					<td class="bold">Applicazione Riferimento</td>
					<td>
						<form:input type="text" path="applicazioneRiferimento" />
					</td>
				</tr>
				<tr>
					<td class="bold">Descrizione</td>
					<td>
						<form:textarea path="descrizione" />
					</td>
				</tr>
				<!-- <tr>
					<td class="bold">Totale Ore Lavorate</td>
					<td>
						<form:input type="number" path="totOreLavorate" />
					</td>
				</tr> -->
				<tr>
					<td class="bold">Commessa</td>
					<td>
						<form:input type="text" path="commessa" />
					</td>
				</tr>
				<tr>
					<td class="bold">Note</td>
					<td>
						<form:textarea path="note" />
					</td>
				</tr>
				<tr>
				<td><button class="button" type="submit">Aggiungi</button>
				<a href="${pageContext.request.contextPath}/admin/listT">
					<button class="button" type="button">annulla</button>
				</a></td>
				</tr>
			</table>
			</form:form>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>