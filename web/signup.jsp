<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%
    Usuario usuPorRegistrar = new Usuario();
    if(request.getAttribute("usuarioPorRegistrar")==null)
    {          
        usuPorRegistrar.setNombreUsuario(request.getParameter("nombreUsuario"));
        usuPorRegistrar.setMail(request.getParameter("email"));
        usuPorRegistrar.setContrasena(request.getParameter("contra1"));
    }
    else
    {      
        usuPorRegistrar = (Usuario)request.getAttribute("usuarioPorRegistrar");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="head.jsp"/>
    
<body>
    <jsp:include page="header.jsp"/>
        <section id="form"><!--form-->
            <div class="container">
                <div class="login-form"><!--login form-->
                    <form action="Controlador" method="post">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1">
                                <h1>Ya casi terminamos, solo algunos datos mas...</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-5 col-lg-offset-1">
                                <h2>información sobre ti</h2> 
                                <input class="control form-control" type="text" placeholder="Nombre*" maxlength="15" name="Nombre" required <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=usuPorRegistrar.getNombre()%>"<%}%>>
                                <input class="control form-control" type="text" placeholder="Apellido*" name="Apellido" maxlength="15" required <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=usuPorRegistrar.getApellido()%>"<%}%>>
                                <input class="control form-control" type="text" placeholder="DNI*" name="Dni" pattern="[0-9]{7,9}" maxlength="9" required <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=usuPorRegistrar.getDni()%>"<%}%>>
                                <h5>Fecha de Nacimiento</h5>
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-0">
                                        <input class="control form-control" type="date" name="fechaNacimiento" required <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=usuPorRegistrar.getFechaNacimiento()%>"<%}%>>
                                    </div>                                   
                                </div> 
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Calle*" maxlength="20" name="Calle" required <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=request.getAttribute("calle")%>"<%}%>>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Número*"  maxlength="6" pattern="^[0-9]*$" title="Numero" name="Num" required <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=request.getAttribute("numero")%>"<%}%>>
                                    </div>
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Piso"  maxlength="2" pattern="^[0-9]*$" title="Numero" name="Piso" <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=request.getAttribute("piso")%>"<%}%>>
                                    </div>
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Depto."  maxlength="1" pattern="^[A-Za-z ]*$" title="Letra" name="Depto" <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=request.getAttribute("depto")%>"<%}%>>
                                    </div>
                                </div>
                                
                                <input class="control form-control" type="text" placeholder="Teléfono*" name="Tel" pattern="^[0-9]*$" maxlength="10" required <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=usuPorRegistrar.getTelefono()%>"<%}%>>
                                <input class="control form-control" type="text" placeholder="Email*" name="Email" maxlength="30" required value="<%=usuPorRegistrar.getMail()%>">
                            </div>
                            <div class="col-lg-5 col-lg-offset-0">
                                <h2>información sobre tu cuenta</h2> 
                                <input class="control form-control" type="text" placeholder="Nombre de Usuario*" name="Usu" maxlength="10" required value="<%=usuPorRegistrar.getNombreUsuario() %>">
                                <input class="control form-control" type="password" minlength="4" placeholder="Contraseña*" name="Contra1" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})" title="La contraseña debe tener al menos una mayuscula, al menos una minuscula, al menos un numero y una longitud de 6 a 20 caracteres" required value="<%=usuPorRegistrar.getContrasena()%>">
                                <input class="control form-control" type="password" placeholder="Confirmar contraseña*" name="Contra2"pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})" title="La contraseña debe tener al menos una mayuscula, al menos una minuscula, al menos un numero y una longitud de 6 a 20 caracteres" required <%if(request.getAttribute("usuarioPorRegistrar")!=null){%>value="<%=usuPorRegistrar.getContrasena()%>"<%}%>>
                                <%if(request.getAttribute("ex") != null){%>                                           
                                    <div class="alert alert-danger">
                                        <%=request.getAttribute("ex")%>
                                    </div>
                                <%}if(request.getAttribute("exitoRegistro") != null){%> 
                                    <div class="alert alert-danger">
                                        <%=request.getAttribute("exitoRegistro")%>
                                    </div>
                                <%}%>
                            </div>
                        </div><!--/row-->
                        
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1">
                                <input type="hidden" name="form" value="RegistroComando">
                                <button type="submit" class="btn btn-default">Completar Registro</button>
                                <h5>Los campos marcados con * son obligatorios</h5>
                            </div>
                        </div>
                    </form>
                </div><!--/loggin form-->
            </div><!--/container-->
        </section>
</body>
<jsp:include page="footer.jsp"/>
</html>
