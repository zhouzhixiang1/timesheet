<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
p {
	color: red;
}
</style>
</head>
<body>

	<div class="container">
		<h1>Login</h1>
		<form class="needs-validation" name="f"
			action="${pageContext.request.contextPath}/loginS" method="POST"
			novalidate>
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<label for="validationTooltip01">Username</label> <input
						type="text" class="form-control" id="validationTooltip01"
						name="username" required>
					<div class="invalid-tooltip">Inserisci username</div>
				</div>
				</div>
				<div class="form-row">
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Password</label> <input
						type="password" class="form-control" id="validationTooltip02"
						name="password" required>
					<div class="invalid-tooltip">Inserisci password</div>
				</div>
			</div>
			<p>${msg}</p>
			<button class="btn btn-primary" type="submit">Login</button>
		</form>
	</div>

	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>