/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import aplicacion.modelo.entidades.Parametro;
import aplicacion.modelo.datos.ParametroBD;
/**
 *
 * @author marti_000
 */
public class ContactoComando extends Comando
{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {      
            ParametroBD pbd = new ParametroBD();
            Parametro par = pbd.obtenerParametros();           
            request.getSession().setAttribute("parametro", par);
 
            return "contacto.jsp";
                           
    }
    
}
