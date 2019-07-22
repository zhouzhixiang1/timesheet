<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous">
		<link rel="stylesheet" href="css/stile.css">
		<title>Home</title>
	</head>
	<body>
		<jsp:include page="scripts/navbar.html"></jsp:include>
		<a href="loginManager.jsp">
			<button class="col-xs-6">
				<img class="nav_img" 
				style="height: 100%; width: 100%" />
			Manager</button>
		</a>
		
		<a href="loginDip.jsp">
			<button class="col-xs-6">
				<img class="nav_img" 
				style="height: 100%; width: 100%" />
			Dipendenti</button>
		</a>
	
	</body>
</html>