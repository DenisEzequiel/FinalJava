/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Usuario;
import aplicacion.modelo.negocio.CatalogoDeUsuarios;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
        //Guardamos pag anterior para redireccionar.
        String PAnterior = (String)request.getSession().getAttribute("anterior");
        
        HttpSession sesion = request.getSession();
        //Genero objeto usuario que va hacia la BD
        Usuario us = new Usuario();
        us.setNombre((String)request.getParameter("Nombre"));
        us.setApellido((String)request.getParameter("Apellido"));
        us.setContrasena((String)request.getParameter("Contra1"));
        String dire =(String)request.getParameter("Calle")+" "+(String)request.getParameter("Num");
        us.setDireccion(dire);
        us.setTelefono((String)request.getParameter("Tel"));
        us.setDni((String)request.getParameter("Dni"));
        int anio = Integer.parseInt((String)request.getParameter("Ano"));
        int mes = Integer.parseInt((String)request.getParameter("Mes"));
        int dia = Integer.parseInt((String)request.getParameter("Dia"));
        Date f = new Date(anio,mes,dia);
        us.setFechaNacimiento(f);
        us.setMail((String)request.getParameter("Email"));
        us.setNombreUsuario((String)request.getParameter("Usu"));
        
        CdeU.registrarUsuario(us);
        
        request.getSession().setAttribute("pagina", PAnterior);
        return "/index.jsp";
    }
    
}
