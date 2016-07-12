<%@page import="aplicacion.modelo.entidades.Usuario"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="head.jsp"/>
    <jsp:useBean id="usuario" scope="session" class="aplicacion.modelo.entidades.Usuario"/>
<body>
<jsp:include page="header.jsp"/>
<%if(session.getAttribute("tabActual")==null)
{
    session.setAttribute("tabActual","0");
    session.setAttribute("contraCambiada","2");
}%>
    <section class="seccion"><!--form-->
        <h2 class="title text-center">Cuenta </h2>  
        <div class="container">           
                <form action="Controlador" method="post">
                    <div class="row">
                        <h2 class="title text-center">Informacion de tu cuenta</h2>
                    </div>
                    <div class="row">
                        <div class="col-sm-5 col-sm-offset-1">                            
                            <div class="cuenta">
                                <input type="hidden" name="form" value="CuentaComando">                              
                                Nombre <input type="text" class="control form-control" name="nombre" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="nombre" name="usuario"/><%}%>">
                                Apellido <input type="text" class="control form-control" name="apellido" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="apellido" name="usuario"/><%}%>">
                                Dni <input type="text" maxlength="8" class="control form-control" name="dni" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="dni" name="usuario"/><%}%>">
                                Fecha de nacimiento <input type="date" class="control form-control" name="fechaNacimiento" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="fechaNacimiento" name="usuario"/><%}%>">
                            </div>
                        </div>  
                        <div class="col-sm-5 col-sm-offset-0">
                            <div class="cuenta"><!--sign up form-->
                                Direccion <input type="text" class="control form-control" name="direccion" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="direccion" name="usuario"/><%}%>">
                                Telefono <input type="text" class="control form-control" name="telefono" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="telefono" name="usuario"/><%}%>">
                                E-Mail <input type="email" class="control form-control" name="mail" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="mail" name="usuario"/><%}%>">
                                <%if(session.getAttribute("tabActual").equals("1")){%> <div class="alert alert-success bajar"><p>Datos actualizados con exito!</p></div><%}%>
                                <br/><br/><br/><br/>
                                <input type="hidden" name="form" value="CuentaComando"/>
                                <button type="submit" class="btn btn-default right" name="actDatos" value="actualizarDatos">Actualizar Datos</button>
                            </div><!--/sign up form-->
                        </div>
                    </div>
                </form>
                                                
            <div class="row">
                <h2 class="title text-center">Cambio de contraseña</h2>
            </div>        
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                        <br/>
                        <form action="Controlador" method="post">
                            <input type="hidden" name="form" value="CuentaComando">                       
                            <div class="cuenta"><!--login form-->                             
                                Contraseña anterior <input type="password" class="control form-control" name="contraAnterior" required>
                                Nueva contraseña <input id="nuevaContra" type="password" class="control form-control" name="nuevaContra" required>
                                Repita la contraseña <input id="repiteContra" type="password" class="control form-control" name="repiteContra" required onkeyup="validarContrasenia()">
                                <button type="submit" class="btn btn-default right ">Actualizar Contraseña</button>       
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-3 col-sm-offset-0"> 
                      
                        <div id="mensajeError" class="alert <%if(session.getAttribute("contraCambiada").equals("1")){%>alert-success<%}
                        else if(session.getAttribute("contraCambiada").equals("0")){%>alert-danger<%}%>">
                                
                            <p id="parrafoError"><%if(session.getAttribute("contraCambiada").equals("1")){%>Contraseña cambiada con exito!<%
                            }else if(session.getAttribute("contraCambiada").equals("0")){%><strong>Error! </strong>Su contraseña no pudo ser cambiada<%}%> 
                            </p>
                            
                              <%if(request.getAttribute("excepcion")!=null){%>
                                                        <div class="alert alert-danger">
                                                              <%=request.getAttribute("excepcion")%>
                                                           </div>
                                                         <%}%>
                        </div>
                    </div>
                </div>
        </div>
    </section>
</body>
<jsp:include page="footer.jsp"/>
</html>