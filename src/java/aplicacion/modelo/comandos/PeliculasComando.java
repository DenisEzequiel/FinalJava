/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author marti_000
 */
public class PeliculasComando extends Comando
{
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        return "/error.jsp";
    }
}
