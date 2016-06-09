<html lang="en">
<jsp:include page="head.jsp"/>
    
<body>
    <jsp:include page="header.jsp"/>     
        <section id="form"><!--form-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="login-form"><!--login form-->
                            <h2>Ingresá con tu usuario</h2>
                            <form action="Controlador" method="post">
                                <input type="hidden" name="form" value="LogInComando">
                                <input type="text" class="control form-control" name="nomUsu" placeholder="Nombre de usuario" required>
                                <input type="password" class="control form-control" name="contra" placeholder="Constraseña" required>
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
                                                Usuario / Contraseña incorrecto  
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
                            <form action="signup.jsp" method="post">
                                <input class="control form-control" type="text" name="nombreUsuario" placeholder="Nombre de Usuario" maxlenght="10"  required>
                                <input class="control form-control" type="email" name="email" placeholder="Email" maxlenght="30" required>
                                <input class="control form-control" type="password" name="contra1" placeholder="Contraseña" maxlenght="10" required>
                                <button type="submit" class="btn btn-default">Continuar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section><!--/form-->      
            <jsp:include page="footer.jsp"></jsp:include>
            </body>
</html>

