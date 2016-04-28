/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author JP
 */
public class Conexion 
{
	public Connection getConexion()
	 {
		 Connection conexion=null;
	      
	     try
	     {
	    	
	         Class.forName("com.mysql.jdbc.Driver");
	         String usuarioDB="root";
	         String passwordDB="";
	         
	         String servidor = "jdbc:mysql://localhost:3306/aefilep";
	         
	         conexion = DriverManager.getConnection(servidor,usuarioDB,passwordDB);
	     }
	     catch(ClassNotFoundException ex)
	     {
	    	 System.out.print("error clase");
	         conexion=null;
	     }
	     catch(SQLException ex)
	     {
	    	 System.out.print("error sqlexcepcion");
	         conexion=null;
	     }
	     catch(Exception ex)
	     {
	    	 System.out.print("error execpcion");
	         conexion=null;
	     }
	     finally
	     {
	         return conexion;
	     }
	 }
}
