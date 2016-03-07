package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.model.Contato;

@WebServlet(name="new-contato", urlPatterns="/add-contato")
public class AddContato extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Date date;
		try {
			date = new SimpleDateFormat("dd/MM/yyy").parse(req.getParameter("nascimento"));
		} catch (ParseException e) {
			throw new RuntimeException(e);
		}
		Calendar nascimento = Calendar.getInstance();
		nascimento.setTime(date);
		
		Contato c = new Contato();
		c.setNome(req.getParameter("nome"));
		c.setEmail(req.getParameter("email"));
		c.setEndereco(req.getParameter("endereco"));
		c.setDataNascimento(nascimento);
		ContatoDao dao = new ContatoDao();
		dao.insert(c);
		
		RequestDispatcher rd = req.getRequestDispatcher("/contato-adicionado.jsp");
		rd.forward(req, resp);
	}

}