/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Usuario;
import aplicacion.modelo.negocio.CatalogoDeUsuarios;
import aplicacion.utilidades.AefilepException;
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
public class AgregarUsuarioComando extends Comando
{
    CatalogoDeUsuarios cDeUsu;
    
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        cDeUsu = new CatalogoDeUsuarios();
        Usuario usNuevo = new Usuario();
        SimpleDateFormat formato =  new SimpleDateFormat("yyyy-MM-dd");
        Date fecha = null;
            try
            {
                fecha = formato.parse(request.getParameter("fechaNacimiento"));              
                usNuevo.setFechaNacimiento(new java.sql.Date(fecha.getTime()));
            }
            catch(ParseException e)
            {
                
            }
        usNuevo.setNombre((String)request.getParameter("Nombre"));
        usNuevo.setApellido((String)request.getParameter("Apellido"));
        usNuevo.setContrasena((String)request.getParameter("Contra1"));
        usNuevo.setDireccion((String)request.getParameter("Calle"));
        usNuevo.setTelefono((String)request.getParameter("Tel"));
        usNuevo.setDni((String)request.getParameter("Dni")); 
        usNuevo.setMail((String)request.getParameter("Email"));
        usNuevo.setNombreUsuario((String)request.getParameter("Usu"));
        Boolean esAdmin = (request.getParameter("Admin")!=null);
        Boolean esActivo = (request.getParameter("Activo")!=null);
        Boolean esBloq = (request.getParameter("Bloqueado")!=null);
        usNuevo.setActivo(esActivo);
        usNuevo.setEsAdmin(esAdmin);
        usNuevo.setBloqueado(esBloq);
        try
        {
        cDeUsu.agregarUsuario(usNuevo);
        ArrayList<Usuario> usuarios = cDeUsu.obtenerUsuarios();
        request.getSession().setAttribute("ListaUsuarios", usuarios);
        request.getSession().setAttribute("Scroll",true);
        request.getSession().setAttribute("ExitoUsu", true);
        
        }
        catch(AefilepException ex)
        {
            request.setAttribute("ex", ex.getMessage());
            return"/ABMUsuarios.jsp";
        }
        
     
        return "/ABMUsuarios.jsp";
    }
    
}
