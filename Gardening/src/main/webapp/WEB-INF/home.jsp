<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapheader.jsp" />
<title>Gardening Crops</title>
<link rel="stylesheet" href="./format.css">
</head>
<jsp:include page="nav.jsp" />
<body>
<h1 align="center">Garden Crop Database</h1>
<p align="center">This site is designed to help track garden plant growth patterns to use for future crops.</p>
<br>
<div id="hmenu" align="center">

		<form action="croplist.do" >
			<button name="update" type="submit" style="height:45px;width:200px"
				class="btn btn-primary">List Crops</button>
		</form><br>
		<form action="routetofind.do">
			<button name="remove" type="submit" style="height:45px;width:200px"
				class="btn btn-success">Find Crop</button>
		</form><br>
			<form action="addplant.do">
			<button name="update" type="submit" style="height:45px;width:200px"
				class="btn btn-primary">Add Crop</button>
		</form>
		</div>
<jsp:include page="bootstrapfooter.jsp" />
</body>
</html>