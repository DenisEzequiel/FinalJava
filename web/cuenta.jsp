
<jsp:useBean id="usuario" scope="session" class="aplicacion.modelo.entidades.Usuario"/>
<h2 class="title text-center">Cuenta </h2>  
 
    <section id="form"><!--form-->
            <div class="container">
               <form action="Controlador" method="post">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="cuenta">
                            <h2>Datos de cuenta</h2>
                           
                                <input type="hidden" name="form" value="cuenta">                              
                                Nombre <input type="text" class="control" name="nombre" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="nombre" name="usuario"/><%}%>">
                                Apellido <input type="text" class="control" name="apellido" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="apellido" name="usuario"/><%}%>">
                                Direccion <input type="text" class="control" name="direccion" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="direccion" name="usuario"/><%}%>">
                        </div>
                    </div>  
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="cuenta"><!--sign up form-->
                            <br/><br/><br/>
                                                         
                                Telefono <input type="text" class="control" name="telefono" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="telefono" name="usuario"/><%}%>">
                                E-Mail <input type="text" class="control" name="mail" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="mail" name="usuario"/><%}%>">
                                <input type="hidden" name="form" value="cuenta"/>
                                <br/><br/><br/><br/>
                                <button type="submit" class="btn btn-default ">Actualizar Datos</button>
                        </div><!--/sign up form-->
                    </div>
                </div>
            </form>
            <div class="row">
                <div class="col-sm-4 col-sm-offset-1">
                    <form action="index.jsp" method="post" onclick="submit()">
                        Cambio de Contraseña <input type="checkbox" name="cambioContra" checked=<%if(request.getParameter("cambioContra")==null){%>checked<%}%>>
                    </form>
                    <br/>
                    <form action="Controlador" method="post">
                        <input type="hidden" name="form" value="cuenta">
                        <%if(request.getParameter("cambioContra")!=null){%>
                            <div class="cuenta"><!--login form-->                           
                                    <input type="hidden" name="form" value="cuenta">                              
                                    Contraseña anterior <input type="text" class="control" name="contraAnterior" required>
                                    Nueva contraseña <input type="text" class="control" name="nuevaContra" required>
                                    Repita la contraseña <input type="text" class="control" name="repiteContra" required>
                            </div>
                            <button type="submit" class="btn btn-default ">Actualizar Contraseña</button>
                        <%}%>
                        
                    </form>
                </div>
            </div>                            
            </div>
    </section>