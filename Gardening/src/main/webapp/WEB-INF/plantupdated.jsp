<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapheader.jsp" />
<meta charset="UTF-8">
<title>Update Verification</title>
<link rel="stylesheet" href="./format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
<div class="container-fluid">
<h1 align="center"> Update Successful</h1>
<h2 align="center">Crop Updated:</h2>
	<table>
		<thead>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Image</td>
				<td>Scientific Name</td>
				<td>Known Pests</td>
				<td>Planted From Seed</td>
				<td>Germination Period</td>
				<td>Date Planted</td>
				<td>Date Harvested</td>
				<td>Yield</td>
				<td>Notes</td>
			</tr>
		</thead>
		<tr>
			<td>${updatedplant.id}</td>
			<td>${updatedplant.name}</td>
			<td><img src="${updatedplant.imageUrl}" width="35" height="60"></td>
			<td>${updatedplant.scientificName}</td>
			<td>${updatedplant.pests}</td>
			<td>${updatedplant.fromSeed}</td>
			<td>${updatedplant.germPeriod}</td>
			<td>${updatedplant.planted}</td>
			<td>${updatedplant.harvested}</td>
			<td>${updatedplant.yield}</td>
			<td>${updatedplant.notes}</td>
		</tr>
	</table>
			<form action="croplist.do" >
			<button name="update" type="submit" style="height:45px;width:200px"
				class="btn btn-primary">Return to List</button>
		</form><br>
		</div>
<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>