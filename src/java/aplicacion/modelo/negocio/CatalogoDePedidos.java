/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.negocio;

import aplicacion.modelo.datos.PedidoBD;
import aplicacion.modelo.entidades.Pedido;
import java.util.ArrayList;

/**
 *
 * @author User
 */
public class CatalogoDePedidos {
    PedidoBD pedidos=new PedidoBD();
    public void registrarPedido(Pedido p) throws Exception
    {
        
        
        pedidos.registrarPedido(p);
        
    }
    
    public void cerrarPedido(Pedido p) throws Exception
    {
        pedidos.cerrarPedido(p);
    }
    
    public ArrayList<Pedido> obtenerPedidosPendientes(int idUsu) throws Exception
    {
        return pedidos.obtenerPedidosPendientes(idUsu);
    }
    
    public ArrayList<Pedido> obtenerPedidos(int idUsu) throws Exception
    {
        return pedidos.obtenerPedidos(idUsu);
    }
}
