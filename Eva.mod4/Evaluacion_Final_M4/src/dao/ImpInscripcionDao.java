package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




import modelo.Usuario;

import conexion.AdministrarConexion;

public class ImpInscripcionDao extends AdministrarConexion implements IInscripcionDao {

	public ImpInscripcionDao() throws SQLException {
		// TODO Auto-generated constructor stub

		Connection conn = generaConexion();

	}

	@Override
	public List<Usuario> obtenerInscripcion() {
		// TODO Auto-generated method stub

		List<Usuario> inscripciones = new ArrayList<Usuario>();

		String consultaSql = "select * from EVALUACION_M2.USUARIOS";

		try {
			pstm = conn.prepareStatement(consultaSql);

			rs = pstm.executeQuery();

			while (rs.next()) {
				Usuario columna = new Usuario();
				
				

				columna.setRun(rs.getString(5));

				columna.setNombre(rs.getString(2));

				columna.setApellido(rs.getString(3));

				columna.setTipousuario(rs.getString(6));
				
				columna.setId(rs.getInt(1));

				
				
				inscripciones.add(columna);
				
				
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return inscripciones;
	}

}
