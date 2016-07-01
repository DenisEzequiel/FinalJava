/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Usuario;
import aplicacion.modelo.negocio.CatalogoDeUsuarios;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JP
 */
public class AdminUsuariosComando extends Comando
{
    CatalogoDeUsuarios CdeUs = new CatalogoDeUsuarios();
    
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        ArrayList<Usuario> usuarios = CdeUs.obtenerUsuarios();
        Usuario usuarioEdit = usuarios.get(0);
        request.getSession().setAttribute("ListaUsuarios", usuarios);
        request.getSession().setAttribute("UsuarioEdit", usuarioEdit);
        
        return "/ABMUsuarios.jsp";
    }
    
}
