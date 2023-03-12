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
${keyword }
<c:forEach var="k" items="${keyword}">
	<table>
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
	<td>${k.imageUrl}</td>
	</tr>
	</table>
</c:forEach>
<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>