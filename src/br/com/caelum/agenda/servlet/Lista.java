package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.exception.DaoException;
import br.com.caelum.agenda.model.Contato;

@WebServlet(name = "Listagem", urlPatterns = "/lista")
public class Lista extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection conn = (Connection) req.getAttribute("connection");
		ContatoDao dao = new ContatoDao(conn);
		List<Contato> contatos = dao.getLista();
		PrintWriter out = resp.getWriter();
		out.println("<html");
		out.println("<body>");
		out.println("<h1>Contatos</h1>");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>Nome</td>");
		out.println("<td>Email</td>");
		out.println("<td>Endereço</td>");
		out.println("<td>Nascimento</td>");

	}

}
