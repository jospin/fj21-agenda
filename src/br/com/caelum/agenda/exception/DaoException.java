package br.com.caelum.agenda.exception;

public class DaoException extends RuntimeException{
	
	public DaoException(String operacao) {
		super("Erro na persistência: " + operacao );
	}
}