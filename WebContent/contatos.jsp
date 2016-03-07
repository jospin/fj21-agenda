<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<core:import url="/imports/head.jsp" />
<title>Contatos da Agenda</title>
</head>
<body>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
<jsp:useBean id="date" class="br.com.caelum.agenda.dao.ContatoDao" />
<core:import url="/imports/cabecalho.jsp" />
<h3>Agenda de contatos curso FJ-21</h3>
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
			<core:forEach var="contato" items="${dao.lista}" varStatus="count">
				<tr class="${count.count % 2 == 0 ? 'active' : 'success'}">
					<td>${contato.id}</td>
					<td>${contato.nome}</td>
					<td>
						<!--<core:if test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</core:if>
						<core:if test="${empty contato.email}">
							E-mail não informado
						</core:if>-->
						<core:choose>
							<core:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</core:when>
							<core:otherwise>
								E-mail não informado
							</core:otherwise>
						</core:choose>					
					</td>
						
					<td>${contato.endereco}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy" 
						value="${contato.dataNascimento.time}" />
					</td>
				</tr>
			</core:forEach>	
		</tbody>
	</tr>
</table>
<core:import url="/imports/rodape.jsp" />
</body>
</html>