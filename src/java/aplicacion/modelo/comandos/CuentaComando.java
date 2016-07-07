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
            SimpleDateFormat formato =  new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = null;
            Usuario usuarioModificado = new Usuario();
            try
            {
                fecha = formato.parse(request.getParameter("fechaNacimiento"));
               
                usuarioModificado.setFechaNacimiento(new java.sql.Date(fecha.getTime()));
            }
            catch(ParseException e)
            { }
            
            usuarioModificado.setIdUsuario(usu.getIdUsuario());
            usuarioModificado.setNombre(request.getParameter("nombre"));
            usuarioModificado.setApellido(request.getParameter("apellido"));
            usuarioModificado.setDireccion(request.getParameter("direccion"));
            usuarioModificado.setTelefono(request.getParameter("telefono"));
            usuarioModificado.setMail(request.getParameter("mail"));
            usuarioModificado.setDni(request.getParameter("dni"));
                      
           // usuBD.actualizarDatos(usu.getIdUsuario(),request.getParameter("nombre"),request.getParameter("apellido"),request.getParameter("direccion"),
                               //   request.getParameter("telefono"),request.getParameter("mail"),request.getParameter("dni"),request.getParameter("fechaNacimiento"));
            CdeU.modificarUsuario(usuarioModificado);
            
            usu.setNombre(request.getParameter("nombre"));
            usu.setApellido(request.getParameter("apellido"));
            usu.setDireccion(request.getParameter("direccion"));
            usu.setTelefono(request.getParameter("telefono")); 
            usu.setMail(request.getParameter("mail"));
            usu.setDni(request.getParameter("dni"));
            usu.setFechaNacimiento(new java.sql.Date(fecha.getTime()));
                     
            request.getSession().setAttribute("usuario", usu);
            request.getSession().setAttribute("tabActual", "1");
            
        }
        else
        {
            request.getSession().setAttribute("tabActual", "2");
            Usuario usuario = CdeU.buscarUsuario(usu.getNombreUsuario(), request.getParameter("contraAnterior"));
            if(usuario!=null)
            {
                if(request.getParameter("nuevaContra").equals(request.getParameter("repiteContra")))
                {
                    boolean exito = CdeU.modificarContrasenia(usu.getIdUsuario(),request.getParameter("nuevaContra"));
                    if(exito)
                        request.getSession().setAttribute("contraCambiada","1");
                    else
                        request.getSession().setAttribute("contraCambiada","0");                    
                    return  "/cuenta.jsp";
                }
            }
            request.getSession().setAttribute("contraCambiada","0");
        }
        return  "/cuenta.jsp";
    }
    
}
