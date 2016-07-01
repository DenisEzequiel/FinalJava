
<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%@page import="aplicacion.modelo.entidades.Parametro"%>
<%@page import="aplicacion.modelo.entidades.LineaPedido"%>
<%@page import="aplicacion.modelo.entidades.Pedido"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

            <section id="cart_items">
                    <div class="container">
                        
                             <div class="col-lg-3">
                              <label class="alinear"> Cantidad de días a alquilar: </label>
                            </div>
                        
                        <%int cantD=(Integer)session.getAttribute("cantidadDias");%>
                        
                        <div class="col-lg-1">
                              <div class="signup-form">
                                 
                                     <form action="Controlador" method="post">
                                         <input type="hidden" name="form" value="SetearFechaPedidoComando">
                                       <input type="number" min="1" max="15" value="<%=cantD%>" class="control form-control" name="cantDias" onchange="submit()">
                                    </form>              
                                </div>
                            </div>
                            <div class="table-responsive cart_info">
                                    <table class="table table-condensed">
                                            <thead>
                                                    <tr class="cart_menu">
                                                            <td class="image">Película</td>
                                                            <td class="description">Descripción</td>
                                                            <td class="price">Precio</td>
                                                            <td class="quantity">Cantidad</td>
                                                            <td class="total">Subtotal</td>
                                                            <td></td>
                                                    </tr>
                                            </thead>
                                            <tbody>
                                            <% Pedido ped = (Pedido)session.getAttribute("pedido");
                                               for(LineaPedido lp: ped.getLineas())
                                               {
                                            %>
                                                    <tr>
                                                            <td class="cart_product">
                                                                    <a href="#"><img src="imagenes/two.png" alt=""></a>
                                                            </td>
                                                            <td class="cart_description">
                                                                    <h4><%=lp.getPelicula().getNombre()%></h4>
                                                                    <% if(lp.isEsAlquiler())
                                                                       {
                                                                         %><h5>Tipo: Alquiler</h5><%  
                                                                       }
                                                                       else
                                                                       {
                                                                         %><h5>Tipo: Compra</h5><% 
                                                                       }
                                                                    %>
                                                                    <h5>ID producto: <%=lp.getPelicula().getIdPelicula()%></h5>
                                                            </td>
                                                            <td class="cart_price">
                                                                    <% if(lp.isEsAlquiler())
                                                                       {
                                                                          %><h5>$ <%=String.format("%.2f",lp.getPelicula().getPrecioAlquiler())%></h5><%  
                                                                       }
                                                                       else
                                                                       {
                                                                          %><h5>$ <%=String.format("%.2f",lp.getPelicula().getPrecioVenta())%></h5><% 
                                                                       }
                                                                    %>
                                                            </td>
                                                            <td class="cart_quantity">
                                                                    <div class="cart_quantity_button">
                                                                            <form action="Controlador" method="post">
                                                                                <input type="hidden"  name="form" value="ActualizarLineaComando"/>
                                                                                <input type="hidden" name="idPelicula" value="<%=lp.getPelicula().getIdPelicula()%>"/>
                                                                                <input type="hidden" name="tipoLinea" value="<%=lp.isEsAlquiler()%>"/>
                                                                                <input onchange="submit()"<%if(lp.isEsAlquiler()){%>disabled<%}%> class="cart_quantity_input" type="number" name="cantidad" value="<%=lp.getCantidad()%>"/>
                                                                            </form>
                                                                    </div>
                                                            </td>
                                                            <td class="cart_total">
                                                                    <p class="cart_total_price">$ <%=String.format("%.2f",lp.getSubtotal())%></p>
                                                            </td>
                                                            <td class="cart_delete">
                                                                    <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
                                                            </td>
                                                    </tr>
                                                <% } %>
                                            </tbody>
                                    </table>
                            </div>
                    </div>
            </section> <!--/#cart_items-->

            <section id="form">
                    <div class="container">
                        <div class="row">
                             <div class="col-sm-6">
                            <%
                                if(session.getAttribute("errorStock")!= null && session.getAttribute("usuario")!=null)
                                {
                                    
                                       %> 
                                            <div class="alert alert-danger">
                                                Stock insuficiente en la linea <%=session.getAttribute("errorStock")%>
                                            </div>
                                                <% session.setAttribute("errorStock", null);
                                    }
                                else if(session.getAttribute("exitoPedido")!=null)
                                { Usuario usu=(Usuario)session.getAttribute("usuario");
                                %> 
                                            <div class="alert alert-success">
                                                Pedido realizado con éxito ! Un mail para confirmar el pago será enviado a <%=usu.getMail()%>
                                            </div>
                                                <%session.setAttribute("exitoPedido", null);}         


          
                                   %>
                              
                            </div>
                            <div class="col-sm-6">
                                 <div class="signup-form">
                                 
                                     <form action="Controlador" method="post">
                                         <input type="hidden" name="form" value="FinalizarPedidoComando">
                                        <button type="submit" class="btn btn-default">Finalizar pedido</button> 
                                    </form>
                                        
                               
                                </div>
                              
                            </div>
                            
                        </div>
                    </div>
            </section><!--/#do_action-->

        <jsp:include page="footer.jsp"/>
    </body>
</html>