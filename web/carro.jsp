
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
                            <div class="breadcrumbs">
                                    <ol class="breadcrumb">
                                      <li><a href="http://themifycloud.com/demos/templates/eshop/cart.html#">Home</a></li>
                                      <li class="active">Shopping Cart</li>
                                    </ol>
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
                                                                    <a href=""><img src="imagenes/two.png" alt=""></a>
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
                                                                          %><h5>$ <%=lp.getPelicula().getPrecioAlquiler()%></h5><%  
                                                                       }
                                                                       else
                                                                       {
                                                                         %><h5>$ <%=lp.getPelicula().getPrecioVenta()%></h5><% 
                                                                       }
                                                                    %>
                                                            </td>
                                                            <td class="cart_quantity">
                                                                    <div class="cart_quantity_button">
                                                                            <form action="Controlador" method="post">
                                                                                <input type="hidden"  name="form" value="ActualizarLineaComando"/>
                                                                                <input type="hidden" name="idPelicula" value="<%=lp.getPelicula().getIdPelicula()%>"/>
                                                                                <input type="hidden" name="tipoLinea" value="<%=lp.isEsAlquiler()%>"/>
                                                                                <input onchange="submit()" class="cart_quantity_input" type="number" name="cantidad" value="<%=lp.getCantidad()%>"/>
                                                                            </form>
                                                                    </div>
                                                            </td>
                                                            <td class="cart_total">
                                                                    <p class="cart_total_price"><%=lp.getSubtotal()%></p>
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

            <section id="do_action">
                    <div class="container">
                            <div class="heading">
                                    <h3>What would you like to do next?</h3>
                                    <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
                            </div>
                            <div class="row">
                                    <div class="col-sm-6">
                                            <div class="chose_area">
                                                    <ul class="user_option">
                                                            <li>
                                                                    <input type="checkbox">
                                                                    <label>Use Coupon Code</label>
                                                            </li>
                                                            <li>
                                                                    <input type="checkbox">
                                                                    <label>Use Gift Voucher</label>
                                                            </li>
                                                            <li>
                                                                    <input type="checkbox">
                                                                    <label>Estimate Shipping &amp; Taxes</label>
                                                            </li>
                                                    </ul>
                                                    <ul class="user_info">
                                                            <li class="single_field">
                                                                    <label>Country:</label>
                                                                    <select>
                                                                            <option>United States</option>
                                                                            <option>Bangladesh</option>
                                                                            <option>UK</option>
                                                                            <option>India</option>
                                                                            <option>Pakistan</option>
                                                                            <option>Ucrane</option>
                                                                            <option>Canada</option>
                                                                            <option>Dubai</option>
                                                                    </select>

                                                            </li>
                                                            <li class="single_field">
                                                                    <label>Region / State:</label>
                                                                    <select>
                                                                            <option>Select</option>
                                                                            <option>Dhaka</option>
                                                                            <option>London</option>
                                                                            <option>Dillih</option>
                                                                            <option>Lahore</option>
                                                                            <option>Alaska</option>
                                                                            <option>Canada</option>
                                                                            <option>Dubai</option>
                                                                    </select>

                                                            </li>
                                                            <li class="single_field zip-field">
                                                                    <label>Zip Code:</label>
                                                                    <input type="text">
                                                            </li>
                                                    </ul>
                                                    <a class="btn btn-default update" href="">Get Quotes</a>
                                                    <a class="btn btn-default check_out" href="">Continue</a>
                                            </div>
                                    </div>
                                    <div class="col-sm-6">
                                            <div class="total_area">
                                                    <ul>
                                                            <li>Cart Sub Total <span>$59</span></li>
                                                            <li>Eco Tax <span>$2</span></li>
                                                            <li>Shipping Cost <span>Free</span></li>
                                                            <li>Total <span>$61</span></li>
                                                    </ul>
                                                            <a class="btn btn-default update" href="">Update</a>
                                                            <a class="btn btn-default check_out" href="">Check Out</a>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </section><!--/#do_action-->

        <jsp:include page="footer.jsp"/>
    </body>
</html>