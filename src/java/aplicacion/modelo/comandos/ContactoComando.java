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
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            catch(Exception ex)
            {
                request.setAttribute("excepcion", "Error en el acceso a los datos de Aefilep");
            }
            return "contacto.jsp";
                           
    }
    
}
