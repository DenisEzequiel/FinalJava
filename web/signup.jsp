<!DOCTYPE html>
<html>
    <%@page import="aplicacion.modelo.entidades.Usuario" %>
    <%
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String contrasenia = request.getParameter("contra1");
    %>
    <body>       
        <section id="form"><!--form-->
            <div class="container">
                <h1>Ya casi terminamos, solo necesitamos algunos datos mas</h1>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="signup-form"><!--sign up form-->
                            <form action="Controlador" method="post">
                                <!-- TABLA GRANDE CON OTRAS TABLAS ADENTRO -->
                                <table style="width:100%" border="0">
                                    <tr>
                                        <td style="width:49%">
                                            <!-- INFORMACI�N DE LA PERSONA -->
                                            <table border="0">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                           <h2>informaci�n sobre ti</h2> 
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">
                                                            <input class="control" type="text" placeholder="Nombre" required value="<%=nombre %>">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4"><input class="control" type="text" placeholder="Apellido" required></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td colspan="3" style="text-align:center;">Cumplea�os</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width:60%"><input class="control" type="text" placeholder="DNI" required></td>
                                                        <td><input class="control" type="text" placeholder="D�a" required></td>
                                                        <td><input class="control" type="text" placeholder="Mes" required></td>
                                                        <td><input class="control" type="text" placeholder="A�o" required></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="1"><input class="control" type="text" placeholder="Calle" required></td>
                                                        <td colspan="3"><input class="control" type="text" placeholder="N�mero" required></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4"><input class="control" type="text" placeholder="Tel�fono" required></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">
                                                            <input class="control" type="text" placeholder="Email" required value="<%=email %>">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                        <td>
                                            
                                        </td>
                                        <td style="width:49%">
                                            <!-- INFORMACI�N DE LA CUENTA -->
                                            <table border="0" style="width:100%">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                           <h2>informaci�n sobre tu cuenta</h2> 
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <input class="control" type="text" placeholder="Nombre de Usuario" required>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input class="control" type="password" placeholder="Contrase�a" required value="<%=contrasenia %>"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><input class="control" type="password" placeholder="Confirmar contrase�a" required></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            
                                            <!-- INFORMACI�N DE LAS TARJETAS DE CREDITO/D�BITO -->
                                            <table border="0" style="width:100%">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                           <h2>Tus medios de pago</h2> 
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <input class="control" type="text" placeholder="N�mero de tarjeta" required>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input class="control" type="text" placeholder="Empresa/Banco" required></td>
                                                        <td><input class="control" type="text" placeholder="C�digo de seguridad" required></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" align="right">
                                            <input type="hidden" name="form" value="registrarse">
                                            <button type="submit" class="btn btn-default">Completar Registro</button>
                                        </td>
                                    </tr>
                                </table>                              
                                
                                

                                 
                                
                            </form>
                        </div><!--/sign up form-->
                    </div>
                </div>
            </div>
        </section><!--/form-->      
    </body>
</html>
