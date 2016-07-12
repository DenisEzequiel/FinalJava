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
	public Connection getConexion() throws Exception
	{
            Connection conexion=null;
	      
	     
	        	
	         Class.forName("com.mysql.jdbc.Driver");
	         String usuarioDB="root";
	         String passwordDB="sql37491391jp";
	         
	         String servidor = "jdbc:mysql://localhost:3306/aefilep";
	         
	         conexion = DriverManager.getConnection(servidor,usuarioDB,passwordDB);
	     
	     
	         return conexion;
	     }
	 }

