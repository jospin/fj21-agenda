<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*,br.com.caelum.agenda.dao.*,br.com.caelum.agenda.model.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista contatos Scriptlet</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Endereço</th>
				<th>E-mail</th>
				<th>Nascimento</th>
			</tr>
		</thead>
		<tbody>
			<%
				ContatoDao dao = new ContatoDao();
			%>
			<%
				List<Contato> contatos = dao.getLista();
			%>
			<%
				for (Contato contato : contatos) {
			%>
			<tr>
				<td><%=contato.getNome()%></td>
				<td><%=contato.getEndereco()%></td>
				<td><%=contato.getEmail()%></td>
				<%
					Date time = contato.getDataNascimento().getTime();
					String nascimento = new SimpleDateFormat("dd/MM/yyyy").format(time);
				%>
				<td><%=nascimento %></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>