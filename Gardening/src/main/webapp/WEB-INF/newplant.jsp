<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Plant</title>
</head>
<body>
<h1> NEW PLANT</h1>
New Plant Added: ${plant}

<form action="updateplantform.do" method="GET">
<button name="update" type="submit" value="${plant.id}">Update Plant</button>
</form>
<form action="remove.do" method="GET">
<button name="remove" type="submit" value="${plant.id}">Remove Plant</button>
</form>

</body>
</html>