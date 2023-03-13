<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapheader.jsp" />
<title>Active Crops</title>
<link rel="stylesheet" href="../format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
	<h2>Active Crops Planted</h2>
	<table>
	
	</table>
	<c:choose>
		<c:when test="${empty plantlist}">NO PLANTS FOUND</c:when>
		<c:otherwise>
			<c:forEach var="p" items="${plantlist}">
				<!-- DISPLAY IN NICE FORMAT (TABLE) -->
				<table>
					<thead >
						<tr id=custom>
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
					<tbody></tbody>
					<tr>
						<td>${p.id}</td>
						<td>${p.name}</td>
						<td><img src="${p.imageUrl}" width="75" height="100"></td>
						<td>${p.scientificName}</td>
						<td>${p.pests}</td>
						<td>${p.fromSeed}</td>
						<td>${p.germPeriod}</td>
						<td>${p.planted}</td>
						<td>${p.harvested}</td>
						<td>${p.yield}</td>
						<td>${p.notes}</td>
					</tr>
					</tbody>
					<tfoot>
					<tr>
					<td rowspan=3>
							<form action="updateplantform.do" method="GET">
								<button name="update" type="submit" value="${p.id}" class="btn btn-primary">Update
									Crop</button>
							</form>
					</td>
					<td rowspan=3>
							<form action="remove.do" method="GET">
								<button name="remove" type="submit" value="${p.id}" class="btn btn-warning">Remove
									Crop</button>
							</form>
					</td>
					</tfoot>
					</table>
			</c:forEach>
		</c:otherwise>
	</c:choose>
	<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>