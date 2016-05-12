/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Pelicula;
import aplicacion.modelo.negocio.CatalogoDePeliculas;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author marti_000
 */
public class PeliculasComando extends Comando
{
    private CatalogoDePeliculas cDp;
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        int paginaActual = 1;
        if(request.getParameter("paginacionActual")==null)
        {
            paginaActual = 1;
        }
        else
        {
            paginaActual = Integer.parseInt(request.getParameter("paginacionActual"));
        }
        cDp = new CatalogoDePeliculas();
        
        int cantidadDePeliculas = cDp.buscarCantidadPelicula();
        ArrayList<Pelicula> listaPeliculas = cDp.buscarPeliculas((paginaActual-1)*9,9);
        
        
        request.getSession().setAttribute("listaCartelera", listaPeliculas);
        request.getSession().setAttribute("cantidadPeliculas", cantidadDePeliculas);
       return "cartelera.jsp";
    }
}
