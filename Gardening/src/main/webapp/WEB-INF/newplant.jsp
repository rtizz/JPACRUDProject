<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapheader.jsp" />
<meta charset="UTF-8">
<title>New Plant</title>
<link rel="stylesheet" href="./format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
<h1 align="center"> New Crop Successfully Added</h1>
	<div class="table">
		<table>
			<tr>
				<td>${plant.id}</td>
				<td>${plant.name}</td>
				<td><img src="${plant.imageUrl}" width="75" height="100"></td>
				<td>${plant.scientificName}</td>
				<td>${plant.pests}</td>
				<td>${plant.fromSeed}</td>
				<td>${plant.germPeriod}</td>
				<td>${plant.planted}</td>
				<td>${plant.harvested}</td>
				<td>${plant.yield}</td>
				<td>${plant.notes}</td>
			</tr>
			<tr>
			<td >
				<form action="updateplantform.do" method="GET">
					<button name="update" type="submit" value="${plant.id}"
						class="btn btn-primary">Update Crop</button>
				</form>
			</td>
			<td>
				<form action="remove.do" method="GET">
					<button name="remove" type="submit" value="${plant.id}"
						class="btn btn-warning">Remove Crop</button>
				</form>
			</td>
			<td>
			<form action="croplist.do" >
			<button name="update" type="submit"
				class="btn btn-primary">Return to List</button>
		</form>
			</td>
		</tr>
		</table>
	</div>
	<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>