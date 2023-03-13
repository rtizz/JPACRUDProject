<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapheader.jsp" />
<meta charset="UTF-8">
<title>Update Crop</title>
<link rel="stylesheet" href="../format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
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
			<td>${update.id}</td>
			<td>${update.name}</td>
			<td><img src="${update.imageUrl}" width="35" height="60"></td>
			<td>${update.scientificName}</td>
			<td>${update.pests}</td>
			<td>${update.fromSeed}</td>
			<td>${update.germPeriod}</td>
			<td>${update.planted}</td>
			<td>${update.harvested}</td>
			<td>${update.yield}</td>
			<td>${update.notes}</td>
		</tr>
	</table>
	<form action="plantupdated.do" method="POST">
		ID <input type="number" name="id" value="${update.id}" readonly /><br>
		Name <input type="text" name="name" value="${update.name}" /><br>
		Scientific Name: <input type="text" name="scientificName"
			value="${update.scientificName}" /><br> <label>PlantType:</label>
		<select name="type">
			<option value=Fruit>Fruit</option>
			<option value=Vegitable>Vegitable</option>
			<option value=Herb/Spice>Herb/Spice</option>
			<option value=Floral>Floral</option>
		</select> <br> Known Pests: <input type="text" name="pests"
			value="${update.pests}" /><br> Planted From Seed: <input
			type="checkbox" name="fromSeed" value="${update.fromSeed}" /><br>
		Germination period: <input type="number" name="germPeriod" min="1"
			max="50" /><br> Date Planted: <input type="date"
			name="plantedAlt" required value="${update.planted}" /><br> Date
		Harvested: <input type="date" name="harvestedAlt" required
			value="${update.harvested}" /> <br> Lbs Yield: <input
			type="number" name="yield" step="0.01" min="0" max="1000"
			value="${update.yield}" /><br> <label for="notes">Notes:</label><br>
		<textarea id="description" name="notes" rows="4" cols="50">${update.notes}</textarea>
		<br> URL: <input type="text" name="imageUrl"
			value="${update.imageUrl}" /><br>
		<button name="update" type="submit" class="btn btn-primary">Update</button>
	</form>
	<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>

