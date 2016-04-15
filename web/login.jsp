<!DOCTYPE html>
<html>
    <body>       
        <section id="form"><!--form-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="login-form"><!--login form-->
                            <h2>Ingrese a su cuenta</h2>
                            <form action="Controlador" method="post">
                                <input type="hidden" name="form" value="login">
                                <input type="text" name="nomUsu" placeholder="Nombre de usuario" required>
                                <input type="password" name="contra" placeholder="Constraseña" required>
                                <span>
                                    <input type="checkbox" class="checkbox"> 
                                        Mantenerme conectado
                                </span>
                                <button type="submit" class="btn btn-default">Iniciar sesion</button>
                            </form>
                        </div><!--/login form-->
                    </div>
                    <div class="col-sm-1">
                        <h2 class="o">OR</h2>
                    </div>
                    <div class="col-sm-4">
                        <div class="signup-form"><!--sign up form-->
                            <h2>New User Signup!</h2>
                            <form action="#">
                                <input type="text" placeholder="Name">
                                <input type="email" placeholder="Email Address">
                                <input type="password" placeholder="Password">
                                <button type="submit" class="btn btn-default">Signup</button>
                            </form>
                        </div><!--/sign up form-->
                    </div>
                </div>
            </div>
        </section><!--/form-->      
    </body>
</html>
