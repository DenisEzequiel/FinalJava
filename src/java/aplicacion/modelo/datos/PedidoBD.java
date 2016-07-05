/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import aplicacion.modelo.entidades.LineaPedido;
import aplicacion.modelo.entidades.Pelicula;
import aplicacion.modelo.entidades.Pedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author User
 */
public class PedidoBD {
    
     Conexion conec = new Conexion();
     ParametroBD parBD = new ParametroBD();
     LineaBD lineas = new LineaBD();
     PeliculaDB pelisBD = new PeliculaDB();
     
     public void cerrarPedido(Pedido p)
     {
         Connection con = conec.getConexion();
         String transac = "update aefilep.pedidos set estado=?, fecha_devolucion=? where id_pedido=?;";
         try
         {
            PreparedStatement pr = con.prepareStatement(transac);
            pr.setString(1, p.getEstado());
            pr.setDate(2, new java.sql.Date(p.getFechaDevolucion().getTime()));
            pr.setInt(3, p.getIdPedido());
            pr.executeUpdate();
            for(LineaPedido lp:p.getLineas())
            {
                Pelicula pel = lp.getPelicula();
                pelisBD.actualizarPelicula(pel);
            }
         }
         catch(SQLException ex)
         {
             ex.printStackTrace();
         }
     }
     
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
                lbd.registrarLineas(p.getLineas(),clave, p.getDias());
            }
             
             
             con.close();
      
        }
             catch(SQLException ex)
        {
            ex.printStackTrace();
        }
}
     
     public ArrayList<Pedido> obtenerPedidosPendientes (int idPedido)
     {
         
         ArrayList<Pedido> pedidosEncontrados = new ArrayList<>();
         Connection con = conec.getConexion();
    
        String sql = "SELECT * FROM aefilep.pedidos where id_usuario=? and estado not like 'Cerrado';";
        try
        {   
            PreparedStatement pr = con.prepareStatement(sql);
             pr.setInt(1,idPedido);
             ResultSet res =pr.executeQuery();
             
             while(res.next())
            { 
                Pedido p = new Pedido();
                
                p.setIdPedido(res.getInt(1));
                p.setFechaRealizacion(new java.sql.Date(res.getDate(2).getTime()));
                p.setFechaDesde(new java.sql.Date(res.getDate(3).getTime()));
                p.setFechaHasta(new java.sql.Date(res.getDate(4).getTime()));
                p.setEstado(res.getString(5));
                p.setFechaDevolucion(null);
                p.setLineas(lineas.obtenerLineaAlq(p.getIdPedido()));
                
                
                pedidosEncontrados.add(p);
                     
            }
                    
             con.close();
      
        }
             catch(SQLException ex)
        {
            ex.printStackTrace();
        }
     return pedidosEncontrados;
     }
            
}
