<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Create account</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>
	<input class="form-control" type="text" name="description"
		placeholder="Description" required>
	<div class="container">

		<form:form method="POST" modelAttribute="userForm" class="form-signin">
			<h2 class="form-heading">Create account</h2>

			<input class="form-control" type="text" name="firstName"
				placeholder="First name" required />
			<input class="form-control" type="text" name="lastName"
				placeholder="Last name" required />
			<input class="form-control" type="text" name="email"
				placeholder="Email" required />
			<input class="form-control" type="password" name="password"
				placeholder="Password" required />
			<input class="form-control" type="password" name="passwordConfirm"
				placeholder="Confirm password" required />

			<button class="btn btn-lg btn-primary btn-block" type="submit">Create</button>
		</form:form>

	</div>

</body>
</html>