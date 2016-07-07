/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;
import aplicacion.modelo.entidades.Pedido;
import aplicacion.modelo.entidades.Usuario;
import aplicacion.modelo.negocio.CatalogoDeUsuarios;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JP
 */
public class LogInComando extends Comando
{
    CatalogoDeUsuarios CdeU = new CatalogoDeUsuarios();
    
    /**
     *
     * @param request
     * @param response
     * @return
     */
    @Override
    public String ejecutar (HttpServletRequest request, HttpServletResponse response)
    { 
        
       
       
        String nomUsu = request.getParameter("nomUsu");
        String contra = request.getParameter("contra");
        Boolean recordar = (request.getParameter("recordarUsu")!=null);
        Usuario usu = CdeU.buscarUsuario(nomUsu, contra);
        Pedido p=(Pedido)request.getSession().getAttribute("pedido");
        if(usu!=null)
        {
            if(recordar)
            {
                Cookie recordarNombre = new Cookie("nomUsuarioAefilep", nomUsu);
                Cookie recordarContra = new Cookie("contraAefilep", contra);
                recordarNombre.setMaxAge(356*24*60*60);
                recordarContra.setMaxAge(365*24*60*60);
                recordarContra.setPath("/");
                recordarNombre.setPath("/");
                response.addCookie(recordarNombre);
                response.addCookie(recordarContra);
            }
            
            request.getSession().setAttribute("usuario", usu);
             request.getSession().setAttribute("exitoLogin", true);
             if( request.getSession().getAttribute("usuarioNoLogueado")!=null)
             {
             request.getSession().setAttribute("usuarioNoLogueado", null);
              return("/carro.jsp");
             }
             return "/index.jsp";
        }
        else{
              return "/login.jsp";
             }
        
    }
}
