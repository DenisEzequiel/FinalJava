/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Genero;
import aplicacion.modelo.entidades.Pelicula;
import aplicacion.modelo.entidades.Usuario;
import aplicacion.modelo.negocio.CatalogoDeGeneros;
import aplicacion.modelo.negocio.CatalogoDePeliculas;
import aplicacion.modelo.negocio.CatalogoDeUsuarios;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JP
 */
public class EditarPeliculaComando extends Comando
{
    CatalogoDePeliculas CdeP;
    CatalogoDeGeneros CdeG;
    
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        CdeP = new CatalogoDePeliculas();
        CdeG = new CatalogoDeGeneros();
        Pelicula PeliEditada = new Pelicula();
        ArrayList<Genero> generos = CdeG.obtenerGeneros();
        PeliEditada.setIdPelicula(Integer.parseInt(request.getParameter("ID")));
        PeliEditada.setFormato(request.getParameter("formPel"));
        PeliEditada.setNombre(request.getParameter("nomPel"));
        PeliEditada.setDuracion(Integer.parseInt(request.getParameter("durPel")));
        PeliEditada.setPrecioVenta(Float.parseFloat(request.getParameter("pvtaPel")));
        PeliEditada.setReparto(request.getParameter("repPel"));
        PeliEditada.setSinopsis(request.getParameter("sinPel"));
        PeliEditada.setStockAlquiler(Integer.parseInt(request.getParameter("stockAlqPel")));
        PeliEditada.setStockVenta(Integer.parseInt(request.getParameter("stockVtaPel")));
        PeliEditada.setUrlTrailer(request.getParameter("urlPel"));
        PeliEditada.setAnio(Integer.parseInt(request.getParameter("anioPel")));
        SimpleDateFormat formato =  new SimpleDateFormat("yyyy-MM-dd");
        Date fecha = null;
            try
            {
                fecha = formato.parse(request.getParameter("fCargaPel"));              
                PeliEditada.setFechaCarga(new java.sql.Date(fecha.getTime()));
            }
            catch(ParseException e)
            {
                
            }
        String selecc[] = request.getParameterValues("generos");
        for(Genero g: generos)
        {
            for(int i=0; i<selecc.length;i++)  
                {
                    if(g.getIdGenero()==Integer.parseInt(selecc[i]))
                    {
                        PeliEditada.agregarGenero(g);
                    }
                }
        }
        Boolean esActivo = (request.getParameter("Activa")!=null);
        PeliEditada.setActivo(esActivo);
        
        CdeP.actualizarPelicula(PeliEditada);
        ArrayList<Pelicula> peliculas = CdeP.obtenerPeliculas();
        request.getSession().setAttribute("ListaPeliculas", peliculas);
        request.getSession().setAttribute("PeliEdit", PeliEditada);
        
        return"/ABMPeliculas.jsp";
    }
    
}
