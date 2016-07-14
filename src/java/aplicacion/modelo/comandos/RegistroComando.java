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
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JP
 */
public class RegistroComando extends Comando
{
    CatalogoDeUsuarios CdeU = new CatalogoDeUsuarios();
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
         
        Usuario us = new Usuario();
        
        SimpleDateFormat formato =  new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = null;
            try
            {
                fecha = formato.parse(request.getParameter("fechaNacimiento"));              
                us.setFechaNacimiento(new java.sql.Date(fecha.getTime()));
            }
            catch(ParseException e)
            {
                request.setAttribute("ex", "Ha ocurrido un error");
            }
            
        us.setNombre((String)request.getParameter("Nombre"));
        us.setApellido((String)request.getParameter("Apellido"));
        us.setContrasena((String)request.getParameter("Contra1"));
        String dire =(String)request.getParameter("Calle")+" "+(String)request.getParameter("Num")+" "+(String)request.getParameter("Piso")+" "+(String)request.getParameter("Depto");
        us.setDireccion(dire);
        us.setTelefono((String)request.getParameter("Tel"));
        us.setDni((String)request.getParameter("Dni")); 
        us.setMail((String)request.getParameter("Email"));
        us.setNombreUsuario((String)request.getParameter("Usu"));
        try
        {
        CdeU.registrarUsuario(us);
       
        }
        catch(AefilepException ex)
        {
             request.setAttribute("ex",ex.getMessage());
             return "/signup.jsp";
        }
         request.getSession().setAttribute("usuario", us);
        request.getSession().setAttribute("exitoLogin", true);
       
        return "/index.jsp";
        
    }
    
}
