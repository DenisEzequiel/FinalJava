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
import aplicacion.utilidades.AefilepException;
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
            try
            {
            Parametro par = pbd.obtenerParametros();           
            request.getSession().setAttribute("parametro", par);
            }
            catch(AefilepException ex)
            {
                request.setAttribute("ex", ex.getMessage());
                return "contacto.jsp";
            }
            return "contacto.jsp";
                           
    }
    
}
