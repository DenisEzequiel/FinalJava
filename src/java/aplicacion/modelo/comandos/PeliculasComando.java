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
import java.util.ArrayList;
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
        
        if(request.getParameter("tipo")!=null)
        {
            
        switch(request.getParameter("tipo"))
        {case "estreno": request.getSession().setAttribute("tipo","estreno"); break;
        case "buscador":request.getSession().setAttribute("tipo","buscador");break;
        default:request.getSession().setAttribute("tipo",Integer.parseInt(request.getParameter("tipo")));break;
        }
        
        }
        
        if(request.getParameter("paginacionActual")==null)
        {
            paginaActual = 1;
            
        }
        else
        {
            paginaActual = Integer.parseInt(request.getParameter("paginacionActual"));
        }
        
        request.setAttribute("pActual", paginaActual);
        cDp = new CatalogoDePeliculas();
        
        int cantidadDePeliculas = 0;
        ArrayList<Pelicula> listaPeliculas = null;
        try
        {
            if(request.getSession().getAttribute("tipo")!=null)
            {
                if(request.getSession().getAttribute("tipo").equals("estreno"))             
                {
                    listaPeliculas = cDp.obtenerEstrenos((paginaActual-1)*9,9);
                    cantidadDePeliculas=cDp.cantidadEstrenosActivos();
                }

                else if(request.getSession().getAttribute("tipo").equals("buscador"))
                {
                    listaPeliculas = cDp.obtenerPeliculas(request.getParameter("nombrePelicula"),(paginaActual-1)*9,9);
                    cantidadDePeliculas=cDp.cantidadBuscadorActivos(request.getParameter("nombrePelicula"));
                    if(listaPeliculas.isEmpty())
                        request.getSession().setAttribute("errorNoEncontradas",true);
                    request.getSession().setAttribute("generoObtenido",true);
                }

                else
                {
                    listaPeliculas = cDp.obtenerGenero((Integer)request.getSession().getAttribute("tipo"),(paginaActual-1)*9,9);
                    request.getSession().setAttribute("generoObtenido",true);
                    cantidadDePeliculas=cDp.cantidadGenerosActivos((Integer)request.getSession().getAttribute("tipo"));
                }
            }
            else
            { 
                listaPeliculas = cDp.buscarPeliculas((paginaActual-1)*9,9);
                cantidadDePeliculas = cDp.cantidadPeliculasActivas();
            }
        }
        catch(Exception ex)
        {
            //NO ENTIENDO CÓDIGO, VER QUE HACER CON LAS EXCEPCIONES
        }
     
        ParametroBD pbd = new ParametroBD();
        Parametro par = pbd.obtenerParametros();
        
        request.getSession().setAttribute("parametro", par);
        request.getSession().setAttribute("listaCartelera", listaPeliculas);
        request.getSession().setAttribute("cantidadPeliculas",cantidadDePeliculas);
        request.getSession().setAttribute("generoObtenido", null);
        return "cartelera.jsp";
    }
}
