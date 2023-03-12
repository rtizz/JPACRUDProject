<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapheader.jsp" />
<meta charset="UTF-8">
<title>New Plant</title>
    <link rel="stylesheet" href="../format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
<div class = "table">
<h1> NEW PLANT ADDED</h1>
	<table >
	<tr>
	<td>${plant.id}</td>
	<td>${plant.name}</td>
	<td><img src="${plant.imageUrl}"style ="height:auto; width:auto" border = 1px></td>
	<td>${plant.scientificName}</td>
	<td>${plant.pests}</td>
	<td>${plant.fromSeed}</td>
	<td>${plant.germPeriod}</td>
	<td>${plant.planted}</td>
	<td>${plant.harvested}</td>
	<td>${plant.yield}</td>
	<td>${plant.notes}</td>
	</tr>
	</table>
</div>
<table>
<tr>
<td>
<form action="updateplantform.do" method="GET">
<button name="update" type="submit" value="${plant.id}">Update Plant</button>
</form>
</td>
<td>
<form action="remove.do" method="GET">
<button name="remove" type="submit" value="${plant.id}">Remove Plant</button>
</form>
</td>
</tr>
</table>
<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>