<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1> NEW PLANT</h1>
<form action="newplant.do" method="POST">
  Name <input type="text" name="name" /><br>
  Scientific Name: <input type="text" name="scientificName" /><br>
  <label>PlantType:</label> 
	<select name="langId">
		<option value=Fruit>Fruit</option>
		<option value=Vegitable>Vegitable</option>
		<option value=Herb/Spice>Herb/Spice</option>
		<option value=Floral>Floral</option>
	</select> <br> 
  Known Pests: <input type="text" name="pests" /><br>
  Planted From Seed: <input type="checkbox" name="fromSeed" /><br>
  Germination period: <input type="number" name="germPeriod" min="1" max="50"/><br>
  Date Planted: <input type="date" name="plantedAlt" required/><br>
  Date Harvested: <input type="date" name="harvestedAlt" required/> <br>
  Lbs Yield: <input type="number" name="yield" step="0.01" min="0" max="1000"/><br>
<label for="notes">Notes:</label><br>
<textarea id="description" name="notes" rows="4" cols="50"></textarea>
<br> 
  URL: <input type="text" name="imageUrl" /><br>
  <input type="submit" value="Add Plant" />
  </form>
  <jsp:include page="bootstrapfooter.jsp" />
</body>
</html>