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
     ParametroBD parBD = new ParametroBD();
     
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
     public void actualizarPelicula(Pelicula p)
     {
             
        
        Connection con = conec.getConexion();
        String sql = "update peliculas set  nombre=? , duracion=? ,"
                + " formato=? ,stock_alquiler=?,stock_compra=?, reparto=?,fecha_carga=?,"
                + "activo=?,url_trailer=?,precio_venta=?,sinopsis=?,anio=? where id_pelicula=?;";
   
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, p.getNombre());
            pr.setInt(2, p.getDuracion());
            pr.setString(3, p.getFormato());
            pr.setInt(4, p.getStockAlquiler());
            pr.setInt(5, p.getStockVenta());           
            pr.setString(6,p.getReparto());
            pr.setDate(7, new java.sql.Date(p.getFechaCarga().getTime()));
            pr.setBoolean(8, p.isActivo());            
            pr.setString(9,p.getUrlTrailer());
            pr.setFloat(10,p.getPrecioVenta());
            pr.setString(11,p.getSinopsis());
            pr.setInt(12, p.getAnio());
            pr.setInt(13, p.getIdPelicula());
            pr.executeUpdate();
            con.close();
        }
         catch(SQLException ex)
        {
        }
        
    
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
                
                if(p.isEstreno())
                {
                    p.setPrecioAlquiler(parBD.obtenerParametros().getPrecioAlquilerEstreno());
                }
                else
                {
                    p.setPrecioAlquiler(parBD.obtenerParametros().getPrecioAlquiler());
                }
                
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
     
     public Pelicula obtenerPelicula(int idPeli)
     {
        Connection con = conec.getConexion();
        Pelicula p = new Pelicula();
        String transac = "select * from peliculas where activo=1 and id_pelicula=?";
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);
            
            pr.setInt(1, idPeli);
            
            ResultSet res = pr.executeQuery();
                   
            if(res.next())
            {
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
            }
            con.close();
            
            if(p.isEstreno())
            {
                p.setPrecioAlquiler(parBD.obtenerParametros().getPrecioAlquilerEstreno());
            }
            else
            {
                p.setPrecioAlquiler(parBD.obtenerParametros().getPrecioAlquiler());
            }
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return p;
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
