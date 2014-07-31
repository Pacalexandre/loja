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
			<c:import url="/WEB-INF/jsp/menu.jsp" />
		
			<div class="jumbotron">
				<h1>${mensagem}</h1>
				<p>This is a template for a simple marketing or informational websites.</p>
			</div>
		</div>
    
    	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
	</body>
</html>