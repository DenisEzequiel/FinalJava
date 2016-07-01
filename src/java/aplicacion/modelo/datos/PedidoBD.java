/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import aplicacion.modelo.entidades.Pedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author User
 */
public class PedidoBD {
    
     Conexion conec = new Conexion();
     ParametroBD parBD = new ParametroBD();
     
     public void registrarPedido(Pedido p)
     {
        
        Connection con = conec.getConexion();
    
        String transac = "insert into aefilep.pedidos values (?,?,?,?,?,?,?);";
        try
        {   
            PreparedStatement pr = con.prepareStatement(transac, PreparedStatement.RETURN_GENERATED_KEYS);
             pr.setDate(2, new java.sql.Date(p.getFechaRealizacion().getTime()));
            pr.setDate(3,new java.sql.Date(p.getFechaDesde().getTime()));
             pr.setDate(4,new java.sql.Date(p.getFechaHasta().getTime()));
             pr.setString(5, p.getEstado());
             pr.setDate(6,null);
             
             pr.setInt(7,p.getUsuario().getIdUsuario());
             pr.setNull(1,0);
             pr.executeUpdate();
             
             ResultSet rs=pr.getGeneratedKeys(); //obtengo las ultimas llaves generadas
            if(rs.next())
            { 
                int clave=rs.getInt(1);
                LineaBD lbd=new LineaBD();
                lbd.registrarLineas(p.getLineas(),clave);
            }
             
             
             con.close();
      
        }
             catch(SQLException ex)
        {
            ex.printStackTrace();
        }
}
}
