/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;
import aplicacion.modelo.entidades.LineaPedido;
import aplicacion.modelo.entidades.Pedido;
import aplicacion.modelo.entidades.Pelicula;
import aplicacion.modelo.negocio.CatalogoDePeliculas;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JP
 */
public class AgregarLineaComando extends Comando
{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        int idPelicula = Integer.parseInt(request.getParameter("idPelicula"));
        boolean alquiler = request.getParameter("tipoLinea").equals("Alquilar");
        Pedido pedido = (Pedido)request.getSession().getAttribute("pedido");
        int lineaExiste=0;
        for(LineaPedido lp: pedido.getLineas())
        {
            if(lp.getPelicula().getIdPelicula()==idPelicula && (lp.isEsAlquiler()==alquiler))
            {
                lp.setCantidad(lp.getCantidad()+1);
                lineaExiste=1;
            }
        }
        if(lineaExiste==0)
        {
            CatalogoDePeliculas cdp = new CatalogoDePeliculas();
            LineaPedido linea = new LineaPedido();
            linea.setEsAlquiler(alquiler);
            Pelicula peli = cdp.obtenerPelicula(idPelicula);
            linea.setCantidad(1);
            linea.setPelicula(peli);
            pedido.setLinea(linea);
        }
        request.getSession().setAttribute("pedido",pedido);
        request.getSession().setAttribute("exitoPeliculaAgregada", true);
        
        return "/cartelera.jsp";
    }
    
}
