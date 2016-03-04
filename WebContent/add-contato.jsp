<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="campo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Adiciona contato</title>
</head>
<body>
	<c:import url="imports/cabecalho.jsp" />
	<form action="add-contato" method="post">
		<legend>Novo contato</legend>
		<fieldset>
			<p>
				<label>Nome: &nbsp;</label><input type="text" name="nome" />
			</p>
			<p>
				<label>E-mail: &nbsp;</label><input type="text" name="email" />
			</p>
			<p>
				<label>Endereço: &nbsp;</label><input type="text" name="endereco" />
			</p>
			<p>
				<campo:campoData id="nascimento"></campo:campoData>
				<!-- <label>Data Nascimento: &nbsp;</label><input type="text"
					name="nascimento" /> -->
			</p>
			<p>
				<input type="submit" value="Gravar" />
			</p>
		</fieldset>
	</form>
	<c:import url="imports/rodape.jsp" />
</body>
</html>