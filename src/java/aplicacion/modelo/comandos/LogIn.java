/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;
import aplicacion.modelo.comandos.Comando;
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
    
    public String ejecutar (HttpServletRequest request, HttpServletResponse response)
    { 
        String nomUsu = request.getParameter("nomUsu");
        String contra = request.getParameter("contra");
        
        Usuario usu = CdeU.buscarUsuario(nomUsu, contra);
        
        //Guardar el usuario 
        
        return "direccion de la proxima pagina";
    }
}
