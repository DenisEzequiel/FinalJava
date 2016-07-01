<%-- 
    Document   : ABMUsuarios
    Created on : 30/06/2016, 19:40:43
    Author     : JP
--%>
<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"/>
    <body>
        <jsp:include page="header.jsp"/>
        <%!ArrayList<Usuario> usuarios;%>
        <% usuarios = (ArrayList)session.getAttribute("ListaUsuarios");%>
        <% Usuario usu;%>
        <% usu = (Usuario)session.getAttribute("UsuarioEdit");%>
        <div class="cuenta">
            <div class="container"> 
                <div class="row">
                    <h2 class="title text-center">Lista de Usuarios</h2> 
                <div class="col-sm-12">
                    <div class="table-responsive">
                        <div class="table-striped">
                            <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Usuario</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>DNI</th>
                                    <th>F. Nac</th>
                                    <th>Email</th>
                                    <th>Telefono</th>
                                    <th>Activo</th>
                                    <th>Admin</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <form action="Controlador" method="post">
                                <input type="hidden"  name="form" value="SeleccionarUsuarioComando"/>
                                <%for(Usuario u:usuarios)
                                  {%>
                                  <tr>
                                    <td><%= u.getIdUsuario()%></td>
                                    <td><%= u.getNombreUsuario() %></td>
                                    <td><%= u.getNombre()%></td>
                                    <td><%= u.getApellido()%></td>
                                    <td><%= u.getDni()%></td>
                                    <td><%= u.getFechaNacimiento()%></td>
                                    <td><%= u.getMail() %></td>
                                    <td><%= u.getTelefono() %></td>
                                    <td><%= u.isActivo() %></td>
                                    <td><%= u.isEsAdmin() %></td>
                                    <td>
                                        <input type="hidden" name="idUsuEdit" value="<%= u.getIdUsuario()%>">
                                        <input type="submit" value="Editar">
                                    </td>
                                  </tr>
                                <%}%>
                            </form>
                            </tbody>
                            </table>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="row">
                <h2 class="title text-center">EDITAR USUARIO</h2>     
                            <div class="col-lg-5 col-lg-offset-1">
                                <h2>información del Usuario</h2> 
                                <input class="control form-control" type="text" placeholder="Nombre*" maxlength="15" name="Nombre" required value="<%= usu.getNombre() %>">
                                <input class="control form-control" type="text" placeholder="Apellido*" name="Apellido" maxlength="15" required value="<%= usu.getApellido() %>" >
                                <input class="control form-control" type="text" placeholder="DNI*" name="Dni" pattern="^[0-9]*$" minlength="7" maxlength="9" required value="<%= usu.getDni() %>">
                                <h5>Fecha de Nacimiento</h5>
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-0">
                                        <input class="control form-control" type="date" name="fechaNacimiento" required value="<%= usu.getFechaNacimiento() %>">
                                    </div>                                   
                                </div> 
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Calle*" maxlength="20" name="Calle" required value="<%= usu.getDireccion() %>">
                                    </div>
                                </div>
                                    <input class="control form-control" type="text" placeholder="Teléfono*" name="Tel" pattern="^[0-9]*$" maxlength="10" required value="<%= usu.getTelefono() %>">
                                <input class="control form-control" type="text" placeholder="Email*" name="Email" maxlength="30" required value="<%= usu.getMail() %>">
                            </div>
                            <div class="col-lg-5 col-lg-offset-0">
                                <h2>información de su cuenta</h2> 
                                <input class="control form-control" type="text" placeholder="Nombre de Usuario*" name="Usu" maxlength="10" required value="<%= usu.getNombreUsuario() %>">
                                <input class="control form-control" type="password" placeholder="Contraseña*" name="Contra1" minlength="4" maxlength="10" required value="<%= usu.getContrasena() %>">
                                <input class="control form-control" type="password" placeholder="Confirmar contraseña*" name="Contra2" minlength="4" maxlength="10" required value="">
                            </div>
                        </div>
            </div>
         </div>
      </div>
    </body>
    <jsp:include page="footer.jsp"/>
</html>
