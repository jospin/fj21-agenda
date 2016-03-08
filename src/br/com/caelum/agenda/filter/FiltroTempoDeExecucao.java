package br.com.caelum.agenda.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/*")
public class FiltroTempoDeExecucao implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		long tempoInicial = System.currentTimeMillis();

		chain.doFilter(req, resp);

		long tempoFinal = System.currentTimeMillis();
		long ini = System.currentTimeMillis();
		String url = ((HttpServletRequest) req).getRequestURI();
		chain.doFilter(req, resp);
		long fim = System.currentTimeMillis();
		long tempo = (fim - ini);
		System.out.println("Tempo de execução: " + url + " - " + tempo);

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
