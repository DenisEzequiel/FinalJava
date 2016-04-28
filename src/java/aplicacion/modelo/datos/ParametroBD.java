/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import aplicacion.modelo.entidades.Parametro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

/**
 *
 * @author marti_000
 */
public class ParametroBD {
    
    
     Conexion conec = new Conexion();
    
    public Parametro obtenerParametros()
    { 
         Parametro par= null;
         Connection con = conec.getConexion();
        String sql = "select * from parametros where fecha_actualizacion like '2016-04-08' ;"; 
                        
        try
        {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet res = ps.executeQuery();
  
  
            if(res.next())
            {  
                  
                par = new Parametro();
                par.setDireccion(res.getString(3));
                par.setMail(res.getString(8));
                par.setTelefono(res.getString(4));
                par.setRazonSocial(res.getString(2));
                par.setFechaActualizacion(res.getDate(1));
                par.setPrecioAlquiler(res.getFloat(5));
                par.setPrecioAlquilerEstreno(res.getFloat(6));
                par.setRecargoDiario(res.getFloat(7));
         
                
            }
            con.close();
            
        }catch(SQLException ex)
        {
            
        }
        
        System.out.print("direccion: "+par.getDireccion());
        return par;
    }
    
    
}
