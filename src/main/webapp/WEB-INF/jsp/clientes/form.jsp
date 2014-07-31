<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Loja - Cadastro de Clientes</title>
		
		<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
		<link href="<c:url value="/resources/css/loja.css"/>" rel="stylesheet" type="text/css"/>
	</head>

	<body>
		<c:url value="/clientes" var="url" />
		
		<div class="container">
			<c:import url="/WEB-INF/jsp/menu.jsp" />
			<c:import url="/WEB-INF/jsp/mensagens.jsp" />
			
			<form id="form" action="${url}" method="post" class="form-horizontal">
				<c:if test="${not empty cliente.id}">
					<input type="hidden" name="_method" value="PUT" />
					<input type="hidden" name="cliente.id" value="${cliente.id}" />
				</c:if>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Cadastro de Cliente</h3>
					</div>

					<div class="panel-body">
						<fieldset>
							<legend>Dados do Cliente</legend>
							<div class="form-group">
								<label for="nome" class="col-sm-2 control-label">Nome</label>
								<div class="col-sm-4">
									<input id="nome" class="form-control" name="cliente.nome" value="${cliente.nome}" placeholder="Digite o Nome" />
								</div>
							</div>
							
							<div class="form-group">
								<label for="email" class="col-sm-2 control-label">Email</label>
								<div class="col-sm-4">
									<input id="email" class="form-control" name="cliente.email" value="${cliente.email}" placeholder="Digite o Email" />
								</div>
							</div>
							
							<div class="form-group">
								<label for="data-nascimento" class="col-sm-2 control-label">Data de Nascimento</label>
								<div class="col-sm-4">
									<input id="data-nascimento" class="form-control" name="cliente.dataNascimento" value="<fmt:formatDate value="${cliente.dataNascimento.time}"/>" placeholder="Digite a Data de Nascimento" />
								</div>
							</div>
						</fieldset>
					</div>
				</div>
				
				<div class="well">
					<button type="submit" class="btn btn-primary">Gravar</button>
					<a href="${url}" class="btn btn-default">Cancelar</a>
				</div>
			</form>
		</div>
    
    	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
	</body>
</html>