<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

<link rel="stylesheet prefetch" href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>

		<h3 class="hello">
			Welcome ${pageContext.request.userPrincipal.name} | <a
				onclick="document.forms['logoutForm'].submit()">Logout</a>
		</h3>
	</c:if>

	<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 15%; top: 0;">
		<h3 class="w3-bar-item">Menu</h3>
		<a href="/main" class="w3-bar-item w3-button">Home</a>
		<a href="/faculties" class="w3-bar-item w3-button">Faculties</a>
		
	</div>

</body>
</html>