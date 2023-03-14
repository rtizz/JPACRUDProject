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
<div class="container-fluid">
	<div class="table">
		<h1>Search Results</h1>
		<c:choose>
			<c:when test="${empty plantid}">NO PLANTS FOUND</c:when>
			<c:otherwise>
				<table>
					<thead>
						<tr class="dark">
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
						<td>${plantid.id}</td>
						<td>${plantid.name}</td>
						<td><img src="${plantid.imageUrl}" width="75" height="100"></td>
						<td>${plantid.scientificName}</td>
						<td>${plantid.pests}</td>
						<td>${plantid.fromSeed}</td>
						<td>${plantid.germPeriod}</td>
						<td>${plantid.planted}</td>
						<td>${plantid.harvested}</td>
						<td>${plantid.yield}</td>
						<td>${plantid.notes}</td>
					</tr>
					</tbody>
					<tfoot>
						<tr>
							<td rowspan=3>
								<form action="updateplantform.do" method="GET">
									<button name="update" type="submit" value="${p.id}"
										class="btn btn-primary">Update Plant</button>
								</form>
							</td>
							<td rowspan=3>
								<form action="remove.do" method="GET">
									<button name="remove" type="submit" value="${p.id}"
										class="btn btn-warning">Remove Plant</button>
								</form>
							</td>
					</tfoot>
				</table>
			</c:otherwise>
		</c:choose>
		</div>
		</div>
		<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>