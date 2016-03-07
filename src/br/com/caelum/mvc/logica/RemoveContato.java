package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;

public class RemoveContato implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		long id =  Long.parseLong(req.getParameter("id"));
		ContatoDao dao = new ContatoDao();
		dao.delete(id);
		return "/WEB-INF/jsp/contato-removido.jsp";
		
	}

}
