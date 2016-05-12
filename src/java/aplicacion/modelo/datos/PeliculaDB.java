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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
     
     public ArrayList<Pelicula> buscarPeliculas(int inferior,int cantidad)
     {
         Connection con = conec.getConexion();
         ArrayList<Pelicula> listaPeliculas = new ArrayList<>();
         String transac = "select * from peliculas where activo=1 limit ?,?;";
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);
            
            pr.setInt(1, inferior);
            pr.setInt(2, cantidad);
            
            ResultSet res = pr.executeQuery();
                   
            while(res.next())
            {
                Pelicula p = new Pelicula();
                
                p.setIdPelicula(res.getInt(1));
                p.setNombre(res.getString(2));
                p.setDuracion(res.getInt(3));
                p.setFormato(res.getString(4));
                p.setStockAlquiler(res.getInt(5));
                p.setStockVenta(res.getInt(6));
                p.setReparto(res.getString(8));
                p.setFechaCarga(new java.sql.Date(res.getDate(9).getTime()));
                p.setActivo(res.getBoolean(10));
                p.setUrlTrailer(res.getString(11));
                p.setPrecioVenta(res.getFloat(12));
                p.setSinopsis(res.getString(13));
                p.setAnio(res.getInt(14));
                
                listaPeliculas.add(p);
            }
            con.close();
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return listaPeliculas;
     }
     
     public int buscarCantidadPelicula()
     {
         Connection con = conec.getConexion();
         int i=0;
         String transac = "select count(*) from peliculas where activo=1;";
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);
            ResultSet res = pr.executeQuery();
            
             if(res.next())
            {
                i = res.getInt(1);
                con.close();
                
            }
             
        }
        catch(SQLException e)
        {
           
        }
        
        return i;
     }
}
