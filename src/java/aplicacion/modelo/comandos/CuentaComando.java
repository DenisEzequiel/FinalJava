/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import aplicacion.modelo.entidades.Usuario;
import aplicacion.modelo.negocio.CatalogoDeUsuarios;
import aplicacion.utilidades.AefilepException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 *
 * @author Alumno
 */
public class CuentaComando extends Comando
{
    CatalogoDeUsuarios CdeU = new CatalogoDeUsuarios();
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response) 
    {              
        Usuario usu = (Usuario)request.getSession().getAttribute("usuario");
        if(request.getParameter("actDatos")!=null)
        {       
            usu.setNombre(request.getParameter("nombre"));
            usu.setApellido(request.getParameter("apellido"));
            usu.setDireccion(request.getParameter("direccion"));
            usu.setTelefono(request.getParameter("telefono"));
            usu.setMail(request.getParameter("mail"));
            usu.setDni(request.getParameter("dni"));
            
            SimpleDateFormat formato =  new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = null;
            try
            {
                fecha = formato.parse(request.getParameter("fechaNacimiento"));
                usu.setFechaNacimiento(new java.sql.Date(fecha.getTime()));
            }
            catch(ParseException e)
            {
                request.setAttribute("ex", "Ha ocurrido un error");
                return "/cuenta.jsp";
            }
            
            try
            {
                CdeU.editarUsuario(usu);
                usu = CdeU.buscarUsuario(usu.getNombreUsuario(), usu.getContrasena());
            }
            catch(AefilepException ex)
            {
                request.setAttribute("ex",ex.getMessage());
                return "/cuenta.jsp";
            }
            
            request.getSession().setAttribute("usuario", usu);
            request.setAttribute("tabActual", "1");
        }
        else
        {
            request.setAttribute("tabActual", "2");
            request.setAttribute("Scroll",true);
            Usuario usuario = null;
            try 
            {
                usuario = CdeU.buscarUsuario(usu.getNombreUsuario(), request.getParameter("contraAnterior"));
                if(usuario!=null && request.getParameter("nuevaContra").equals(request.getParameter("repiteContra")))
                {
                    usuario.setContrasena(request.getParameter("nuevaContra"));
                    CdeU.editarUsuario(usuario);
                    request.setAttribute("contraCambiada","1");
                    request.getSession().setAttribute("usuario", usuario);
                }
                else
                {
                    request.setAttribute("contraCambiada","0");
                }
            } 
            catch (Exception ex) 
            {
               request.setAttribute("ex", ex.getMessage());
               request.setAttribute("contraCambiada","0");
               return "/cuenta.jsp";
            }
        }
        return  "/cuenta.jsp";
    }
    
}
