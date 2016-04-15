<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Home | E-Shop</title> 
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
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://themifycloud.com/demos/templates/eshop/images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://themifycloud.com/demos/templates/eshop/images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://themifycloud.com/demos/templates/eshop/images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="http://themifycloud.com/demos/templates/eshop/images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

    <body>
        <header id="header">
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
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
            <form action="index.jsp" method="post" onclick="submit()">
                <div class="header-middle"><!--header-middle-->
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="logo pull-left">
                                    <a href="index.jsp"><span>E</span>-Shop</a>
                                </div>
                                <div class="btn-group pull-right">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                            USA
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Canada</a></li>
                                            <li><a href="#">UK</a></li>
                                        </ul>
                                    </div>

                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                            DOLLAR
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Canadian Dollar</a></li>
                                            <li><a href="#">Pound</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="shop-menu pull-right">
                                    <ul class="nav navbar-nav">

                                            <li><label><input type="radio" name="pagina" value="5" ><i class="fa fa-user"></i> Cuenta</label></li>                                    
                                            <li><label><input type="radio" name="pagina" value="6" ><i class="fa fa-shopping-cart"></i> Carrito</label></li>
                                            <li><label><input type="radio" name="pagina" value="7" ><i class="fa fa-lock"></i>Login</label></li>

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

                                            <li><label><input type="radio" name="pagina" value="1" >Home</label></li>
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
             </form>
        </header>
        
        <%
        String pA = (String)session.getAttribute("PActual");
        if( request.getParameter("pagina") == null && pA == null )
        {
            %><jsp:include page="home.jsp"/><%
             
        }
        else if(pA == null)
        {
            int c = Integer.parseInt(request.getParameter("pagina"));
            switch(c)
            {
                case 1:
                {
                    %><jsp:include page="home.jsp"/><%
                    
                        break;
                }
                case 2:
                {
                    %><jsp:include page="pelicula.jsp"/><%
                        break;
                }
                case 3:
                {   //falta la pagina nosotros
                    %><jsp:include page="contacto.jsp"/><%
                        break;
                }
                case 4:
                {  
                    %><jsp:include page="contacto.jsp"/><%
                        break;
                }
                case 5:
                {   //falta la pagina cuenta
                    %><jsp:include page="contacto.jsp"/><%
                        break;
                }
                case 6:
                {   
                    %><jsp:include page="carro.jsp"/><%
                        break;
                }
                case 7:
                {   //falta la pagina cuenta
                    %><jsp:include page="login.jsp"/><%
                        break;
                }
            }
        }
        else
        {
            int c = Integer.parseInt(pA);
            switch(c)
            {             
                 case 1:
                {
                    %><jsp:include page="home.jsp"/><%
                    
                        break;
                }
                case 2:
                {
                    %><jsp:include page="pelicula.jsp"/><%
                        break;
                }
                case 3:
                {   //falta la pagina nosotros
                    %><jsp:include page="contacto.jsp"/><%
                        break;
                }
                case 4:
                {  
                    %><jsp:include page="contacto.jsp"/><%
                        break;
                }
                case 5:
                {   //falta la pagina cuenta
                    %><jsp:include page="contacto.jsp"/><%
                        break;
                }
                case 6:
                {   
                    %><jsp:include page="carro.jsp"/><%
                        break;
                }
                case 7:
                {   //falta la pagina cuenta
                    %><jsp:include page="login.jsp"/><%
                        break;
                }
            }    
        }%>

        <footer id="footer"><!--Footer-->
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="companyinfo">
                                <h2><span>e</span>-shop</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="col-sm-3">
                                <div class="video-gallery text-center">
                                    <a href="#">
                                        <div class="iframe-img">
                                            <img src="imagenes/iframe1.png" alt="">
                                        </div>
                                        <div class="overlay-icon">
                                            <i class="fa fa-play-circle-o"></i>
                                        </div>
                                    </a>
                                    <p>Circle of Hands</p>
                                    <h2>24 DEC 2014</h2>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="video-gallery text-center">
                                    <a href="#">
                                        <div class="iframe-img">
                                            <img src="imagenes/iframe2.png" alt="">
                                        </div>
                                        <div class="overlay-icon">
                                            <i class="fa fa-play-circle-o"></i>
                                        </div>
                                    </a>
                                    <p>Circle of Hands</p>
                                    <h2>24 DEC 2014</h2>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="video-gallery text-center">
                                    <a href="#">
                                        <div class="iframe-img">
                                            <img src="imagenes/iframe3.png" alt="">
                                        </div>
                                        <div class="overlay-icon">
                                            <i class="fa fa-play-circle-o"></i>
                                        </div>
                                    </a>
                                    <p>Circle of Hands</p>
                                    <h2>24 DEC 2014</h2>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="video-gallery text-center">
                                    <a href="#">
                                        <div class="iframe-img">
                                            <img src="imagenes/iframe4.png" alt="">
                                        </div>
                                        <div class="overlay-icon">
                                            <i class="fa fa-play-circle-o"></i>
                                        </div>
                                    </a>
                                    <p>Circle of Hands</p>
                                    <h2>24 DEC 2014</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="address">
                                <img src="imagenes/map.png" alt="">
                                <p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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
                        <div class="col-sm-3 col-sm-offset-1">
                            <div class="single-widget">
                                <h2>About Shopper</h2>
                                <form action="#" class="searchform">
                                    <input type="text" placeholder="Your email address">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                                    <p>Get the most recent updates from <br>our site and be updated your self...</p>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <p class="pull-left">Copyright © 2013 E-Shop Inc. All rights reserved.</p>
                        <p class="pull-right">Designed by <span><a target="_blank" href="#">InvoInn</a></span></p>
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