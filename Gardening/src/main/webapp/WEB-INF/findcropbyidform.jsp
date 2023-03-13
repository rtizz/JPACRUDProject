<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapheader.jsp" />
<meta charset="UTF-8">
<title>Find By ID</title>
<link rel="stylesheet" href="./format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
<h2>Find Crop By Id</h2>
<p>Enter ID of crop to display all details</p>
<form action="findbyid.do" method="GET">
<input type="number" name="plantid" >
<input type="submit" value="Search" />
</form>
<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>