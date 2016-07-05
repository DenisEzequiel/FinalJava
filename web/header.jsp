<%@page import="aplicacion.modelo.entidades.Pedido"%>
<%@page import="aplicacion.modelo.entidades.Usuario"%>
<% Pedido pedido = (Pedido)session.getAttribute("pedido");%>
<header id="header">
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
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
                        <div class="col-sm-5">
                            <div class="logo pull-left">
                                <a href="index.jsp"><span>A</span>efilep</a>
                            </div>               
                        </div>
 
                        <div class="col-sm-7">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                        <li>
                                            <% if(session.getAttribute("exitoPeliculaAgregada")!=null){ %>
                                            <div class='cartel'>
                                               
                                                <div class="popover fade left <%if(session.getAttribute("exitoPeliculaAgregada")!=null)
                                                                                { %> in <%
                                                                                    session.setAttribute("exitoPeliculaAgregada", null); } %>">
                                                     <div class="arrow"></div>
                                                     <div class="popover-content">
                                                         Se ha agregado una película al carro.
                                                     </div>
                                                     
                                                </div> 
                                            </div>
                                                     <%}else if(session.getAttribute("exitoLogin")!=null){%>
                                                <div class='cartel'>
                                               
                                                <div class="popover fade left <%if(session.getAttribute("exitoLogin")!=null)
                                                                                { %> in <%
                                                                                    session.setAttribute("exitoLogin", null); } %>">
               
                                                     <div class="popover-content">
                                                         Usuario logueado, bienvenid@ <%Usuario usu= (Usuario)session.getAttribute("usuario");%>
                                                                    <%=usu.getNombre()%> 
                                                     </div>
                                                     
                                                </div> 
                                            </div> 
                                               <%}%>      
                                        </li>
                                        
                                        <li>
                                            <a href="carro.jsp"><i class="fa fa-shopping-cart"></i><input type="submit" name="pagina" value=" Carrito (<%=pedido.getLineas().size()%>)" ></a>
                                        </li>
                                        <%if(session.getAttribute("usuario")==null)
                                            {%>
                                                <li><a href="login.jsp"><i class="fa fa-lock"></i><input type="button" name="pagina" value="Ingresar" ></a></li>
                                            <%}
                                            else
                                            {%>
                                                <li><a href="cuenta.jsp"><i class="fa fa-user"></i><input type="button" name="pagina" value="Cuenta" ></a></li>
                                                <li>
                                                    <form action="Controlador" method="post" class="formNav">
                                                        <input type="hidden"  name="form" value="LogOutComando"/>
                                                        <i class="fa fa-lock"></i><input type="submit" name="pagina" value=" Salir" >
                                                    </form>
                                                </li>
                                            <%}%>
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
                                            <li class="dropdown"><a href="#">Administrador<i class="fa fa-angle-down"></i></a>
                                            <ul role="menu" class="sub-menu">
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
                                                <li><a href="">Admin opcion 2</a></li>
                                            </ul>
                                            </li> 
                                        <%}%>                                                         
                                    </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <form action="Controlador" method="post">
                                <input type="text" name="nombrePelicula" placeholder="Nombre pelicula">
                                <input type="hidden" name="form" value="PeliculasComando" onchange="submit()">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->     
        </header>
