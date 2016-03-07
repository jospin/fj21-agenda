package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;

public class RemoveContato implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		long id = Long.parseLong(req.getParameter("id"));
		Connection conn = (Connection) req.getAttribute("connection");
		ContatoDao dao = new ContatoDao(conn);
		dao.delete(id);
		return "/WEB-INF/jsp/contato-removido.jsp";

	}

}
