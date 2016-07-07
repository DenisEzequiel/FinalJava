/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.negocio;

import aplicacion.modelo.datos.PeliculaDB;
import aplicacion.modelo.datos.PeliculasGenerosBD;
import aplicacion.modelo.entidades.Pelicula;
import java.util.ArrayList;

/**
 *
 * @author User
 */
public class CatalogoDePeliculas 
{  
    PeliculaDB peliculas=new PeliculaDB();
    public void agregarPelicula(Pelicula pelicula)
    {
        peliculas.agregarPelicula(pelicula);
    }
    public void actualizarPelicula(Pelicula p)
    {
        peliculas.actualizarPelicula(p);
    }
    public Pelicula obtenerPelicula(int idPel)
    {
        return peliculas.obtenerPelicula(idPel);
    }
    
    public ArrayList<Pelicula> obtenerPeliculas()
    {
        return peliculas.obtenerPeliculas();
    }
     public ArrayList<Pelicula> obtenerPeliculas(String nombre,int inferior,int cantidad)
    {
        return peliculas.obtenerPeliculas(nombre,inferior,cantidad);
    }
    
    public ArrayList<Pelicula> buscarPeliculas(int inferior, int cantidad)
    {
       return peliculas.buscarPeliculas(inferior,cantidad);
    }
    
    public int cantidadPeliculasActivas()
    {
        return peliculas.cantidadPeliculasActivas();
    }
     public int cantidadEstrenosActivos()
    {
        return peliculas.cantidadEstrenosActivos();
    }
     public int cantidadBuscadorActivos(String nombre)
    {
        return peliculas.cantidadBuscadorActivos(nombre);
    }
       public int cantidadGenerosActivos(int id)
    {
        return peliculas.cantidadGenerosActivos(id);
    }
    public ArrayList<Pelicula> obtenerEstrenos(int inferior,int cantidad)
    {
       return peliculas.obtenerEstrenos(inferior,cantidad);
    }
        public ArrayList<Pelicula> obtenerEstrenos(int cant)
    {
       return peliculas.obtenerEstrenos(cant);
    }
    
     public ArrayList<Pelicula> obtenerGenero(int idGenero, int inferior, int cantidad)
    {
       return peliculas.obtenerGenero(idGenero,inferior,cantidad);
    }
}
