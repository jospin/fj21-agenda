<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contatos da Agenda</title>
</head>
<body>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
<jsp:useBean id="date" class="br.com.caelum.agenda.dao.ContatoDao" />
<h1>Agenda de contatos curso FJ-21</h1>
<table>
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
			<c:forEach var="contato" items="${dao.lista}">
				<tr>
					<td>${contato.id}</td>
					<td>${contato.nome}</td>
					<td>
						<c:if test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>
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
</body>
</html>