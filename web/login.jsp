<!DOCTYPE html>
<html>
    <body>       
        <section id="form"><!--form-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="login-form"><!--login form-->
                            <h2>Ingres� con tu usuario</h2>
                            <form action="Controlador" method="post">
                                <input type="hidden" name="form" value="login">
                                <input type="text" class="control form-control" name="nomUsu" placeholder="Nombre de usuario" required>
                                <input type="password" class="control form-control" name="contra" placeholder="Constrase�a" required>
                                <span>
                                    <input type="checkbox" class="checkbox"> 
                                        Mantenerme conectado
                                </span>
                                <button type="submit" class="btn btn-default">Iniciar sesion</button>
                            </form>
                            <%
                                if(request.getParameter("nomUsu")!= null && request.getParameter("contra")!=null)
                                {
                                    if(session.getAttribute("usuario") == null)
                                    {
                                       %> 
                                            <br/>
                                            <div class="alert alert-danger">
                                                Usuario / Contrase�a incorrecto  
                                            </div>
                                        <%
                                    }
                                }
                            %>
                        </div><!--/login form-->
                    </div>
                    <div class="col-sm-1">
                        <h2 class="o">O</h2>
                    </div>
                    <div class="col-sm-4">
                        <div class="signup-form"><!--sign up form-->
                            <h2>Sos nuevo? Registrate!</h2>
                            <form action="index.jsp" method="post">
                                <input class="control form-control" type="text" name="nombre" placeholder="Nombre" required>
                                <input class="control form-control" type="email" name="email" placeholder="Email" required>
                                <input class="control form-control" type="password" name="contra1" placeholder="Contrase�a" required>
                                <input type="radio" name="pagina" value="8" checked="checked">
                                <button type="submit" class="btn btn-default">Continuar</button>
                            </form>
                        </div><!--/sign up form-->
                    </div>
                </div>
            </div>
        </section><!--/form-->      
    </body>
</html>
