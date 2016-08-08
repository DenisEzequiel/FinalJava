<%@page import="aplicacion.modelo.entidades.Usuario"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="head.jsp"/>
    <jsp:useBean id="usuario" scope="session" class="aplicacion.modelo.entidades.Usuario"/>
<body onload="scrollDiv();">
    <jsp:include page="header.jsp"/>
    <%if(request.getAttribute("tabActual")==null)
    {
        request.setAttribute("tabActual","0");
        request.setAttribute("contraCambiada","2");
    }%>
    <section class="seccion"><!--form-->
        <div class="container">           
                <form action="Controlador" method="post">
                    <div class="row">
                        <h2 class="title text-center">Informacion personal</h2>
                    </div>
                    <div class="row">
                        <div class="col-sm-5 col-sm-offset-1">                            
                            <div class="cuenta">
                                <input type="hidden" name="form" value="CuentaComando">                              
                                Nombre <input type="text" class="control form-control" pattern="^[A-Za-z ]*$" title="Letra" name="nombre" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="nombre" name="usuario"/><%}%>">
                                Apellido <input type="text" class="control form-control" name="apellido" pattern="^[A-Za-z ]*$" title="Letra" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="apellido" name="usuario"/><%}%>">
                                Dni <input type="text" maxlength="8" class="control form-control" pattern="^[0-9]*$" title="Numero" name="dni" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="dni" name="usuario"/><%}%>">
                                Fecha de nacimiento <input type="date" class="control form-control" name="fechaNacimiento" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="fechaNacimiento" name="usuario"/><%}%>">
                            </div>
                        </div>  
                        <div class="col-sm-5 col-sm-offset-0">
                            <div class="cuenta"><!--sign up form-->
                                Direccion <input type="text" class="control form-control" name="direccion" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="direccion" name="usuario"/><%}%>">
                                Telefono <input type="text" class="control form-control" pattern="^[0-9]*$" title="Numero" name="telefono" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="telefono" name="usuario"/><%}%>">
                                E-Mail <input type="email" class="control form-control" name="mail" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="mail" name="usuario"/><%}%>">
                                <%if(request.getAttribute("ex")!=null && request.getAttribute("Scroll")==null){%> 
                                    <div class="vanish alert alert-danger">
                                        <%=request.getAttribute("ex")%>
                                    </div>
                                <%}else if(request.getAttribute("tabActual")!=null && request.getAttribute("tabActual").equals("1")){%> 
                                    <div class="vanish alert alert-success bajar">
                                        <p>Datos actualizados con exito!</p>
                                    </div>
                                <%}%>
                                <br/><br/><br/><br/>
                                <input type="hidden" name="form" value="CuentaComando"/>
                                <button type="submit" class="btn btn-default right" name="actDatos" value="actualizarDatos">Actualizar Datos</button>
                            </div><!--/sign up form-->
                        </div>
                    </div>
                </form>
                                                
            <div <%if(request.getAttribute("Scroll")!=null){%> id="Edit" <%}%> class="row">
                <h2 class="title text-center">Cambio de contraseña</h2>
            </div>        
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                        <br/>
                        <form action="Controlador" method="post" onsubmit="validarCambioPass()">
                            <input type="hidden" name="form" value="CuentaComando">                       
                            <div class="cuenta"><!--login form-->                             
                                Contraseña anterior <input id="passAnt" type="password" class="control form-control" name="contraAnterior" required>
                                Nueva contraseña <input id="pass1" type="password" class="control form-control" name="nuevaContra" required>
                                Repita la contraseña <input id="pass2" type="password" class="control form-control" name="repiteContra" required onkeyup="validarContrasenia()">
                                <button type="submit" class="btn btn-default right ">Actualizar Contraseña</button>       
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-3 col-sm-offset-0">
                        <div id="mensajeError" class="vanish alert <%if(request.getAttribute("contraCambiada")!=null && request.getAttribute("contraCambiada").equals("1")){%>alert-success<%}
                        else if(request.getAttribute("contraCambiada")!=null && request.getAttribute("contraCambiada").equals("0")){%>alert-danger
                        <%}else if(request.getAttribute("ex")!=null){%>alert-danger<%}%>">
                                
                            <p id="parrafoError">
                                <%if(request.getAttribute("contraCambiada")!=null && request.getAttribute("contraCambiada").equals("1")){%>
                                    Contraseña cambiada con exito!
                                <%}else if(request.getAttribute("contraCambiada")!=null && request.getAttribute("contraCambiada").equals("0")){%>
                                    <strong>Error! </strong>Su contraseña no pudo ser cambiada
                                <%}else if(request.getAttribute("ex")!=null && request.getAttribute("Scroll")!=null){%>
                                    <%=request.getAttribute("ex")%>
                                <%}%>
                            </p>
                            
                              
                        </div>
                    </div>
                </div>
        </div>
    </section>
</body>
<jsp:include page="footer.jsp"/>
</html>