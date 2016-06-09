/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;

import aplicacion.modelo.entidades.Pelicula;
import aplicacion.modelo.entidades.Genero;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Alumno
 */
public class GeneroBD 
{
    Conexion conec = new Conexion();
    public ArrayList<Genero> obtenerGeneros()
    {
        Connection con = conec.getConexion();
        ArrayList<Genero> listaGeneros = new ArrayList<>();
        String transac = "select * from generos";
        try
        {
            PreparedStatement pr = con.prepareStatement(transac);                     
            ResultSet res = pr.executeQuery();
                   
            while(res.next())
            {
                Genero g = new Genero();
                
                g.setIdGenero(res.getInt(1));
                g.setDescripcion(res.getString(2));
                              
                listaGeneros.add(g);
            }
            con.close();
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return listaGeneros;
    }
}
