        <%@page import="aplicacion.modelo.entidades.Usuario"%>
<footer id="footer"><!--Footer-->
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">
                                
                                <h2>Usuario</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <%if(session.getAttribute("usuario")==null){%><li><a href="login.jsp">Iniciar sesión</a></li><%}else{%><li><a href="cuenta.jsp">Cuenta</a></li><%}%>
                                    <li><a href="carro.jsp">Carrito</a></li>
                                    <%if(session.getAttribute("usuario")!=null && ((Usuario)session.getAttribute("usuario")).isEsAdmin()){%>
                                       <li>
                                                    <form action="Controlador" method="post">
                                                        <input type="hidden"  name="desdeIndex" value="desdeIndex"/>
                                                        <input type="hidden"  name="form" value="AdminPeliculasComando"/>
                                                        <input type="submit" name="pagina" value="Peliculas">
                                                    </form>
                                                </li>
                                                <li>
                                                    <form action="Controlador" method="post">
                                                        <input type="hidden"  name="form" value="AdminUsuariosComando"/>
                                                        <input type="submit" name="pagina" value="Usuarios" >
                                                    </form>
                                                </li>
                                    <li><a href="Devoluciones.jsp">Devoluciones</a></li>
                                    <%}%>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Películas</h2>
                                
                                   <form action="Controlador" method="post" >
                                                               
                                                                    <input type="hidden" name="form" value="PeliculasComando" >
                                                                    <ul class="nav nav-pills nav-stacked">
                                                                    
                                                                        <li><label><input onclick="submit()" type="radio">Todas </label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="estreno" name="tipo">Estrenos</label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="2" name="tipo">Acción</label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="4" name="tipo">Aventura</label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="7" name="tipo">Ciencia Ficción</label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="6" name="tipo">Comedia</label></li>
                                                      
                                                                </ul>
                                                                </form>
                                
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget listaGenerosFooter">
                                <form action="Controlador" method="post" >                               
                                 <input type="hidden" name="form" value="PeliculasComando" >
                                 
                                <ul class="nav nav-pills nav-stacked">
                                    <li><br><br></li>
                                   <li><label><input onclick="submit()" type="radio" value="11" name="tipo">Crimen</label></li>
                                   <li><label><input onclick="submit()" type="radio" value="9" name="tipo">Documental</label></li>
                                   <li><label><input onclick="submit()" type="radio" value="3" name="tipo">Drama</label></li>
                                   <li><label><input onclick="submit()" type="radio" value="8" name="tipo">Romance</label></li>
                                   <li><label><input onclick="submit()" type="radio" value="10" name="tipo">Suspenso</label></li>
                                   <li><label><input onclick="submit()" type="radio" value="1" name="tipo">Terror</label></li>
                                   <li><label><input onclick="submit()" type="radio" value="5" name="tipo">Thriller</label></li>
                                   <li><label><input onclick="submit()" type="radio" value="12" name="tipo">Infantil</label></li>
                                </ul>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Acerca de</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="nosotros.jsp">Nosotros</a></li>
                                    <li><a href="contacto.jsp">Contacto</a></li>  
                                </ul>
                            </div>
                        </div>
                                    
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <p class="pull-left">Copyright © 2016 Aefilep Inc. Todos los derechos reservados.</p>
                        <p class="pull-right">Diseñado por <span>Aefilep Team</span></p>
                    </div>
                </div>
            </div>
        </footer><!--/Footer-->
        
        <script src="scripts/jquery.js"></script>
        <script src="scripts/bootstrap.min.js"></script>
        <script src="scripts/jquery.scrollUp.min.js"></script>
        <script src="scripts/price-range.js"></script>
        <script src="scripts/jquery.prettyPhoto.js"></script>
        <script src="scripts/main.js"></script>

        <a id="scrollUp" href="index.jsp/#top" style="position: fixed; z-index: 2147483647; display: none;"><i class="fa fa-angle-up"></i></a>
