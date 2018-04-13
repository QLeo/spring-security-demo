<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Custom styles for this template -->
	<link href="/resources/css/style.css" rel="stylesheet">
	<title>Welcome Bom TF Demo</title>
</head>
<body>
<div style="margin-bottom: 100px">
	<h1 class="h3 mb-3 font-weight-normal">Dear "<strong>${user}</strong>", You are not authorized to access this page</h1>
	<div>
		<a href="<c:url value="/logout" />">Logout</a>
	</div>
</div>
</body>
</html>
