/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;
import aplicacion.modelo.entidades.Pelicula;
import aplicacion.modelo.entidades.Genero;
import aplicacion.modelo.negocio.CatalogoDePeliculas;
import aplicacion.modelo.negocio.CatalogoDeGeneros;
import java.io.InputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
/**
 *
 * @author User
 */
public class AgregarPeliculaComando extends Comando
{
    Pelicula pelicula;
    CatalogoDePeliculas cDp= new CatalogoDePeliculas();
    CatalogoDeGeneros cdG = new CatalogoDeGeneros();
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        
            ArrayList<Genero> generos = cdG.obtenerGeneros();
            Part img = null;
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

            Part imagen = null;
            try {
            imagen = request.getPart("imgPel");
            InputStream inputStream = imagen.getInputStream();
            if(inputStream!=null)
                pelicula.setImagen(inputStream);
              } catch (Exception e)
            {}
            
            try
            {
                img = request.getPart("imgPel");
                pelicula.setImagen(img.getInputStream());
            } 
            catch (IOException ex)
            {
                Logger.getLogger(AgregarPeliculaComando.class.getName()).log(Level.SEVERE, null, ex);
            }
            catch (ServletException ex)
            {
                Logger.getLogger(AgregarPeliculaComando.class.getName()).log(Level.SEVERE, null, ex);
            }
            String selecc[] = request.getParameterValues("generos");
            for(Genero g: generos)
            {
                for(int i=0; i<selecc.length;i++)  
                {
                    if(g.getIdGenero()==Integer.parseInt(selecc[i]))
                    {
                        pelicula.agregarGenero(g);
                    }
                }
            }
            
            ArrayList<Pelicula> peliculas = new ArrayList<>();
            try
            {
                cDp.agregarPelicula(pelicula);
                peliculas = cDp.obtenerPeliculas();
                request.getSession().setAttribute("ListaPeliculas", peliculas);
                request.getSession().setAttribute("PeliEdit", pelicula);
                request.getSession().setAttribute("Scroll",true);
                request.getSession().setAttribute("ExitoPeli", true);
            }
            catch(Exception ex)
            {
                request.getSession().setAttribute("ExitoPeli", false);
            }
            
            
            
        
        return ("/ABMPeliculas.jsp");
    }
    
    
}
