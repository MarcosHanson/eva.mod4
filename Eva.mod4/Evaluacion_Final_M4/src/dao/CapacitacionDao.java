package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import conexion.AdministrarConexion;
import modelo.Capacitacion;
import modelo.Usuario;

public class CapacitacionDao extends AdministrarConexion{
	
	public static int save (Capacitacion c){//metodo para agregar capacitacion en tabla capacitacion
		int status=0;
		try{
			Connection conn = generaConexion();
			PreparedStatement ps=conn.prepareStatement("INSERT INTO CAPACITACION VALUES (?,?,?,?,?,?)");
			
			ps.setString(1,"");
			ps.setString(2,c.getRutCliente());
			ps.setString(3,c.getDia());
			ps.setString(4,c.getHora());
			ps.setString(5,c.getLugar());
			ps.setString(6,c.getDuracion());
			ps.setInt(7,c.getCantidadAsistentes());
		
			
			status=ps.executeUpdate();
			
			
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	

	public int update(Capacitacion c){//metodo actualizar tabla capacitacion
		int status=0;
		try{
			Connection conn = generaConexion();
			PreparedStatement ps = conn.prepareStatement("UPDATE CAPACITACION set RUTCLIENTE=?,DIA=?,HORA=?,LUGAR=?, DURACION=?, CANTIDADASISTENTES=? WHERE IDCAPACITACION=?");
			
			ps.setString(2,c.getRutCliente());
			ps.setString(3,c.getDia());
			ps.setString(4,c.getHora());
			ps.setString(5,c.getLugar());
			ps.setString(6,c.getDuracion());
			ps.setInt(7,c.getCantidadAsistentes());
			
			status = ps.executeUpdate();
			
			
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	public int delete(int id){ //metodo eliminar
		int status=0;
		try{
			Connection conn = generaConexion();
			PreparedStatement ps=conn.prepareStatement("delete from CAPACITACION where id=?");
			ps.setInt(1,id);
			status=ps.executeUpdate();
			
			conn.close();
		}catch(Exception c){c.printStackTrace();}
		
		return status;
	}
	
	public  List<Capacitacion> obtenerListadoCap(){ //metodo listar capacitaciones del sistema
		List<Capacitacion> list=new ArrayList<Capacitacion>();
		
		try{
			Connection conn = generaConexion();
			PreparedStatement ps=conn.prepareStatement("select * from CAPACITACION");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Capacitacion c=new Capacitacion();
				ps.setInt(1,c.getIdCapacitacion());
				ps.setString(2,c.getRutCliente());
				ps.setString(3,c.getDia());
				ps.setString(4,c.getHora());
				ps.setString(5,c.getLugar());
				ps.setString(6,c.getDuracion());
				ps.setInt(7,c.getCantidadAsistentes());
				list.add(c);
			}
			conn.close();
		}catch(Exception c){c.printStackTrace();}
		
		return list;
	}
}

