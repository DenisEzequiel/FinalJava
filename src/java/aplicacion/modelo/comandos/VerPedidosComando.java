/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Pedido;
import aplicacion.modelo.negocio.CatalogoDePedidos;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JP
 */
public class VerPedidosComando extends Comando
{
    CatalogoDePedidos cDePed;
    
    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response)
    {
        cDePed = new CatalogoDePedidos();
        int idUsusario = Integer.parseInt(request.getParameter("idUsuPedidos"));
        ArrayList<Pedido> pedidosPendientes = null;
        try 
        {
            pedidosPendientes = cDePed.obtenerPedidosPendientes(idUsusario);
        } 
        catch (Exception ex) 
        {
           request.setAttribute("ex", ex.getMessage());
           return "/Devoluciones.jsp";
        }
        request.getSession().setAttribute("ListaPendientes", pedidosPendientes);
        request.getSession().setAttribute("Scroll",true);
        return "/Devoluciones.jsp";
    }
    
}
