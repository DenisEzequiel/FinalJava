<jsp:useBean id="usuario" scope="session" class="aplicacion.modelo.entidades.Usuario"/>
<h2 class="title text-center">Cuenta </h2>  
 
    <section id="cuenta"><!--form-->
            <div class="container">
              
               <button class="accordion">Informacion de tu cuenta</button>
                <div class="panel active">
                     <form action="Controlador" method="post">
                   <div class="row">
                        <div class="col-sm-5 col-sm-offset-1">
                            <div class="cuenta">
                                <!--<h2>Datos de cuenta</h2>-->

                                    <input type="hidden" name="form" value="cuenta">                              
                                    Nombre <input type="text" class="control form-control" name="nombre" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="nombre" name="usuario"/><%}%>">
                                    Apellido <input type="text" class="control form-control" name="apellido" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="apellido" name="usuario"/><%}%>">
                                    Direccion <input type="text" class="control form-control" name="direccion" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="direccion" name="usuario"/><%}%>">
                            </div>
                        </div>  
                        <div class="col-sm-5 col-sm-offset-0">
                            <div class="cuenta"><!--sign up form-->
                               
                                    Telefono <input type="text" class="control form-control" name="telefono" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="telefono" name="usuario"/><%}%>">
                                    E-Mail <input type="text" class="control form-control" name="mail" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="mail" name="usuario"/><%}%>">
                                    <input type="hidden" name="form" value="cuenta"/>
                                    <br/><br/><br/><br/>
                                    <button type="submit" class="btn btn-default right ">Actualizar Datos</button>
                            </div><!--/sign up form-->
                        </div>
                    </div>
                   </form>
                </div>
               <button class="accordion">Cambio de contraseña</button>
                <div class="panel">
           
            <div class="row">
                <div class="col-sm-5 col-sm-offset-1">
                    <br/>
                    <form action="Controlador" method="post">
                        <input type="hidden" name="form" value="cuenta">                       
                            <div class="cuenta"><!--login form-->                           
                                    <input type="hidden" name="form" value="cuenta">                              
                                    Contraseña anterior <input type="text" class="control form-control" name="contraAnterior" required>
                                    Nueva contraseña <input type="text" class="control form-control" name="nuevaContra" required>
                                    Repita la contraseña <input type="text" class="control form-control" name="repiteContra" required>
                                    
                                    <button type="submit" class="btn btn-default right ">Actualizar Contraseña</button>       
                            </div>
                                           
                    </form>
                </div>
            </div>                            
            </div>
    </section>
    <script> 
   </script>