/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.negocio;

import aplicacion.modelo.datos.PeliculaDB;
import aplicacion.modelo.entidades.Pelicula;
import java.util.ArrayList;

/**
 *
 * @author User
 */
public class CatalogoDePeliculas 
{  
    PeliculaDB peliculas = new PeliculaDB();
    
    public void agregarPelicula(Pelicula pelicula) throws Exception
    {
        peliculas.agregarPelicula(pelicula);
    }
    
    public byte[] buscarImagen(int id) throws Exception
    {
     return peliculas.buscarImagen(id);
     
    }
    
    public void actualizarPelicula(Pelicula p) throws Exception
    {
        peliculas.actualizarPelicula(p);
    }
    
    public Pelicula obtenerPelicula(int idPel) throws Exception
    {
        return peliculas.obtenerPelicula(idPel);
    }
    
    public ArrayList<Pelicula> obtenerPeliculas() throws Exception
    {
        return peliculas.obtenerPeliculas();
    }
    
    public ArrayList<Pelicula> obtenerPeliculas(String nombre,int inferior,int cantidad) throws Exception
    {
        return peliculas.obtenerPeliculas(nombre,inferior,cantidad);
    }
    
    public ArrayList<Pelicula> buscarPeliculas(int inferior, int cantidad) throws Exception
    {
       return peliculas.buscarPeliculas(inferior,cantidad);
    }
    
    public int cantidadPeliculasActivas() throws Exception
    {
        return peliculas.cantidadPeliculasActivas();
    }
    
    public int cantidadEstrenosActivos() throws Exception
    {
        return peliculas.cantidadEstrenosActivos();
    }
    
    public int cantidadBuscadorActivos(String nombre) throws Exception
    {
        return peliculas.cantidadBuscadorActivos(nombre);
    }
    
    public int cantidadGenerosActivos(int id) throws Exception
    {
        return peliculas.cantidadGenerosActivos(id);
    }
    
    public ArrayList<Pelicula> obtenerEstrenos(int inferior,int cantidad) throws Exception
    {
       return peliculas.obtenerEstrenos(inferior,cantidad);
    }
    
    public ArrayList<Pelicula> obtenerEstrenos(int cant) throws Exception
    {
       return peliculas.obtenerEstrenos(cant);
    }
    
    public ArrayList<Pelicula> obtenerGenero(int idGenero, int inferior, int cantidad) throws Exception
    {
       return peliculas.obtenerGenero(idGenero,inferior,cantidad);
    }
}
