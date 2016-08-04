/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Pedido;
import aplicacion.modelo.entidades.Usuario;
import aplicacion.modelo.negocio.CatalogoDePedidos;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class MisPedidosComando extends Comando
{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        CatalogoDePedidos cdp = new CatalogoDePedidos();
        Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");
        ArrayList<Pedido> pedidos ;
        try 
        {
            pedidos= cdp.obtenerPedidos(usuario.getIdUsuario());
        }
        catch (Exception ex) 
        {
            request.setAttribute("ex",ex.getMessage());
            return ("/pedidos.jsp");
        }
        request.setAttribute("pedidos", pedidos);
        return "/pedidos.jsp";
    }
    
}
