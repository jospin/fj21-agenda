package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.model.Contato;

public class PersisteContato implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		Connection conn = (Connection) req.getAttribute("connection");
		//Contato contato = new Contato();
		String paramId = req.getParameter("id"); 
		if (!paramId.isEmpty()) {
			Long id = Long.parseLong(paramId);
			ContatoDao dao = new ContatoDao(conn);
			Contato contato = dao.getContato(id);
			req.setAttribute("contato", contato);
		} 
		
		return "/WEB-INF/jsp/persiste-contato.jsp";
	}

}