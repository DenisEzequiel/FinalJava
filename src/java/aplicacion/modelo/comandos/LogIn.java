/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;
import aplicacion.modelo.entidades.Usuario;
import aplicacion.modelo.negocio.CatalogoDeUsuarios;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JP
 */
public class LogIn extends Comando
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
        
        String PAnterior = (String)request.getSession().getAttribute("anterior");
       
        String nomUsu = request.getParameter("nomUsu");
        String contra = request.getParameter("contra");
        Usuario usu = CdeU.buscarUsuario(nomUsu, contra);
        
        if(usu!=null)
        {
             request.getSession().setAttribute("usuario", usu);
             request.getSession().setAttribute("PActual", PAnterior);
        }
        return "/index.jsp";
    }
}
