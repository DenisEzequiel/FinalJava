
<jsp:useBean id="usuario" scope="session" class="aplicacion.modelo.entidades.Usuario"/>
<h2 class="title text-center">Cuenta </h2>  
 
    <section id="form"><!--form-->
            <div class="container">
               <form action="Controlador" method="post">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="cuenta"><!--login form-->
                            <h2>Datos de cuenta</h2>
                           
                                <input type="hidden" name="form" value="cuenta">                              
                                Nombre <input type="text" class="control" name="nombre" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="nombre" name="usuario"/><%}%>">
                                Apellido <input type="text" class="control" name="apellido" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="apellido" name="usuario"/><%}%>">
                       
                        </div>
                    </div>  
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="cuenta"><!--sign up form-->
                            <br/><br/><br/>
                           
                                Direccion <input type="text" class="control" name="direccion" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="direccion" name="usuario"/><%}%>">
                                Telefono <input type="text" class="control" name="telefono" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="telefono" name="usuario"/><%}%>">
                                E-Mail <input type="text" class="control" name="mail" value="<%if(session.getAttribute("usuario")!=null){%><jsp:getProperty property="mail" name="usuario"/><%}%>">
                                <input type="hidden" name="form" value="cuenta"/>
                                <button type="submit" class="btn btn-default ">Actualizar Datos</button>
                        </div><!--/sign up form-->
                    </div>
                </div>
            </form>

            </div>
    </section>