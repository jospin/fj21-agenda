package br.com.caelum.agenda.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public Connection getConnection()  {
		try{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}
		try {
			return DriverManager.getConnection("jdbc:mysql://localhost/fj21", "fj21", "123456");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}