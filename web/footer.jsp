        <footer id="footer"><!--Footer-->
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Usuario</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <%if(session.getAttribute("usuario")==null){%><li><a href="login.jsp">Iniciar sesi�n</a></li><%}else{%><li><a href="cuenta.jsp">Cuenta</a></li><%}%>
                                    <li><a href="carro.jsp">Carrito</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Pel�culas</h2>
                                
                                   <form action="Controlador" method="post" >
                                                               
                                                                    <input type="hidden" name="form" value="PeliculasComando" >
                                                                    <ul class="nav nav-pills nav-stacked">
                                                                    
                                                                        <li><label><input onclick="submit()" type="radio">Todas </label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="estreno" name="tipo">Estrenos</label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="2" name="tipo">Acci�n</label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="4" name="tipo">Aventura</label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="7" name="tipo">Ciencia Ficci�n</label></li>
                                                                    <li><label><input onclick="submit()" type="radio" value="6" name="tipo">Comedia</label></li>
                                                      
                                                                </ul>
                                                                </form>
                                
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
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
                                </ul>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>About Shopper</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="#">Company Information</a></li>
                                    <li><a href="#">Careers</a></li>
                                    <li><a href="#">Store Location</a></li>
                                    <li><a href="#">Affillate Program</a></li>
                                    <li><a href="#">Copyright</a></li>
                                </ul>
                            </div>
                        </div>                 
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <p class="pull-left">Copyright � 2013 Aefilep Inc. Todos los derechos reservados.</p>
                        <p class="pull-right">Dise�ado por <span>Aefilep Team</a></span></p>
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
