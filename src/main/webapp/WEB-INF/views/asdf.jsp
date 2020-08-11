<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShowUpdates</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
</head>
<body class="img-fluid"
	background=url(woman-sitting-on-luggage-3943882.jpg);>
	<nav class="navbar navbar-expand-md"> <s:form action=""
		method="post" modelAttribute="stateData">
		<table class="table table-condensed">
			<tr>
				<td><button class="btn btn-primary  btn-block" type="button"
						onclick="window.location.href='#'">Home</button></td>
				<td><div class="dropdown">
						<button class="btn btn-primary dropdown-toggle btn-block"
							type="button" data-toggle="dropdown">States/UTs</button>
						<div
							class="dropdown-menu btn-block default-menu main-menu sm-main-menu animation"
							style="overflow: scroll; height: 250px;">
							<a class="dropdown-item  btn-block" href="/state/1">Andman Nicobar Island</a>
							<a class="dropdown-item   btn-block" href="/state/2">Andhra
								Pradesh</a> <a class="dropdown-item  btn-block" href="/state/3">Arunachal
								Pardesh</a> <a class="dropdown-item  btn-block" href="/state?st=as">Assam</a>
							<a class="dropdown-item   btn-block" href="/state?st=br">Bihar</a>
							<a class="dropdown-item  btn-block" href="/state?st=cg">Chandigarh</a>
							<a class="dropdown-item  btn-block" href="#">Chattisgarh</a> <a
								class="dropdown-item  btn-block" href="#">Dadra & Nagar
								Haveli and Daman & Diu</a> <a class="dropdown-item  btn-block"
								href="#">Delhi</a> <a class="dropdown-item  btn-block" href="#">Goa</a>
							<a class="dropdown-item   btn-block" href="#">Gujrat</a> <a
								class="dropdown-item  btn-block" href="#">Haryana</a> <a
								class="dropdown-item  btn-block" href="#">Himachal Pardesh</a> <a
								class="dropdown-item   btn-block" href="#">Jammu and Kashmir</a>
							<a class="dropdown-item  btn-block" href="#">Jharkhand</a> <a
								class="dropdown-item  btn-block" href="#">Karnataka</a> <a
								class="dropdown-item   btn-block" href="#">Kerala</a> <a
								class="dropdown-item  btn-block" href="#">Ladhak</a> <a
								class="dropdown-item  btn-block" href="#">Lakshdweep</a> <a
								class="dropdown-item  btn-block" href="#">Madhya Pardesh</a> <a
								class="dropdown-item  btn-block" href="#">Maharastra</a> <a
								class="dropdown-item   btn-block" href="#">Manipur</a> <a
								class="dropdown-item  btn-block" href="#">Meghalya</a> <a
								class="dropdown-item  btn-block" href="#">Mizoram</a> <a
								class="dropdown-item   btn-block" href="#">Nagaland</a> <a
								class="dropdown-item  btn-block" href="#">Odisha</a> <a
								class="dropdown-item  btn-block" href="#">Puducherry</a> <a
								class="dropdown-item   btn-block" href="#">Punjab</a> <a
								class="dropdown-item  btn-block" href="#">Rajasthan</a> <a
								class="dropdown-item   btn-block" href="#">Sikkim</a> <a
								class="dropdown-item  btn-block" href="#">Tamilnadu</a> <a
								class="dropdown-item  btn-block" href="#">Telangana</a> <a
								class="dropdown-item  btn-block" href="#">Tripura</a> <a
								class="dropdown-item  btn-block" href="#">Uttar Pardesh</a> <a
								class="dropdown-item  btn-block" href="#">Uttarakhand</a> <a
								class="dropdown-item  btn-block" href="#">West Bengal</a>


						</div>
					</div></td>
				<td><button class="btn btn-primary  btn-block" type="button"
						onclick="window.location.href='#'">About Covid19</button></td>
			</tr>
		</table>
	</s:form> </nav>
	<img class="img-thumbnail" src="woman-sitting-on-luggage-3943882.jpg"
		width="90%" height="90%">
</body>
</html>