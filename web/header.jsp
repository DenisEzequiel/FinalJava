<%@page import="aplicacion.modelo.entidades.Usuario"%>
<header id="header">
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                  <!--  <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li> -->
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->
            
            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="index.jsp"><span>E</span>-Shop</a>
                            </div>               
                        </div>
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <%if(session.getAttribute("usuario")!=null){%><li><input  type="button" name="pagina" value="Cuenta"><i class="fa fa-user"></i></li><%}%>             
                                        <li><form action="Controlador" method="post">
                                                        <input type="hidden"  name="form" value="CarritoComando"/>
                                                        <i class="fa fa-shopping-cart"></i><input type="button" name="pagina" value="Carrito" >
                                                    </form></li>
                                        <%if(session.getAttribute("usuario")==null){%>
                                        <li><a href="login.jsp"><i class="fa fa-lock"></i><input type="button" name="pagina" value="Ingresar" ></a></li>
                                        <%}else{%> <li><form action="Controlador" method="post">
                                                        <input type="hidden"  name="form" value="LogOutComando"/>
                                                        <i class="fa fa-lock"></i><input type="submit" name="pagina" value="Salir" >
                                                    </form></li>
                                            <%}%>
                                    </form>        
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->
            
            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left"> 
                                    <ul class="nav navbar-nav collapse navbar-collapse">                                                                           
                                        <li>
                                            <form action="Controlador" method="post">
                                                <input type="hidden"  name="form" value="InicioComando"/>
                                                <input type="submit" name="pagina" value="Inicio" >
                                            </form>
                                        </li>
                                        <li>
                                            <form action="Controlador" method="post">
                                                <input type="hidden"  name="form" value="PeliculasComando"/>
                                                <input type="submit" name="pagina" value="Peliculas" >
                                            </form>
                                        </li>
                                        <li><label><a href="nosotros.jsp"><input type="button" name="pagina" value="Nosotros"></a></label></li>
                                        <li>
                                            <form action="Controlador" method="post">
                                                <input type="hidden"  name="form" value="ContactoComando"/>
                                                <input type="submit" name="pagina" value="Contacto" >
                                            </form>
                                        </li>                                   
                                        <%Usuario usu = (Usuario)session.getAttribute("usuario");
                                        if(usu!=null && usu.isEsAdmin())
                                        {%>
                                            <li>
                                            <form action="Controlador" method="post">
                                                <input type="hidden"  name="form" value="AgregarPeliculaComando"/>
                                                <input type="submit" name="pagina" value="Administrador" >
                                            </form>
                                            </li>
                                        <%}%>                                                         
                                    </ul>
                                </form>   
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <input type="text" placeholder="Buscar">
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->     
        </header>
