package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BemVindo extends HttpServlet {

	@Override
	protected void service(HttpServletRequest resq, HttpServletResponse resp) throws ServletException, IOException {
		Calendar date = Calendar.getInstance();
		String dataFormatada = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")
			.format(date.getTimeInMillis());
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Agenda FJ21</title>");
		out.println("</title>");
		out.println("<body>");
		out.println("<h1>Olá!</h1>");
		out.println("<p>Bem vindo a agenda: " + dataFormatada + "</p>");
		out.println("</body>");
		out.println("</html>");
	}

}
