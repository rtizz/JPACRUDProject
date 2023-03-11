<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${update}
<form action="plantupdated.do" method="POST">
  ID <input type="number" name="id" value="${update.id}" readonly/>
  Name <input type="text" name="name" value="${update.name}"/>
  Scientific Name: <input type="text" name="scientificName" value="${update.scientificName}"/>
  type: <input type="text" name="type" value="${update.type}"/> 
  Known Pests: <input type="text" name="pests" value="${update.pests}"/>
  Planted From Seed: <input type="checkbox" name="fromSeed" value="${update.fromSeed}"/>
  Germination period: <input type="number" name="germPeriod" value="${update.germPeriod}"/>
  Date Planted: <input type="date" name="plantedAlt" value="${update.planted}"/>
  Date Harvested: <input type="date" name="harvestedAlt" value="${update.harvested}"/> 
  lbs Yield: <input type="number" name="yield" value="${update.yield}"/>
  Notes: <input type="text" name="notes" value="${update.notes}"/>
  URL: <input type="text" name="imageUrl" value="${update.imageUrl}"/>
  <input type="submit" value="Update Plant" />
  </form>
</body>
</html>