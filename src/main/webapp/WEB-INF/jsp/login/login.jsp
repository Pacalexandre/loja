<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>LOJA</title>
		
		<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
		<link href="<c:url value="/resources/css/loja.css"/>" rel="stylesheet" type="text/css"/>
	</head>

	<body>
		<div class="container">
			<c:import url="/WEB-INF/jsp/mensagens.jsp" />
	
			<form class="form-signin" action="<c:url value="/login"/>" method="post">
				<h2 class="form-signin-heading">Login</h2>
				
				<input type="text" name="login" class="form-control" placeholder="Login" />
				<input type="password" name="senha" class="form-control" placeholder="Senha" />
				
				<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
			</form>
		</div>
		
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
	</body>
</html>
