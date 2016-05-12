/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import aplicacion.modelo.entidades.Pelicula;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class PeliculaDB {
     Conexion conec = new Conexion();
    
     public void agregarPelicula(Pelicula p)
     {
        
        Connection con = conec.getConexion();
        String transac = "insert into aefilep.peliculas values (?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try
        {   
            PreparedStatement pr = con.prepareStatement(transac);
            
           
            pr.setNull(1,0);
            pr.setString(2, p.getNombre());
            pr.setInt(3, p.getDuracion());
            pr.setString(4, p.getFormato());
            pr.setInt(5, p.getStockAlquiler());
            pr.setInt(6, p.getStockVenta());
            pr.setNull(7,0);
            //pr.setString(7, IMAGEN());
            pr.setString(8, p.getReparto());
            pr.setDate(9, new java.sql.Date(p.getFechaCarga().getTime()));
            pr.setBoolean(10,p.isActivo());
            pr.setString(11, p.getUrlTrailer());
            pr.setFloat(12, p.getPrecioVenta());
            pr.setString(13, p.getSinopsis());
            pr.setInt(14, p.getAnio());
           pr.executeUpdate();
           con.close();
            
            
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        //System.out.print(usu.getApellido());
        
     }
}
