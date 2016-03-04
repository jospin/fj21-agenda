<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<c:import url="imports/head.jsp" />
	<title>Contatos da Agenda</title>
</head>
<body>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
<jsp:useBean id="date" class="br.com.caelum.agenda.dao.ContatoDao" />
<c:import url="imports/cabecalho.jsp" />
<table class="table table-colapse table-striped table-hover">
	<tr>
		<tbody>
			<th>Id</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Nascimento</th>
		</tbody>
	</tr>
	<tr>
		<tbody>
			<c:forEach var="contato" items="${dao.lista}" varStatus="count">
				<tr class="${count.count % 2 == 0 ? 'active' : 'success'}">
					<td>${contato.id}</td>
					<td>${contato.nome}</td>
					<td>
					<!--<c:if test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>
						<c:if test="${empty contato.email}">
							E-mail não informado
						</c:if>-->
						<c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							<c:otherwise>
								E-mail não informado
							</c:otherwise>
						</c:choose>
					</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy" 
						value="${contato.dataNascimento.time}" />
					</td>
				</tr>
			</c:forEach>	
		</tbody>
	</tr>
</table>
<c:import url="imports/rodape.jsp" />
</body>
</html>