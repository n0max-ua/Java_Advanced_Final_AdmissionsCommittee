<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title><spring:message code='l.login' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body>

	<div class="container" style="margin-top: 15%;">

		<form method="POST" action="${contextPath}/login" class="form-signin"
			style="border-radius: 5%; padding: 1%; box-shadow: 0px 0px 20px 8px;">

			<h2 class="form-heading">
				<spring:message code='l.welcome' />
			</h2>

			<div class="form-group ${error != null ? 'has-error' : ''}">

				<span>${message}</span> <input name="email" type="text"
					class="form-control" placeholder="<spring:message code='email'/>" />
				<input name="password" type="password" class="form-control"
					placeholder="<spring:message code='password'/>" /> <span>${error}</span>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

				<button class="btn btn-lg btn-primary btn-block" type="submit">
					<spring:message code='l.login' />
				</button>
				<br>
				<h4 class="text-center">
					<a href="${contextPath}/registration"><spring:message
							code='l.create' /></a>
				</h4>
				
				<div class="d-flex justify-content-center" style="width: 100%">
					<fieldset>
						<label><spring:message code='l.choose_language' /></label> <select
							id="locales">
							<option value="en"><spring:message code='l.english' /></option>
							<option value="uk"><spring:message code='l.ukrainian' /></option>
						</select>
					</fieldset>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			var selItem = localStorage.getItem("locales");
			$('#locales').val(selItem ? selItem : 'en');
			$("#locales").change(function() {
				var selectedOption = $('#locales').val();
				if (selectedOption) {
					window.location.replace('?lang=' + selectedOption);
					localStorage.setItem("locales", selectedOption);
				}
			});
		});
	</script>
</body>
</html>