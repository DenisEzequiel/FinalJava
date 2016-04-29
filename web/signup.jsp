<!DOCTYPE html>
    <%@page import="aplicacion.modelo.entidades.Usuario" %>
    <%
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String contrasenia = request.getParameter("contra1");
    %>
      
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
                                <input class="control form-control" type="text" placeholder="Nombre" name="Nombre" required value="<%=nombre %>">
                                <input class="control form-control" type="text" placeholder="Apellido" name="Apellido" required>
                                <input class="control form-control" type="text" placeholder="DNI" name="Dni" required>
                                <h5>Fecha de Nacimiento</h5>
                                <div class="row">
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Día" name="Dia" required>
                                    </div>
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Mes" name="Mes" required>
                                    </div>
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Año" name="Ano" required>
                                    </div>
                                </div> 
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Calle" name="Calle" required>
                                    </div>
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Número" name="Num" required>
                                    </div>
                                </div>
                                <input class="control form-control" type="text" placeholder="Teléfono" name="Tel" required>
                                <input class="control form-control" type="text" placeholder="Email" name="Email" required value="<%=email %>">
                            </div>
                            <div class="col-lg-5 col-lg-offset-0">
                                <h2>información sobre tu cuenta</h2> 
                                <input class="control form-control" type="text" placeholder="Nombre de Usuario" name="Usu" required>
                                <input class="control form-control" type="password" placeholder="Contraseña" name="Contra1" required value="<%=contrasenia %>">
                                <input class="control form-control" type="password" placeholder="Confirmar contraseña" name="Contra2" required>
                                <h2>Tus medios de pago</h2>
                                <input class="control form-control" type="text" placeholder="Número de tarjeta" required>
                                <div class="row">
                                    <div class="col-sm-7 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Empresa/Banco" required>
                                    </div>
                                    <div class="col-sm-5 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Código de seguridad" required>
                                    </div>
                                </div>  
                            </div>
                        </div><!--/row-->
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1">
                                <input type="hidden" name="form" value="registro">
                                <button type="submit" class="btn btn-default">Completar Registro</button>
                            </div>
                        </div>
                    </form>
                </div><!--/loggin form-->
            </div><!--/container-->
        </section>    
