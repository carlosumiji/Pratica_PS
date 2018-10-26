<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Exemplo">
	<h1>Cadastro Jogo</h1>
	
<c:if test="${not empty msg }">
	<div class="alert alert-success">
		${ msg }
	</div>
</c:if>

<form:form action="${action }" method="post" commandName="jogo">
	<div class="form-group">
		<form:label path="nome">Nome</form:label>
		<form:input path="nome" cssClass="form-control"/>
	</div>
	<div class="form-group">
		<form:label path="dataLancamento">Data de Lanšamento</form:label>
		<form:input path="dataLancamento" cssClass="form-control" />
	</div>
	<div class="form-group">
		<form:label path="genero.codigo">Genero</form:label>
		<form:select path="genero.codigo" cssClass="form-control">
			<form:option value="0">Selecione</form:option>
			<form:options items="${generos}" itemLabel="nome" itemValue="codigo"/>
		</form:select>
	</div>
	<div class="form-group">
		<form:label path="plataforma">Plataforma</form:label>
		<form:select path="plataforma" cssClass="form-control">
			<form:option value="0">Selecione</form:option>
			<form:options items="${plataformas}" itemLabel="label" />
		</form:select>
	</div>
	
	<input type="submit" value="Cadastrar" class="btn btn-primary">
</form:form>


</tags:template>
	
	
nome;
dataLancamento;
plataforma;