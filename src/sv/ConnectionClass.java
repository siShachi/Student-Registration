package sv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectionClass {
	protected Connection connection;
	protected PreparedStatement ps;
	protected ResultSet rs;
	public ConnectionClass() {
		try {
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
}
	public Connection getConnection() {
		//String url="jdbc:oracle:thin:@192.168.8.1:1521:liu";
		String url="jdbc:mysql://localhost:3306/test";
		try {
			
			connection = DriverManager.getConnection(url,"root","");
			//connection = DriverManager.getConnection(url,"scott","tiger");
			//System.out.println(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}

	public void closeAll() {
		try {
			if (this.rs != null) {
				this.rs.close();
			}
			if (this.ps != null) {
				this.ps.close();
			}
			if (this.connection != null) {
				this.connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}