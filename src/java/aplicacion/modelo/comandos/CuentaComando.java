/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import aplicacion.modelo.datos.UsuarioBD;
import aplicacion.modelo.entidades.Usuario;

/**
 *
 * @author Alumno
 */
public class CuentaComando extends Comando
{
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response) 
    {
        UsuarioBD usuBD = new UsuarioBD();
        Usuario usu = (Usuario)request.getSession().getAttribute("usuario");
        
        usuBD.actualizarDatos(usu.getIdUsuario(),request.getParameter("nombre"),request.getParameter("apellido"),request.getParameter("direccion"),request.getParameter("telefono"),request.getParameter("mail"));
        
        usu.setNombre(request.getParameter("nombre"));
        usu.setApellido(request.getParameter("apellido"));
        usu.setDireccion(request.getParameter("direccion"));
        usu.setTelefono(request.getParameter("telefono")); 
        usu.setMail(request.getParameter("mail"));
        
        request.getSession().setAttribute("usuario", usu);
        
        return  "/index.jsp";
    }
    
}
