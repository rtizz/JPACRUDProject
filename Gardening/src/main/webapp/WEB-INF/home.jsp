<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gardening Crops</title>
</head>
<body>
<h1>Garden Plants</h1>
<c:choose>
	<c:when test="${empty plants}">NO PLANTS FOUND</c:when>
	<c:otherwise>
	<c:forEach var="p" items="${plants}">
	<!-- DISPLAY IN NICE FORMAT (TABLE) -->
	<ul>
	<li>${p.name}</li>
	<li><img src="${p.imageUrl}"></li>
	</ul>
	</c:forEach>
</c:otherwise>
</c:choose>
</body>
</html>