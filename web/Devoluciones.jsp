<%-- 
    Document   : Devoluciones
    Created on : 05/07/2016, 09:37:31
    Author     : JP
--%>

<%@page import="aplicacion.modelo.entidades.LineaPedido"%>
<%@page import="aplicacion.modelo.entidades.Pedido"%>
<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"/>
    <body>
        <jsp:include page="header.jsp"/>
        <%!ArrayList<Usuario> usuarios;%>
        <%! ArrayList<Pedido> pendientes;%>
        <% pendientes = (ArrayList)session.getAttribute("ListaPendientes");%>
        <% usuarios = (ArrayList)session.getAttribute("ListaEncontrados");%>
        <div class="cuenta">
            <div class="container"> 
                <div id="Edit" class="row">
                
                <form action="Controlador" method="post">  
                            <div class="col-lg-5 col-lg-offset-1">
                                <h2 class="title text-center">BUSCAR USUARIO</h2>
                                <input class="control form-control"  type="text" placeholder="ID" maxlength="15" name="ID">
                                <input class="control form-control" type="text" placeholder="Nombre" maxlength="15" name="Nombre">
                                <input class="control form-control" type="text" placeholder="Apellido" name="Apellido" maxlength="15" required>
                                <input class="control form-control" type="text" placeholder="DNI" name="Dni" pattern="^[0-9]*$" minlength="7" maxlength="9">     
                                <input type="hidden" name="form" value="BuscarUsuarioComando">
                                <button type="submit" class="btn btn-default">Buscar</button>
                            </div>
                </form>
                <%if(usuarios!=null){ %>    
                <div class="col-lg-5">
                    <h2 class="title text-center">Lista de Usuarios</h2>
                    <div class="table-responsive">
                        <div class="table-striped">
                            <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>DNI</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for(Usuario u:usuarios)
                                  {%>
                                  <tr>
                                    <td><%= u.getIdUsuario()%></td>
                                    <td><%= u.getNombre()%></td>
                                    <td><%= u.getApellido()%></td>
                                    <td><%= u.getDni()%></td>
                                    <td>
                                        <form action="Controlador" method="post">
                                        <input type="hidden"  name="form" value="VerPedidosComando"/>
                                        <input type="hidden" name="idUsuPedidos" value="<%= u.getIdUsuario()%>">
                                        <input type="submit" value="Ver Pedidos">
                                        </form>
                                    </td>
                                  </tr>
                                <%}%>
                            </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <%} %>
            </div>
            
            <div class="row">
                        <div class="col-sm-5 col-sm-offset-1">
                                                <div class="alert alert-success popover fade left <%if(session.getAttribute("ExitoCierre")!=null)
                                                                                { %> in <%
                                                                                    session.setAttribute("ExitoCierre", null); } %>">
                                                     
                                                         Pedido cerrado con éxito.
                                                </div>                              
                        </div>
            </div>
            
                <div class="row">
                <%if(pendientes!=null){ %>    
                <div class="col-lg-12">
                    <h2 class="title text-center">Pedidos pendientes de devolucion</h2>
                    <div class="table-responsive">
                        <div class="table-striped">
                            <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID Pedido</th>
                                    <th>F Desde</th>
                                    <th>F Hasta</th>
                                    <th>Peliculas</th>
                                    <th>Recargo</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for(Pedido p:pendientes)
                                  {%>
                                  <tr>
                                    <td><%= p.getIdPedido()%></td>
                                    <td><%= p.getFechaDesde() %></td>
                                    <td><%= p.getFechaHasta() %></td>
                                    <td></td>
                                    <td><%= p.getRecargo()%></td>
                                    <td>
                                        <form action="Controlador" method="post">
                                        <input type="hidden"  name="form" value="RegistrarDevolucionComando"/>
                                        <input type="hidden" name="idPedido" value="<%= p.getIdPedido()%>">
                                        <input type="submit" value="Registrar Devolución">
                                        </form>
                                    </td>
                                   </tr>
                                   <% for(LineaPedido lp: p.getLineas()) 
                                   {%>
                                    <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><%=lp.getPelicula().getNombre()%></td>
                                    <td></td>
                                    <td></td> 
                                    </tr>
                                   
                                <%} }%>
                            </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <%} %>
                    
            </div>
            
         </div>
      </div>
    </body>
    <jsp:include page="footer.jsp"/>
</html>
