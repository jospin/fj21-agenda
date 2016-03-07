package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Servlet3.0", urlPatterns = "/oi4")
public class OiServlet3 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest resq, HttpServletResponse resp)
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
		out.println("<h1>Oi Servlet 3.0! </h1>");
		out.println("<p>Agora: " + dataFormatada + "</p>");
		out.println("</body>");
		out.println("</html>");
	}
}
