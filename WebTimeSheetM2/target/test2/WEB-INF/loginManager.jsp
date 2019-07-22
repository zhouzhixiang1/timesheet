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
		<title>Insert title here</title>
	</head>
	<body>
		 <h1>ACCEDI</h1>
		<form action="/action_page.php">
			<p>email 
				<input type="text" name="fname" placeholder="email">
			</p><br>
			<p>password
				<input type="text" name="lname" placeholder="pw">
			</p><br>
			<input type="submit" value="accedi">
		</form>
		<a href="signupDip.jsp"></a>
	</body>
</html>