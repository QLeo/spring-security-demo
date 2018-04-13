<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!-- Custom styles for this template -->
  <link href="/resources/css/style.css" rel="stylesheet">
  <title>Welcome Bom TF Demo</title>
</head>
<body>
<c:url var="loginUrl" value="/login" />
<form class="form-signin" action="${loginUrl}" method="POST">
  <h1 class="h3 mb-3 font-weight-normal">Spring Bom Demo</h1>
  <c:if test="${param.error != null}">
    <div class="alert alert-danger">
      <p>계정정보가 정확하지 않습니다</p>
    </div>
  </c:if>
  <c:if test="${param.logout != null}">
    <div class="alert alert-success">
      <p>정상적으로 로그아웃 하였습니다</p>
    </div>
  </c:if>
  <label for="inputId" class="sr-only">Id</label>
  <input type="text" id="inputId" class="form-control" name="id" placeholder="Id" required autofocus>
  <label for="inputPassword" class="sr-only">Password</label>
  <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
  <%--<input type="hidden" name="${_csrf.parameterName}" 	value="${_csrf.token}" />--%>
  <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  <p class="mt-5 mb-3 text-muted">&copy; CR development team 2018</p>
</form>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
