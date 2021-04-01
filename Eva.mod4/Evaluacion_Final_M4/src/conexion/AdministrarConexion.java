package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.net.nt.ConnectDescription;

public class AdministrarConexion {

	protected static Connection conn = null;

	protected PreparedStatement pstm = null;

	protected ResultSet rs = null;

	protected static Connection generaConexion() throws SQLException {

		String user = "SYSTEM";

		String pass = "psalm69";

		String driver = "oracle.jdbc.driver.OracleDriver";

		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		try {
			Class.forName(driver);

			conn = DriverManager.getConnection(url, user, pass);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;

	}

}
