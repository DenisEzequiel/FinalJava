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
    <body onload="scrollDiv();">
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
                    <div class="table-responsive" style="height:400px; overflow:auto">
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
            <form action="Controlador" method="post">
                <div <%if(session.getAttribute("Scroll")!=null){%> id="Edit" <%session.setAttribute("Scroll", null); };%>  class="row">
                <h2 class="title text-center"><%if(usu!=null) {%>EDITAR<%}else{%>AGREGAR<%}%> USUARIO</h2>
                    <div class="col-lg-5 col-lg-offset-1">
                                <h2>Información del Usuario</h2>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">ID</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control"  type="text" placeholder="(Automático)" maxlength="15" name="ID" readonly="" value="<%if(usu!=null)%><%=usu.getIdUsuario()%>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Nombre</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="text" placeholder="*" maxlength="15" name="Nombre" required value="<%if(usu!=null)%><%= usu.getNombre() %>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Apellido</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="text" placeholder="*" name="Apellido" maxlength="15" required value="<%if(usu!=null)%><%= usu.getApellido() %>" >
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">DNI</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="text" placeholder="*" name="Dni" pattern="^[0-9]*$" minlength="7" maxlength="9" required value="<%if(usu!=null)%><%= usu.getDni() %>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">F. Nac.</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="date" name="fechaNacimiento" required value="<%if(usu!=null)%><%= usu.getFechaNacimiento() %>">
                                    </div>                                   
                                </div> 
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Dirección</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="text" placeholder="*" maxlength="20" name="Calle" required value="<%if(usu!=null)%><%= usu.getDireccion() %>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Teléfono</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="text" placeholder="*" name="Tel" pattern="^[0-9]*$" maxlength="10" required value="<%if(usu!=null)%><%= usu.getTelefono() %>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">E-Mail</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="text" placeholder="*" name="Email" maxlength="30" required value="<%if(usu!=null)%><%= usu.getMail() %>">
                                    </div>
                                </div>
                    </div>
                            <div class="col-lg-5 col-lg-offset-0">
                                <h2>Información de la cuenta</h2>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Nombre de Usuario</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="text" placeholder="*" name="Usu" maxlength="10" required value="<%if(usu!=null)%><%= usu.getNombreUsuario() %>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Contraseña</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="password" placeholder="*" name="Contra1" minlength="4" maxlength="10" required value="<%if(usu!=null)%><%= usu.getContrasena() %>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Confirmar Contraseña</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="password" placeholder="*" name="Contra2" minlength="4" maxlength="10" required value="<%if(usu!=null)%><%= usu.getContrasena() %>">
                                    </div>
                                </div>
                                <h2>Estado de la cuenta</h2>
                                <div class="row">
                                    <div class="col-lg-8">
                                        <h4 class="text-left">Administrador</h4>   
                                    </div>
                                    <div class="col-lg-4">
                                        <input class="control form-control" type="checkbox" name="Admin" value="true" <%if(usu!=null && usu.isEsAdmin())%>checked<%;%>>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8">
                                        <h4 class="text-left">Activo</h4>  
                                    </div>
                                    <div class="col-lg-4">
                                        <input class="control form-control" type="checkbox" name="Activo" value="true" <%if(usu==null)%>checked<%; if(usu!=null && usu.isActivo())%>checked<%;%>>
                                    </div>
                                </div>    
                                <div class="row">
                                    <div class="col-lg-8">
                                        <h4 class="text-left">Bloqueado</h4>  
                                    </div>
                                    <div class="col-lg-4">
                                        <input class="control form-control" type="checkbox" name="Bloqueado" value="true" <%if(usu!=null && usu.isBloqueado())%>checked<%;%>>
                                    </div>
                                </div>
                                <div class="alert alert-success fade<%if(session.getAttribute("ExitoUsu")!=null){ %> in <%session.setAttribute("ExitoUsu", null);} %>">
                                    Usuario <%if(usu==null){ %>agregado<% }else{%>editado<%}%> con éxito.        
                                </div>
                                <% if(request.getAttribute("ex")!=null){%>
                                                        <div class="alert alert-danger">
                                                              <%=request.getAttribute("ex")%>
                                                           </div>
                                                         <%}%>
                            </div>
            </div>
            <div class="row">
                <div class="col-lg-5 col-lg-offset-1">
                    <h5 class="text-left">Los campos marcados con * son obligatorios</h5>
                </div>
                <div class="col-lg-5 col-lg-offset-0">
                                <input type="hidden" name="form" value="<%if(usu!=null) {%>EditarUsuarioComando<%}else{%>AgregarUsuarioComando<%}%>">
                                <button type="submit" class="btn btn-default"><%if(usu!=null) {%>Guardar Cambios<%}else{%>Crear Usuario<%}%></button>
                </div>
            </div>
            </form>
         </div>
      </div>
    </body>
    <jsp:include page="footer.jsp"/>
</html>
