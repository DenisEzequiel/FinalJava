<!DOCTYPE html>
    <%@page import="aplicacion.modelo.entidades.Usuario" %>
    <%
        String nombreUsuario = request.getParameter("nombreUsuario");
        String email = request.getParameter("email");
        String contrasenia = request.getParameter("contra1");
    %>
<!DOCTYPE html>]
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
                                <h2>informaci�n sobre ti</h2> 
                                <input class="control form-control" type="text" placeholder="Nombre" maxlenght="15" name="Nombre" required >
                                <input class="control form-control" type="text" placeholder="Apellido" name="Apellido" maxlenght="15" required>
                                <input class="control form-control" type="text" placeholder="DNI" name="Dni" pattern="[0-9]" required>
                                <h5>Fecha de Nacimiento</h5>
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-0">
                                        <input class="control form-control" type="date" name="fechaNacimiento" required>
                                    </div>                                   
                                </div> 
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Calle" maxlenght="30" name="Calle" required>
                                    </div>
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="N�mero" maxlenght="6" pattern="[0-9]" name="Num" required>
                                    </div>
                                </div>
                                <input class="control form-control" type="text" placeholder="Tel�fono" name="Tel" pattern="[0-9]" maxlenght="10"required>
                                <input class="control form-control" type="text" placeholder="Email" name="Email" maxlenght="30" required value="<%=email %>">
                            </div>
                            <div class="col-lg-5 col-lg-offset-0">
                                <h2>informaci�n sobre tu cuenta</h2> 
                                <input class="control form-control" type="text" placeholder="Nombre de Usuario" name="Usu" maxlenght="10" required value="<%=nombreUsuario %>">
                                <input class="control form-control" type="password" placeholder="Contrase�a" name="Contra1" maxlenght="10" required value="<%=contrasenia %>">
                                <input class="control form-control" type="password" placeholder="Confirmar contrase�a" name="Contra2" maxlenght="10" required>
                                <h2>Tus medios de pago</h2>
                                <input class="control form-control" type="text" placeholder="N�mero de tarjeta" pattern="[0-9]" name="IdTarjeta" required>
                                <div class="row">
                                    <div class="col-sm-7 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Empresa/Banco" name="DescTarjeta"required>
                                    </div>
                                    <div class="col-sm-5 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="C�digo de seguridad"  name="CodSTarjeta" required>
                                    </div>
                                    <div class="col-sm-7 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Nombre titular de tarjeta" name="NombreTarjeta" required>
                                    </div>
                                    <div class="col-sm-5 col-sm-offset-0">
                                        <input class="control form-control" type="text" placeholder="Fecha de Vencimiento" name="FechaVencimientoTarjeta "required>
                                    </div>
                                </div>  
                            </div>
                        </div><!--/row-->
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1">
                                <input type="hidden" name="form" value="RegistroComando">
                                <button type="submit" class="btn btn-default">Completar Registro</button>
                            </div>
                        </div>
                    </form>
                </div><!--/loggin form-->
            </div><!--/container-->
        </section>
</body>
<jsp:include page="footer.jsp"/>
</html>
