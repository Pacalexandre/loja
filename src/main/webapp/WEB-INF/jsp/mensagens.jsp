<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${not empty errors}">
	<div class="alert alert-danger">
		<ul>
			<c:forEach var="error" items="${errors}">
				<li>${error.message}</li>
			</c:forEach>
		</ul>
	</div>
</c:if>

<c:if test="${not empty info}">
	<div class="alert alert-success">${info}</div>
</c:if>
