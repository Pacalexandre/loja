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
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Clientes Cadastrados</h3>
				</div>
				
				<div class="panel-body">
					<a href="${url}/novo" class="btn btn-primary">Novo Cliente</a>
					
					<div class="table-responsive">
						<table class="table table-bordered table-striped table-hover">
							<thead>
								<tr>
									<th>Id</th>
									<th>Nome</th>
									<th>Email</th>
									<th>Data de Nascimento</th>
									<th>Ações</th>
								</tr>
							</thead>
				
							<tbody>
								<c:forEach items="${clientes}" var="cliente">
									<tr>
										<td>
											${cliente.id}
										</td>
										
										<td>
											${cliente.nome}
										</td>
										
										<td>
											${cliente.email}
										</td>
										
										<td>
											<fmt:formatDate value="${cliente.dataNascimento.time}" pattern="dd/MM/yyyy"/>
										</td>
										
										<td>
											<a href="${url}/${cliente.id}" class="btn-lg">
												<span class="label label-warning">Alterar</span>
											</a>
											
											<a href="#" onclick="confirmaExclusao('form-excluir-cliente-${cliente.id}');" class="btn-lg">
												<span class="label label-danger">Remover</span>
											</a>
											
											<form action="${url}" method="post" id="form-excluir-cliente-${cliente.id}" class="hidden">
												<input type="hidden" name="_method" value="DELETE"/>
												<input type="hidden" name="cliente.id" value="${cliente.id}"/>
											</form>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/loja.js"/>"></script>
	</body>
</html>