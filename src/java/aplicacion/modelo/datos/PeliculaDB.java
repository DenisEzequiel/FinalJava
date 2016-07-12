/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import aplicacion.modelo.entidades.Pelicula;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.File;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.imageio.ImageIO;

/**
 *
 * @author User
 */
public class PeliculaDB
{
    Conexion conec = new Conexion();
    ParametroBD parBD = new ParametroBD();
    PeliculasGenerosBD pelgenBD = new PeliculasGenerosBD();
    public void agregarPelicula(Pelicula p) throws Exception
    {
        Connection con = conec.getConexion();
        String transac = "insert into aefilep.peliculas values (?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try
        {   
            PreparedStatement pr = con.prepareStatement(transac,Statement.RETURN_GENERATED_KEYS);
            
            pr.setNull(1,0);
            pr.setString(2, p.getNombre());
            pr.setInt(3, p.getDuracion());
            pr.setString(4, p.getFormato());
            pr.setInt(5, p.getStockAlquiler());
            pr.setInt(6, p.getStockVenta());

            pr.setBlob(7,p.getImagen());
            
            pr.setBinaryStream(7, p.getImagen());

            pr.setString(8, p.getReparto());
            pr.setDate(9, new java.sql.Date(p.getFechaCarga().getTime()));
            pr.setBoolean(10,p.isActivo());
            pr.setString(11, p.getUrlTrailer());
            pr.setFloat(12, p.getPrecioVenta());
            pr.setString(13, p.getSinopsis());
            pr.setInt(14, p.getAnio());
            pr.executeUpdate();
            ResultSet rs = pr.getGeneratedKeys();
           if(rs.next())
           {
               int id = rs.getInt(1);
               p.setIdPelicula(id);
           }
           con.close();
           pelgenBD.agregarPeliculaGeneros(p);
           
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
     }
     public void actualizarPelicula(Pelicula p) throws Exception
     {
        Connection con = conec.getConexion();
        String sql = "update aefilep.peliculas set nombre=?, duracion=?, formato=?, stock_alquiler=?,"
                + "stock_compra=?, reparto=?, activo=?,url_trailer=?, precio_venta=?, sinopsis=?, anio=?, imagen=? where id_pelicula=?;";
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, p.getNombre());
            pr.setInt(2, p.getDuracion());
            pr.setString(3, p.getFormato());
            pr.setInt(4, p.getStockAlquiler());
            pr.setInt(5, p.getStockVenta());           
            pr.setString(6, p.getReparto());
            pr.setBoolean(7, p.isActivo());            
            pr.setString(8, p.getUrlTrailer());
            pr.setFloat(9, p.getPrecioVenta());
            pr.setString(10, p.getSinopsis());
            pr.setInt(11, p.getAnio());           
            pr.setBlob(12, p.getImagen());            
            pr.setInt(13, p.getIdPelicula());
            pr.executeUpdate();
            con.close();
        }
        catch(SQLException ex)
        {
            
        }
        pelgenBD.actualizarPeliculasGeneros(p);
     }
     
     public byte[] buscarImagen(int id) throws Exception
     {
           Connection con = conec.getConexion();
        
         String transac = "select imagen from peliculas where id_pelicula=?;";
         byte[] imgData=null;
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);
            pr.setInt(1, id);
            ResultSet res = pr.executeQuery();
            
                   
            if(res.next())
            {
               imgData = res.getBytes("imagen");
            }
            con.close();
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return imgData;
     
     }
     
     public ArrayList<Pelicula> obtenerPeliculas() throws Exception
     {
         Connection con = conec.getConexion();
         ArrayList<Pelicula> listaPeliculas = new ArrayList<>();
         String transac = "select * from peliculas where activo=1;";
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);
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
                
                p.setGeneros(pelgenBD.obtenerGenerosPelicula(p.getIdPelicula()));
                
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
    
     public ArrayList<Pelicula> obtenerPeliculas(String nombre, int inferior, int cantidad) throws Exception
     {
         Connection con = conec.getConexion();
         ArrayList<Pelicula> listaPeliculas = new ArrayList<>();
         String transac = "select * from peliculas where nombre like '%"+nombre+"%'and activo=1 limit ?,?;";
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
                
                p.setGeneros(pelgenBD.obtenerGenerosPelicula(p.getIdPelicula()));
                
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
     
     public ArrayList<Pelicula> buscarPeliculas(int inferior,int cantidad) throws Exception
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
     
     public Pelicula obtenerPelicula(int idPeli) throws Exception
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
     
     public int cantidadPeliculas() throws Exception
     {
         Connection con = conec.getConexion();
         int i=0;
         String transac = "select count(*) from peliculas;";
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
     
     public int cantidadPeliculasActivas() throws Exception
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
          
     public int cantidadEstrenosActivos() throws Exception
     {
         Connection con = conec.getConexion();
         int i=0;
         String transac = "select count(*) from peliculas where activo=1 and (`fecha_carga` +7)>CURRENT_DATE();";
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
     public int cantidadGenerosActivos(int id) throws Exception
     {
         Connection con = conec.getConexion();
         int i=0;
         String transac = "select count(*) from peliculas p inner join peliculas_generos pg on p.id_pelicula=pg.id_pelicula where id_genero=? and activo=1;";
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);
            pr.setInt(1,id);
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
      public int cantidadBuscadorActivos(String nombre) throws Exception
     {
         Connection con = conec.getConexion();
         int i=0;
         String transac = "select count(*) from peliculas where  nombre like '%"+nombre+"%'and activo=1 ;";
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
       public ArrayList<Pelicula> obtenerEstrenos(int inferior,int cantidad) throws Exception
     {
         Connection con = conec.getConexion();
         ArrayList<Pelicula> listaEstrenos = new ArrayList<>();
         String transac = "select * from peliculas where(`fecha_carga` +7)>CURRENT_DATE() and activo=1 limit ?,?;";
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
                
                p.setGeneros(pelgenBD.obtenerGenerosPelicula(p.getIdPelicula()));
                
                listaEstrenos.add(p);
            }
            con.close();
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return listaEstrenos;
     }
     public ArrayList<Pelicula> obtenerEstrenos(int cant) throws Exception
     {
         Connection con = conec.getConexion();
         ArrayList<Pelicula> listaEstrenos = new ArrayList<>();
         String transac = "select * from peliculas where(`fecha_carga` +7)>CURRENT_DATE() and activo=1 order by `fecha_carga` desc limit 0,?;";
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);
            pr.setInt(1, cant);
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
                
                p.setGeneros(pelgenBD.obtenerGenerosPelicula(p.getIdPelicula()));
                
                listaEstrenos.add(p);
            }
            con.close();
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        if (listaEstrenos.size()<3)
        {    
            con = conec.getConexion();
            int limit= cant-listaEstrenos.size();
            String transac2 = "select * from peliculas where(`fecha_carga` +7)<CURRENT_DATE() and activo=1 limit 0,?;";
         
                
                try
                {
                    PreparedStatement pr = con.prepareStatement(transac2);
                    pr.setInt(1,limit);

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
                
                p.setGeneros(pelgenBD.obtenerGenerosPelicula(p.getIdPelicula()));
                
                listaEstrenos.add(p);
                }
                    con.close();
                }
                catch(SQLException e)
                {
                            
                }
            
             
           
       }
        return listaEstrenos;
     }
       public ArrayList<Pelicula> obtenerGenero(int idGenero, int inferior, int cantidad) throws Exception
     {
         Connection con = conec.getConexion();
         ArrayList<Pelicula> listaGenero = new ArrayList<>();
         String transac = "select id_pelicula from peliculas_generos where id_genero=? limit ?,?";
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);
            pr.setInt(1, idGenero);
            pr.setInt(2, inferior);
            pr.setInt(3,cantidad);
            ResultSet res = pr.executeQuery();
                   
            while(res.next())
            {
                Pelicula p = obtenerPelicula(res.getInt(1));
                               
                listaGenero.add(p);
            }
            con.close();
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return listaGenero;
    }
}
