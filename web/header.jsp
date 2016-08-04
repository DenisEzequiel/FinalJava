<%@page import="aplicacion.modelo.negocio.CatalogoDeUsuarios"%>
<%@page import="aplicacion.modelo.entidades.Pedido"%>
<%@page import="aplicacion.modelo.entidades.Usuario"%>

    <%//Mantenerme conectado
        String nomUsu = null;
        String contra = null;
        if( request.getCookies()!=null && session.getAttribute("usuario")==null )
        {
            Cookie[] cookies = request.getCookies();
            for(Cookie c:cookies)
            {
                if(c.getName().equals("nomUsuarioAefilep"))
                    nomUsu=c.getValue();
                if(c.getName().equals("contraAefilep"))
                    contra=c.getValue();
            }
            if(nomUsu!=null && contra!=null)
            {
                CatalogoDeUsuarios cDeUsus = new CatalogoDeUsuarios();
                Usuario usu = cDeUsus.buscarUsuario(nomUsu, contra);
                if(usu!=null)
                {
                    session.setAttribute("usuario", usu);
                    session.setAttribute("exitoLogin", true);
                }
            }
        }
    %>
    <%  Pedido pedido=null; 
        if(session.getAttribute("pedido")==null)
        {
            pedido = new Pedido();
            session.setAttribute("pedido", pedido);
            session.setAttribute("cantidadDias", 1);
        }
        else
        {
            pedido = (Pedido)session.getAttribute("pedido");
        }
    %>
 <header id="header">
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
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
                <div class="col-sm-3">
                    <div class="logo pull-left">
                        <a href="index.jsp"><img src="./imagenes/logo.jpg"></a>
                    </div>               
                </div>
                <div class="col-sm-9">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav" id="ajusteBarra">
                            <li >
                               
                                <div class='cartel'>
                                     <% if(session.getAttribute("exitoPeliculaAgregada")!=null){ %>
                                    <div class="popover fade left <%if(session.getAttribute("exitoPeliculaAgregada")!=null){ %> in <%session.setAttribute("exitoPeliculaAgregada", null); } %>">
                                    <div class="arrow"></div>
                                        <div class="popover-content">
                                            Se ha agregado una película al carro.
                                        </div>    
                                    </div> 
                                    <%}else if(session.getAttribute("exitoLogin")!=null){%>
                               
                                    <div class="popover fade left <%if(session.getAttribute("exitoLogin")!=null){ %> in <%session.setAttribute("exitoLogin", null); } %>">
                                        <div class="popover-content">
                                            Usuario logueado, bienvenid@
                                            <%if(session.getAttribute("usuario")!=null)
                                            {
                                                Usuario usu= (Usuario)session.getAttribute("usuario");
                                            %>
                                            <%=usu.getNombre()%>
                                            <%}%>
                                        </div>                                                     
                                    </div>
                                      <%}%>   
                                </div> 
                                   
                            </li>

                            <li>
                                <a class="<%if(request.getRequestURI().equals("/FinalJava/carro.jsp")){%>active<%}%>" href="carro.jsp"><i class="fa fa-shopping-cart"></i> Carrito (<%=pedido.getLineas().size()%>)</a>
                            </li>
                            <%if(session.getAttribute("usuario")==null)
                            {%>
                            <li><a class="<%if(request.getRequestURI().equals("/FinalJava/login.jsp")){%>active<%}%>" href="login.jsp"><i class="fa fa-lock"></i> Ingresar</a></li>
                            <%}
                            else
                            {
                            Usuario usu = (Usuario)session.getAttribute("usuario");
                            if(!usu.isEsAdmin()){%>
                            <li>
                                <a class="" href="#">
                                    <form action="Controlador" method="post" class="formNav" id="formSalir">
                                        <input type="hidden"  name="form" value="MisPedidosComando"/>
                                        <i class="fa fa-lock"></i><input class="<%if(request.getRequestURI().equals("/FinalJava/pedidos.jsp")){%>active<%}%>" type="submit" name="pagina" value=" Mis Pedidos" >
                                    </form>
                                </a>
                            </li><%}%>
                            <li><a href="cuenta.jsp" class="<%if(request.getRequestURI().equals("/FinalJava/cuenta.jsp")){%>active<%}%>"><i class="fa fa-user"></i> Cuenta</a></li>
                            <li>
                                <form action="Controlador" method="post" class="formNav" id="formSalir">
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
                            <li><a class="<%if(request.getRequestURI().equals("/FinalJava/index.jsp")){%>active<%}%>" href="index.jsp">Inicio</a></li>
                            <li>
                                <a>
                                    <form action="Controlador" method="post">                                
                                        <input class="<%if(request.getRequestURI().equals("/FinalJava/cartelera.jsp")){%>active<%}%>" type="submit" name="pagina" value="Peliculas" >
                                        <input type="hidden"  name="tipo" value="todas"/>
                                        <input type="hidden"  name="form" value="PeliculasComando"/>
                                    </form>
                                </a>
                            </li>
                            <li><a class="<%if(request.getRequestURI().equals("/FinalJava/nosotros.jsp")){%>active<%}%>" href="nosotros.jsp">Nosotros</a></li>
                           
                            <li>
                                <a>
                                    <form action="Controlador" method="post">
                                        <input type="hidden"  name="form" value="ContactoComando"/>
                                        <input class="<%if(request.getRequestURI().equals("/FinalJava/contacto.jsp")){%>active<%}%>" type="submit" name="pagina" value="Contacto" >
                                    </form>
                                </a>
                            </li>                                   
                            <%Usuario usu = (Usuario)session.getAttribute("usuario");
                            if(usu!=null && usu.isEsAdmin())
                            {%>
                            <li class="dropdown"><a href="#" class="<%if(request.getRequestURI().equals("/FinalJava/ABMUsuarios.jsp") ||request.getRequestURI().equals("/FinalJava/ABMPeliculas.jsp") || request.getRequestURI().equals("/FinalJava/Devoluciones.jsp") ){%>active<%}%>" >Administrador<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li>
                                        <a>
                                            <form action="Controlador" method="post">
                                                <input type="hidden"  name="desdeIndex" value="desdeIndex"/>
                                                <input type="hidden"  name="form" value="AdminPeliculasComando"/>
                                                <input class="<%if(request.getRequestURI().equals("/FinalJava/ABMPeliculas.jsp") ){%>active<%}%>" type="submit" name="pagina" value="Peliculas">
                                            </form>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <form action="Controlador" method="post">
                                                <input type="hidden"  name="form" value="AdminUsuariosComando"/>
                                                <input type="submit" name="pagina" value="Usuarios" class="<%if(request.getRequestURI().equals("/FinalJava/ABMUsuarios.jsp") ){%>active<%}%>">
                                            </form>
                                        </a>
                                    </li>
                                      <li>
                                        <a>
                                            <form action="Controlador" method="post">
                                                <input type="hidden"  name="form" value="EnviosComando"/>
                                                <input type="submit" name="pagina" value="Envíos" class="<%if(request.getRequestURI().equals("/FinalJava/envios.jsp") ){%>active<%}%>">
                                            </form>
                                        </a>
                                    </li>
                                    <li><a class="<%if(request.getRequestURI().equals("/FinalJava/Devoluciones.jsp") ){%>active<%}%>" href="Devoluciones.jsp">Devoluciones</a></li>
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
                            <input type="hidden" name="tipo" value="buscador">
                            <input type="hidden" name="form" value="PeliculasComando" onchange="submit()">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->     
</header>
