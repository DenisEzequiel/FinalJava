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
                                <tr>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td>
                                        <form action="Controlador" method="post">
                                        <input type="hidden"  name="form" value="SeleccionarUsuarioComando"/>
                                        <input type="hidden" name="idUsuEdit" value="0">
                                        <input type="submit" value="+ Nuevo">
                                        </form>
                                    </td>
                                  </tr>
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
                                        <form action="Controlador" method="post">
                                        <input type="hidden"  name="form" value="SeleccionarUsuarioComando"/>
                                        <input type="hidden" name="idUsuEdit" value="<%= u.getIdUsuario()%>">
                                        <input type="submit" value="Editar">
                                        </form>
                                    </td>
                                  </tr>
                                <%}%>
                            </tbody>
                            </table>
                        </div>
                    </div>
                </div> 
            </div>
            <div id="Edit" class="row">
                <h2 class="title text-center">EDITAR USUARIO</h2>
                <form action="Controlador" method="post">  
                            <div class="col-lg-5 col-lg-offset-1">
                                <h2>información del Usuario</h2>
                                <input class="control form-control"  type="text" placeholder="ID" maxlength="15" name="ID" readonly="" value="<%if(usu!=null)%><%=usu.getIdUsuario()%>">
                                <input class="control form-control" type="text" placeholder="Nombre*" maxlength="15" name="Nombre" required value="<%if(usu!=null)%><%= usu.getNombre() %>">
                                <input class="control form-control" type="text" placeholder="Apellido*" name="Apellido" maxlength="15" required value="<%if(usu!=null)%><%= usu.getApellido() %>" >
                                <input class="control form-control" type="text" placeholder="DNI*" name="Dni" pattern="^[0-9]*$" minlength="7" maxlength="9" required value="<%if(usu!=null)%><%= usu.getDni() %>">
                                <h5>Fecha de Nacimiento</h5>
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-0">
                                        <input class="control form-control" type="date" name="fechaNacimiento" required value="<%if(usu!=null)%><%= usu.getFechaNacimiento() %>">
                                    </div>                                   
                                </div> 
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Calle*" maxlength="20" name="Calle" required value="<%if(usu!=null)%><%= usu.getDireccion() %>">
                                    </div>
                                </div>
                                    <input class="control form-control" type="text" placeholder="Teléfono*" name="Tel" pattern="^[0-9]*$" maxlength="10" required value="<%if(usu!=null)%><%= usu.getTelefono() %>">
                                <input class="control form-control" type="text" placeholder="Email*" name="Email" maxlength="30" required value="<%if(usu!=null)%><%= usu.getMail() %>">
                            </div>
                            <div class="col-lg-5 col-lg-offset-0">
                                <h2>información de la cuenta</h2> 
                                <input class="control form-control" type="text" placeholder="Nombre de Usuario*" name="Usu" maxlength="10" required value="<%if(usu!=null)%><%= usu.getNombreUsuario() %>">
                                <input class="control form-control" type="password" placeholder="Contraseña*" name="Contra1" minlength="4" maxlength="10" required value="<%if(usu!=null)%><%= usu.getContrasena() %>">
                                <input class="control form-control" type="password" placeholder="Confirmar contraseña*" name="Contra2" minlength="4" maxlength="10" required value="<%if(usu!=null)%><%= usu.getContrasena() %>">
                            </div>
                            <div class="col-lg-5 col-lg-offset-0">
                                <h2>Estado de la cuenta</h2>
                                <div class="row">
                                <label>Administrador</label><input class="control form-control" type="checkbox" name="Admin" value="true" <%if(usu!=null && usu.isEsAdmin())%>checked<%;%>>
                                <label>Activo</label><input class="control form-control" type="checkbox" name="Activo" value="true" <%if(usu!=null && usu.isActivo())%>checked<%;%>>
                                <label>Bloqueado</label><input class="control form-control" type="checkbox" name="Bloqueado" value="true" <%if(usu!=null && usu.isBloqueado())%>checked<%;%>>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1">
                                <input type="hidden" name="form" value="<%if(usu!=null) {%>EditarUsuarioComando<%}else{%>AgregarUsuarioComando<%}%>">
                                <button type="submit" class="btn btn-default"><%if(usu!=null) {%>Guardar Cambios<%}else{%>Crear Usuario<%}%></button>
                                <h5>Los campos marcados con * son obligatorios</h5>
                            </div>
                        </div>
            </form>
            </div>
         </div>
      </div>
    </body>
    <jsp:include page="footer.jsp"/>
</html>
