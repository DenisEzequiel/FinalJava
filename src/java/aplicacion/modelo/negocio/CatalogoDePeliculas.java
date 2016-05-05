/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.negocio;

import aplicacion.modelo.datos.PeliculaDB;
import aplicacion.modelo.entidades.Pelicula;

/**
 *
 * @author User
 */
public class CatalogoDePeliculas 
{  PeliculaDB peliculas;
    public void agregarPelicula(Pelicula pelicula)
    {
        peliculas=new PeliculaDB();
        peliculas.agregarPelicula(pelicula);
        
    }
}
