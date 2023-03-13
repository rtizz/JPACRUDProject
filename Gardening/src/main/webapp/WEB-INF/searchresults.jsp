<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapheader.jsp" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
<h2>Search Results</h2>
<div class="tableFixHead">

	<table>
	<thead>
	<tr id=custom>
		<td>ID</td>
		<td>Name</td>
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
<c:forEach var="k" items="${keyword}">
	<tr>
	<td>${k.id}</td>
	<td>${k.name}</td>
	<td>${k.scientificName}</td>
	<td>${k.pests}</td>
	<td>${k.fromSeed}</td>
	<td>${k.germPeriod}</td>
	<td>${k.planted}</td>
	<td>${k.harvested}</td>
	<td>${k.yield}</td>
	<td>${k.notes}</td>

	</tr>
</c:forEach>
	</table>
	</div>
<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>