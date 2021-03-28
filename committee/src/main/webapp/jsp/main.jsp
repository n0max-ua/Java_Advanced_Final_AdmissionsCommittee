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

<title>Main</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="d-flex" style="padding-left: 16%; background-color: gray;">
		<div class="container" style="width: 20%">
			<img src="data:image/jpg;base64,${user.image}" alt="image"
				style="width: 100%; border-radius: 50%;">
		</div>

		<div class="d-flex flex-column justify-content-around"
			style="width: 71%">
			<h3>Name: ${user.firstName}</h3>
			<h3>Last name: ${user.lastName}</h3>
			<h3>Email: ${user.email}</h3>
		</div>

	</div>

</body>
</html>