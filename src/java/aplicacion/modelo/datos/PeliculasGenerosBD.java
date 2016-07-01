/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import aplicacion.modelo.entidades.Genero;
import aplicacion.modelo.entidades.Pelicula;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author marti_000
 */
public class PeliculasGenerosBD
{
    Conexion conec = new Conexion();
    
     public void agregarPeliculaGeneros(Pelicula p)
     {
        
        Connection con = conec.getConexion();
        String transac = "insert into aefilep.peliculas_generos values ";
        for(int i=0; i<p.getGeneros().size(); i++)
        {
            transac = transac +"("+p.getIdPelicula()+","+p.getGeneros().get(i).getIdGenero()+")";
            if(i==p.getGeneros().size()-1)
            {
                transac = transac+";";
            }else
            {
                transac = transac+",";
            }
        }
        try
        {   
           PreparedStatement pr = con.prepareStatement(transac);
           pr.executeUpdate();
           con.close(); 
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        //System.out.print(usu.getApellido());
        
     }
}
