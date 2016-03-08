<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib tagdir="/WEB-INF/tags" prefix="tagfile" %>
<!DOCTYPE html>
<html>
<head>
<core:import url="/imports/head.jsp" />
<title>Adiciona contato</title>
</head>
<body>
	<core:import url="/imports/cabecalho.jsp" />
	<form action="altera-contato" method="post" >
		<legend>Novo contato</legend>
		<div class="form-group">
		<tagfile:campoText 
			tagfileLabel="Nome" 
			tagfileName="nome"
			tagfileValue="${contato.nome}">
		</tagfile:campoText>
		</div>
		<div class="form-group">
			<tagfile:campoText 
				tagfileLabel="E-mail" 
				tagfileName="email"
				tagfileValue="${contato.email}">
			</tagfile:campoText>
		</div>
		<div class="form-group">
			<tagfile:campoText 
				tagfileLabel="Endereço" 
				tagfileName="endereco"
				tagfileValue="${contato.endereco}">
			</tagfile:campoText>
			<label>Endereço: &nbsp;</label>
			<input type="text" class="form-control" value="${contato.endereco}" name="endereco" />
		</div>
		<div class="form-group">
			<tagfile:campoData 
				tagfileName="nascimento" 
				tagfileId="nascimento" 
				tagfileLabel="Data Nascimento" 
				tagfileValue="${contato.dataNascimentoFormatada}"/>
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-default" value="Gravar" />
		</div>
	</form>
	<core:import url="/imports/rodape.jsp" />
</body>
</html>