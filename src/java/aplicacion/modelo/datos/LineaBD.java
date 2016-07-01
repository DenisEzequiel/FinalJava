/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import aplicacion.modelo.entidades.LineaPedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author User
 */
public class LineaBD {
      Conexion conec = new Conexion();
    
    public void registrarLineas(ArrayList<LineaPedido> lineas, int idPedido)
    {
        
        for(LineaPedido lp: lineas ) 
        {   
            String transac1 = "insert into aefilep.pedidos_peliculas values (?,?,?,?,?);";
            Connection con = conec.getConexion();
                    
            try
            {       
                PreparedStatement pr = con.prepareStatement(transac1);
                pr.setInt(1, lp.getPelicula().getIdPelicula());
                pr.setInt(2, idPedido);
                pr.setInt(3, lp.getCantidad());
                pr.setBoolean(4, lp.isEsAlquiler());
                pr.setFloat(5, lp.getSubtotal());
                 pr.executeUpdate();
                  con.close();
            
            }
            catch(SQLException ex)
            {
                
            }
             
        }
       
    }
            
}
