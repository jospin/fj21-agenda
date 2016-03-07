package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OiMundo extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Calendar date = Calendar.getInstance();
		String dataFormatada = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")
		.format(Calendar.getInstance().getTimeInMillis());
System.out.println("Nascimento: " + dataFormatada);		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Primeira Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Servlet!</h1>");
		out.println("<p>Agora: " + dataFormatada + "</p>");
		out.println("</body>");
		out.println("</html>");
	}

}
