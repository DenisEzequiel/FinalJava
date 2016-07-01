/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import aplicacion.modelo.entidades.Pedido;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class SetearFechaPedidoComando extends Comando {

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse response) {
        
        Integer dias=Integer.parseInt(request.getParameter("cantDias"));
        Pedido p= (Pedido) request.getSession().getAttribute("pedido");
        p.setFechaDesde(p.getFechaRealizacion());
        p.setFechaHasta(devolverFecha(dias, p.getFechaDesde()));
        request.getSession().setAttribute("cantidadDias", dias);
        return "/carro.jsp";
    }
    
    
    private Date devolverFecha(int dias, Date fecha){
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(fecha); // Configuramos la fecha que se recibe
      calendar.add(Calendar.DAY_OF_YEAR, dias);  	
      return calendar.getTime(); // Devuelve el objeto Date con los nuevos días añadidos
    }
    
}
