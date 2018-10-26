<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Exemplo">
	<h1>Cadastro Genero</h1>
	
<c:if test="${not empty msg }">
	<div class="alert alert-success">
		${ msg }
	</div>
</c:if>
	
<form:form action="${action }" method="post" commandName="genero">
	<div class="form-group">
		<form:label path="nome">Nome</form:label>
		<form:input path="nome" cssClass="form-control" />
	</div>
	<input type="submit" value="Cadastrar" class="btn btn-prymary">
	
</form:form>
</tags:template>