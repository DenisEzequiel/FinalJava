/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Genero;
import aplicacion.modelo.entidades.Pelicula;
import aplicacion.modelo.negocio.CatalogoDeGeneros;
import aplicacion.modelo.negocio.CatalogoDePeliculas;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JP
 */
public class AdminPeliculasComando extends Comando
{
    CatalogoDePeliculas CdeP;
    CatalogoDeGeneros CdeG;
    
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response) 
    {
        CdeP = new CatalogoDePeliculas();
        CdeG = new CatalogoDeGeneros();
        ArrayList<Pelicula> peliculas = CdeP.obtenerPeliculas();
        ArrayList<Genero> generos = CdeG.obtenerGeneros();
        Pelicula peliEdit = peliculas.get(0);
        request.getSession().setAttribute("ListaPeliculas", peliculas);
        request.getSession().setAttribute("ListaGeneros", generos);
        request.getSession().setAttribute("PeliEdit", peliEdit);
        
        return "/ABMPeliculas.jsp";
    }
    
}
