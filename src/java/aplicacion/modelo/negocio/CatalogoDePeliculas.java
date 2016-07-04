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
    
    public ArrayList<Pelicula> buscarPeliculas(int inferior, int cantidad)
    {
       return peliculas.buscarPeliculas(inferior,cantidad);
    }
    
    public int cantidadPeliculasActivas()
    {
        return peliculas.cantidadPeliculasActivas();
    }
}
