/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author marti_000
 */
public class RedireccionarComando extends Comando
{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        request.getSession().setAttribute("form", request.getParameter("form"));
        int c = Integer.parseInt((String)request.getParameter("pagina"));
        switch(c)
        {
            case 2:
                request.getSession().setAttribute("form","pelicuas");
                return "Controlador";
        }
               
        return "index.jsp";    
    }
    
}