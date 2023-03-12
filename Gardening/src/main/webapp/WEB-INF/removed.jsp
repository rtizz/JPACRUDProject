<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapheader.jsp" />
<meta charset="UTF-8">
<title>Film Removed</title>
<link rel="stylesheet" href="../format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
Plant Successfully Removed
<table>
	<thead>
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Scientific Name</td>
			<td>Known Pests</td>
			<td>Germination Period</td>
			<td>Date Planted</td>
			<td>Date Harvested</td>
			<td>Yield</td>
			<td>Notes</td>
		</tr>
	</thead>
	<tbody>
	<tr id="row">
		<td>${plantremoved.id}</td>
		<td>${plantremoved.name}</td>
		<td>${plantremoved.scientificName}</td>
		<td>${plantremoved.pests}</td>
		<td>${plantremoved.germPeriod}</td>
		<td>${plantremoved.planted}</td>
		<td>${plantremoved.harvested}</td>
		<td>${plantremoved.yield}</td>
		<td>${plantremoved.notes}</td>
	</tr>
	</tbody>
</table>
<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>