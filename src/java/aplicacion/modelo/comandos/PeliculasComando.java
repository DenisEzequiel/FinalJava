/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.datos.ParametroBD;
import aplicacion.modelo.entidades.Parametro;
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
        
        int cantidadDePeliculas = cDp.cantidadPeliculasActivas();
        ArrayList<Pelicula> listaPeliculas;
        if(request.getParameter("tipo")!=null)
        {
            if(request.getParameter("tipo").equals("estreno"))             
                listaPeliculas = cDp.obtenerEstrenos((paginaActual-1)*9,9);
            else
                listaPeliculas = cDp.obtenerGenero(Integer.parseInt(request.getParameter("tipo")),(paginaActual-1)*9,9);
          request.getSession().setAttribute("generoObtenido",true);
        }
        else if(request.getParameter("nombrePelicula")!=null)
        {
            listaPeliculas = cDp.obtenerPeliculas(request.getParameter("nombrePelicula"),(paginaActual-1)*9,9);
          request.getSession().setAttribute("generoObtenido",true);
        }
        else
            listaPeliculas = cDp.buscarPeliculas((paginaActual-1)*9,9);
      
     
        ParametroBD pbd = new ParametroBD();
        Parametro par = pbd.obtenerParametros();
        
        request.getSession().setAttribute("parametro", par);
        request.getSession().setAttribute("listaCartelera", listaPeliculas);
        request.getSession().setAttribute("cantidadPeliculas", cantidadDePeliculas);
        request.getSession().setAttribute("generoObtenido", null);
        return "cartelera.jsp";
    }
}
