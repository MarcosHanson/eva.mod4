package dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import conexion.AdministrarConexion;
import modelo.Usuario;

public class UsuarioDao extends AdministrarConexion{

public static int save (Usuario u){
		int status=0;
		try{
			Connection conn = generaConexion();
			PreparedStatement ps=conn.prepareStatement("INSERT INTO EVALUACION_M2.USUARIOS VALUES (?,?,?,?,?,?)");
			
			ps.setString(1,"");
			ps.setString(2,u.getNombre());
			ps.setString(3,u.getApellido());
			ps.setString(4,u.getFechanac());
			ps.setString(5,u.getRun());
			ps.setString(6, u.getTipousuario());
			
			
			status=ps.executeUpdate();
			
			
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}

public int update(Usuario u){
	int status=0;
	try{
		Connection conn = generaConexion();
		PreparedStatement ps = conn.prepareStatement("update EVALUACION_M2.USUSARIOS set NOMBRE=?,APELLIDO=?,FECHANAC=?,RUN=?,TIPOUSUARIO=? where id=?");
		
		ps.setString(2,u.getNombre());
		ps.setString(3,u.getApellido());
		ps.setString(4,u.getFechanac());
		ps.setString(5,u.getRun());
		ps.setString(6,u.getTipousuario());
		
		status = ps.executeUpdate();
		
		
	}catch(Exception ex){ex.printStackTrace();}
	
	return status;
}
public int delete(int id){
	int status=0;
	try{
		Connection conn = generaConexion();
		PreparedStatement ps=conn.prepareStatement("delete from EVALUACION_M2.USUARIOS where id=?");
		ps.setInt(1,id);
		status=ps.executeUpdate();
		
		conn.close();
	}catch(Exception u){u.printStackTrace();}
	
	return status;
}

public  List<Usuario> obtenerLista(){
	List<Usuario> listausuario=new ArrayList<Usuario>();
	
	try{
		Connection conn = generaConexion();
		PreparedStatement ps=conn.prepareStatement("select * from EVALUACION_M2.USUARIOS");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			
			
			
			Usuario u=new Usuario();
			ps.setInt(1, u.getId());
			ps.setString(2,u.getNombre());
			ps.setString(3,u.getApellido());
			ps.setString(4,u.getFechanac());
			ps.setString(5,u.getRun());
			ps.setString(6,u.getTipousuario());
			listausuario.add(u);
		}
		conn.close();
	}catch(Exception u){u.printStackTrace();}
	
	return listausuario;
}
}
