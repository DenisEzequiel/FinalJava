<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%@page import="aplicacion.modelo.entidades.Parametro"%>
<%@page import="aplicacion.modelo.datos.ParametroBD"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="head.jsp"/>
    
<body>
    <jsp:include page="header.jsp"/>
        <section id="slider"><!--slider-->
                    <div class="container">
                            <div class="row">
                                    <div class="col-sm-12">
                                            <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                                                    <ol class="carousel-indicators">
                                                            <li data-target="#slider-carousel" data-slide-to="0" class=""></li>
                                                            <li data-target="#slider-carousel" data-slide-to="1" class="active"></li>
                                                            <li data-target="#slider-carousel" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <div class="carousel-inner">
                                                            <div class="item">
                                                                    <div class="col-sm-6">
                                                                            <h1><span>E</span>-Shop</h1>
                                                                            <h2>Free E-Commerce Template</h2>
                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                                                            <button type="button" class="btn btn-default get">Get it now</button>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                            <img src="imagenes/girl1.jpg" class="girl img-responsive" alt="">
                                                                            <img src="imagenes/pricing.png" class="pricing" alt="">
                                                                    </div>
                                                            </div>
                                                            <div class="item active">
                                                                    <div class="col-sm-6">
                                                                            <h1><span>E</span>-Shop</h1>
                                                                            <h2>100% Responsive Design</h2>
                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                                                            <button type="button" class="btn btn-default get">Get it now</button>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                            <img src="imagenes/girl2.jpg" class="girl img-responsive" alt="">
                                                                            <img src="imagenes/pricing.png" class="pricing" alt="">
                                                                    </div>
                                                            </div>

        <a id="scrollUp" href="index.jsp/#top" style="position: fixed; z-index: 2147483647; display: none;"><i class="fa fa-angle-up"></i></a>
    </body>
</html>
