<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<c:import url="imports/head.jsp" />
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="imports/cabecalho.jsp" />
		<p class="alert alert-success">Contato ${param.nome} adicionado com sucesso</p>
	<c:import url="imports/rodape.jsp" />
</body>
</html>