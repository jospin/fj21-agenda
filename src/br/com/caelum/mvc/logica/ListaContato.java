package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.model.Contato;

public class ListaContato implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		Connection conn = (Connection) req.getAttribute("connection");
		ContatoDao dao = new ContatoDao(conn);
		List<Contato> contatos = dao.getLista();
		req.setAttribute("contatos", contatos);

		return "/WEB-INF/jsp/contatos.jsp";
	}

}