<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add new contact</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Add new contact information</h2>
		<form method="post" action="add-contact" class="form-inline">
			<div class="form-group">
				<label for="poductname">Name:</label> <input type="name"
					class="form-control" id="name" name="name" placeholder="Enter name">
			</div>
			<div class="form-group">
				<label for="address">Address:</label> <input type="address"
					class="form-control" id="address" name="address"
					placeholder="Enter address">
			</div>
			<div class="form-group">
				<label for="phoneno">Phone no:</label> <input type="phoneno"
					class="form-control" id="phoneno" name="phoneno"
					placeholder="Enter phone number">
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>


		<table class="table table-striped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Address</th>
					<th>Phone no</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				
				<c:forEach items="${contactList}" var="val">
					<tr>
						<td><c:out value ="${val.value.name}" /></td>
						<td><c:out value ="${val.value.address}" /></td>
						<td><c:out value ="${val.value.phoneno}" /></td>
						<td><a href="/update-contact?id=${val.key}" class="btn btn-info"
							role="button">Update</a></td>
						<td><a href="delete-contact?id=${val.key}" class="btn btn-info"
							role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>