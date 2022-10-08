<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
	<title>PAPAJOHNS</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<h1>
	Hello world!  
</h1>
<div class="mt-5">
	<P>  The time on the server is ${serverTime}. </P>
</div>
</body>
</html>
