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
<a href="../TestForm.html">Create Plant</a>
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

<h1> NEW PLANT</h1>
<form action="newplant.do" method="POST">
  Name <input type="text" name="name" />
  Scientific Name: <input type="text" name="scientificName" />
  type: <input type="text" name="type" />
  Known Pests: <input type="text" name="pests" />
  Planted From Seed: <input type="checkbox" name="fromSeed" />
  Germination period: <input type="number" name="germPeriod" />
  Date Planted: <input type="date" name="plantedAlt" />
  Date Harvested: <input type="date" name="harvestedAlt" /> 
  lbs Yield: <input type="number" name="yield" />
  Notes: <input type="text" name="notes" />
  URL: <input type="text" name="imageUrl" />
  <input type="submit" value="Create Plant" />
  </form>
</body>
</html>