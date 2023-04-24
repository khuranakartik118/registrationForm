<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="th" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Employee Crud</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css" />
</head>

<body>


	<div class="container my-2">
		<h1>User List</h1>



		<table border="1"  class = "table table-striped table-responsive-md" id="userTable">
			<thead>
				<tr>
					<th>Reg No.</th>
					<th>Name</th>
					<th>Gender</th>
					<th>Date of Birth</th>
					<th>Email Address</th>
					<th>Contact Number</th>
					<th>State</th>
				</tr>
			</thead>
			<tbody>

				<th:forEach items="${listUser}" var="user">
					<tr>
						<td>${user.userId}</td>
						<td>${user.name}</td>
						<td>${user.gender}</td>
						<td>${user.dateOfBirth}</td>
						<td>${user.emailAddress}</td>
						<td>${user.contactNo}</td>
						<td>${user.state}</td>
					</tr>
				</th:forEach>
			</tbody>
		</table>
		<a class="btn btn-info" href="home">Return Home</a>
		
	</div>
</body>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script>
$('#userTable').dataTable(
		{"bSort":false,
		"searching": true}
		)

</script>
</html>