<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
	<core:import url="/imports/head.jsp" />
<title>Insert title here</title>
</head>
<body>
	<core:import url="/imports/cabecalho.jsp" />
		<p class="alert alert-success">Contato ${param.nome} adicionado com sucesso</p>	
	<core:import url="/imports/rodape.jsp" />
</body>
</html>