<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
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
	<form action="add-contato" method="post" >
		<legend>Novo contato</legend>
		<div class="form-group">
			<tagfile:campoText
				tagfileName="nome"
				tagfileLabel="Nome" />
		</div>
		<div class="form-group">
			<tagfile:campoText
				tagfileName="email"
				tagfileLabel="E-mail" />
		</div>
		<div class="form-group">
			<tagfile:campoText
				tagfileName="endereco"
				tagfileLabel="Endereço" />
		</div>
		<div class="form-group">
			<tagfile:campoData 
				tagfileName="nascimento" 
				tagfileId="nascimento" 
				tagfileLabel="Data Nascimento" />
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-default" value="Gravar" />
		</div>
	</form>
	<core:import url="/imports/rodape.jsp" />
</body>
</html>