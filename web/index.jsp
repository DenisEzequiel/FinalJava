<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Aefilep | Home</title> 
        <link href="estilos/bootstrap.min.css" rel="stylesheet">
        <link href="estilos/font-awesome.min.css" rel="stylesheet">
        <link href="estilos/prettyPhoto.css" rel="stylesheet">
        <link href="estilos/price-range.css" rel="stylesheet">
        <link href="estilos/animate.css" rel="stylesheet">
        <link href="estilos/main.css" rel="stylesheet">
        <link href="estilos/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="#">
        <!-- iconos para las cosas apple, para mi hay que borrarlo a la mierda -->
      
    </head><!--/head-->

    <body>
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
                                        <form action="index.jsp" method="post" onclick="submit()">  <form action="index.jsp" method="post" onclick="submit()">    
                                            <%if(session.getAttribute("usuario")!=null){%><li><label><input type="radio" name="pagina" value="5" ><i class="fa fa-user"></i> Cuenta</label></li><%}%>             
                                            <li><label><input type="radio" name="pagina" value="6" ><i class="fa fa-shopping-cart"></i> Carrito</label></li>
                                            <li><label><input type="radio" name="pagina" value="7" ><i class="fa fa-lock"></i>Login</label></li>
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
                                    <form action="index.jsp" method="post" onclick="submit()"> 
                                        <ul class="nav navbar-nav collapse navbar-collapse">                                                                           
                                            <li><label><input type="radio" name="pagina" value="1">Home</label></li>
                                            <li><label><input type="radio" name="pagina" value="2">Películas</label></li>
                                            <!--<li class="dropdown"><a href="http://themifycloud.com/demos/templates/eshop/#">Películas<i class="fa fa-angle-down"></i></a>
                                                <ul role="menu" class="sub-menu">
                                                    <form action="index.jsp" onclick="submit()">
                                                        <li><label><input type="hidden" name="pagina" value="1" >Cartelera</label></li>
                                                        <li><label><input type="hidden" name="pagina" value="2" >Película</label></li>
                                                        <li><label><input type="hidden" name="pagina" value="3" >Carro</label></li> 
                                                        <li><label><input type="hidden" name="pagina" value="4" >Login</label></li>
                                                    </form>
                                                </ul>

                                            </li> 

                                            <li class="dropdown"><a href="http://themifycloud.com/demos/templates/eshop/#">Nosotros<i class="fa fa-angle-down"></i></a>
                                                <ul role="menu" class="sub-menu">
                                                    <li><a href="estrenos.jsp">Blog List</a></li>
                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/blog-single.html">Blog Single</a></li>
                                                </ul>
                                            </li>
                                            -->
                                            <li><label><input type="radio" name="pagina" value="3">Nosotros</label></li>
                                            <li><label><input type="radio" name="pagina" value="4">Contacto</label></li>
                                            <!--<li><a href="contacto.jsp">Contacto</a></li> -->                                       
                                        </ul>
                                    </form>    
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="search_box pull-right">
                                    <input type="text" placeholder="Search">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/header-bottom-->
             
        </header>
        
       <%
             String pA = (String)session.getAttribute("PActual");
             if(pA!=null)
             {
                if(request.getParameter("pagina")!=null)
                {
                    session.setAttribute("pagina",request.getParameter("pagina"));
                }   
                int c = Integer.parseInt((String)session.getAttribute("pagina"));
                 
                switch(c)
                {
                        case 1:
                        {
                            %><jsp:include page="home.jsp"/><%
                                break;
                        }
                        case 2:
                        {
                            %><jsp:include page="cartelera.jsp"/><%
                                break;
                        }
                        case 3:
                        {   
                            %><jsp:include page="nosotros.jsp"/><%
                                break;
                        }
                        case 4:
                        {  
                            %><jsp:include page="contacto.jsp"/><%
                                break;
                        }
                        case 5:
                        {   //falta la pagina cuenta
                            %><jsp:include page="cuenta.jsp"/><%
                                break;
                        }
                        case 6:
                        {   
                            %><jsp:include page="carro.jsp"/><%
                                break;
                        }
                        case 7:
                        {   
                            %><jsp:include page="login.jsp"/><%
                                break;
                        }
                        case 8:
                        {
                            %><jsp:include page="signup.jsp"/><%
                        }
                    }
                    if(c!=7)
                    {
                        session.setAttribute("anterior", Integer.toString(c));
                    }
                }
             
             else
             {
                 %><jsp:include page="home.jsp"/><%
                 session.setAttribute("PActual","sad");
                 session.setAttribute("pagina", "1");
                 session.setAttribute("anterior", "1");
             }
        %>
        

        <footer id="footer"><!--Footer-->

            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Service</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="#">Online Help</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <li><a href="#">Order Status</a></li>
                                    <li><a href="#">Change Location</a></li>
                                    <li><a href="#">FAQ?s</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Quock Shop</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="#">T-Shirt</a></li>
                                    <li><a href="#">Mens</a></li>
                                    <li><a href="#">Womens</a></li>
                                    <li><a href="#">Gift Cards</a></li>
                                    <li><a href="#">Shoes</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Policies</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="#">Terms of Use</a></li>
                                    <li><a href="#">Privecy Policy</a></li>
                                    <li><a href="#">Refund Policy</a></li>
                                    <li><a href="#">Billing System</a></li>
                                    <li><a href="#">Ticket System</a></li>
                                </ul>
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
                        <p class="pull-left">Copyright © 2013 Aefilep Inc. Todos los derechos reservados.</p>
                        <p class="pull-right">Designed by <span><a target="_blank" href="#">Aefilep Team</a></span></p>
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
    </body>
</html>
