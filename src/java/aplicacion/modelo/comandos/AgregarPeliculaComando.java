/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;
import aplicacion.modelo.entidades.Pelicula;
import aplicacion.modelo.negocio.CatalogoDePeliculas;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class AgregarPeliculaComando extends Comando
{
    Pelicula pelicula;
    CatalogoDePeliculas cDp= new CatalogoDePeliculas();
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        pelicula=new Pelicula();
        pelicula.setActivo(true);
        pelicula.setFormato(request.getParameter("formPel"));
        pelicula.setNombre(request.getParameter("nomPel"));
        pelicula.setDuracion(Integer.parseInt(request.getParameter("durPel")));
        pelicula.setPrecioVenta(Float.parseFloat(request.getParameter("pvtaPel")));
        pelicula.setReparto(request.getParameter("repPel"));
        pelicula.setSinopsis(request.getParameter("sinPel"));
        pelicula.setStockAlquiler(Integer.parseInt(request.getParameter("stockAlqPel")));
        pelicula.setStockVenta(Integer.parseInt(request.getParameter("stockVtaPel")));
        pelicula.setUrlTrailer(request.getParameter("urlPel"));
        pelicula.setAnio(Integer.parseInt(request.getParameter("anioPel")));
        DateFormat hoyFormato = new SimpleDateFormat("yyyy/MM/dd");      
        Date hoy=new Date();
        hoyFormato.format(hoy);
        pelicula.setFechaCarga(hoy);
        
        
        cDp.agregarPelicula(pelicula);
        request.getSession().setAttribute("pelicula", pelicula);
        return ("/ABMPelicula.jsp");
    }
    
    
}
