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

                                                            <div class="item">
                                                                    <div class="col-sm-6">
                                                                            <h1><span>E</span>-Shop</h1>
                                                                            <h2>Free Ecommerce Template</h2>
                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                                                            <button type="button" class="btn btn-default get">Get it now</button>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                            <img src="imagenes/girl3.jpg" class="girl img-responsive" alt="">
                                                                            <img src="imagenes/pricing.png" class="pricing" alt="">
                                                                    </div>
                                                            </div>

                                                    </div>

                                                    <a href="http://themifycloud.com/demos/templates/eshop/#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                                                            <i class="fa fa-angle-left"></i>
                                                    </a>
                                                    <a href="http://themifycloud.com/demos/templates/eshop/#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                                                            <i class="fa fa-angle-right"></i>
                                                    </a>
                                            </div>

                                    </div>
                            </div>
                    </div>
            </section><!--/slider-->

            <section>
                    <div class="container">
                            <div class="row">
                                    <div class="col-sm-3">
                                            <div class="left-sidebar">
                                                    <h2>Géneros</h2>
                                                    <div class="brands-name">
                                                        <ul class="nav nav-pills nav-stacked">
                                                            <li><a href="estrenos.jsp">Estrenos</a></li>
                                                            <li><a href="index.jsp">Accion</a></li>
                                                            <li><a href="index.jsp">Aventura</a></li>
                                                            <li><a href="index.jsp">Ciencia Ficcion</a></li>
                                                            <li><a href="index.jsp">Comedia</a></li>
                                                            <li><a href="index.jsp">Crimen</a></li>
                                                            <li><a href="index.jsp">Documental</a></li>
                                                            <li><a href="index.jsp">Drama</a></li>
                                                            <li><a href="index.jsp">Romance</a></li>
                                                            <li><a href="index.jsp">Suspenso</a></li>
                                                            <li><a href="index.jsp">Thriller</a></li>
                                                            <li><a href="index.jsp">Terror</a></li>
                                                        </ul>
                                                    </div>
                                                    <!--<div class="panel-group category-products" id="accordian"><!--category-productsr
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="estrenos.jsp">Estrenos</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Acción</a></h4>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Aventura</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Ciencia Ficción</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Comedia</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Crimen</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Documental</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Drama</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Romance</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Suspenso</a></h4>
								</div>
							</div>
                                                        <div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Thriller</a></h4>
								</div>
							</div>
                                                        <div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="index.jsp">Terror</a></h4>
								</div>
							</div>
						</div><!--/category-productsr-->

                                                    <div class="brands_products"><!--brands_products-->
                                                            <h2>Brands</h2>
                                                            <div class="brands-name">
                                                                    <ul class="nav nav-pills nav-stacked">
                                                                            <li><a href="#"> <span class="pull-right">(50)</span>Acne</a></li>
                                                                            <li><a href="#"> <span class="pull-right">(56)</span>Grüne Erde</a></li>
                                                                            <li><a href="#"> <span class="pull-right">(27)</span>Albiro</a></li>
                                                                            <li><a href="#"> <span class="pull-right">(32)</span>Ronhill</a></li>
                                                                            <li><a href="#"> <span class="pull-right">(5)</span>Oddmolly</a></li>
                                                                            <li><a href="#"> <span class="pull-right">(9)</span>Boudestijn</a></li>
                                                                            <li><a href="#"> <span class="pull-right">(4)</span>Rösch creative culture</a></li>
                                                                    </ul>
                                                            </div>
                                                    </div><!--/brands_products-->

                                                    <div class="price-range"><!--price-range-->
                                                            <h2>Price Range</h2>
                                                            <div class="well text-center">
                                                                     <div class="slider slider-horizontal" style="width: 163px;"><div class="slider-track"><div class="slider-selection" style="left: 41.6667%; width: 33.3333%;"></div><div class="slider-handle round left-round" style="left: 41.6667%;"></div><div class="slider-handle round" style="left: 75%;"></div></div><div class="tooltip top" style="top: -30px; left: 62.5833px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">250 : 450</div></div><input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2"></div><br>
                                                                     <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                                                            </div>
                                                    </div><!--/price-range-->

                                                    <div class="shipping text-center"><!--shipping-->
                                                            <img src="imagenes/shipping.jpg" alt="">
                                                    </div><!--/shipping-->

                                            </div>
                                    </div>

                                    <div class="col-sm-9 padding-right">
                                            <div class="features_items"><!--features_items-->
                                                    <h2 class="title text-center">Features Items</h2>
                                                    <div class="col-sm-4">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                                    <div class="productinfo text-center">
                                                                                            <img src="imagenes/product1.jpg" alt="">
                                                                                            <h2>$56</h2>
                                                                                            <p>Easy Polo Black Edition</p>
                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                    </div>
                                                                                    <div class="product-overlay">
                                                                                            <div class="overlay-content">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>
                                                                                    </div>
                                                                    </div>
                                                                    <div class="choose">
                                                                            <ul class="nav nav-pills nav-justified">
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                                                            </ul>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                            <div class="productinfo text-center">
                                                                                    <img src="imagenes/product2.jpg" alt="">
                                                                                    <h2>$56</h2>
                                                                                    <p>Easy Polo Black Edition</p>
                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                            </div>
                                                                            <div class="product-overlay">
                                                                                    <div class="overlay-content">
                                                                                            <h2>$56</h2>
                                                                                            <p>Easy Polo Black Edition</p>
                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="choose">
                                                                            <ul class="nav nav-pills nav-justified">
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                                                            </ul>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                            <div class="productinfo text-center">
                                                                                    <img src="imagenes/product3.jpg" alt="">
                                                                                    <h2>$56</h2>
                                                                                    <p>Easy Polo Black Edition</p>
                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                            </div>
                                                                            <div class="product-overlay">
                                                                                    <div class="overlay-content">
                                                                                            <h2>$56</h2>
                                                                                            <p>Easy Polo Black Edition</p>
                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="choose">
                                                                            <ul class="nav nav-pills nav-justified">
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                                                            </ul>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                            <div class="productinfo text-center">
                                                                                    <img src="imagenes/product4.jpg" alt="">
                                                                                    <h2>$56</h2>
                                                                                    <p>Easy Polo Black Edition</p>
                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                            </div>
                                                                            <div class="product-overlay">
                                                                                    <div class="overlay-content">
                                                                                            <h2>$56</h2>
                                                                                            <p>Easy Polo Black Edition</p>
                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                    </div>
                                                                            </div>
                                                                            <img src="imagenes/new.png" class="new" alt="">
                                                                    </div>
                                                                    <div class="choose">
                                                                            <ul class="nav nav-pills nav-justified">
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                                                            </ul>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                            <div class="productinfo text-center">
                                                                                    <img src="imagenes/product5.jpg" alt="">
                                                                                    <h2>$56</h2>
                                                                                    <p>Easy Polo Black Edition</p>
                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                            </div>
                                                                            <div class="product-overlay">
                                                                                    <div class="overlay-content">
                                                                                            <h2>$56</h2>
                                                                                            <p>Easy Polo Black Edition</p>
                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                    </div>
                                                                            </div>
                                                                            <img src="imagenes/sale.png" class="new" alt="">
                                                                    </div>
                                                                    <div class="choose">
                                                                            <ul class="nav nav-pills nav-justified">
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                                                            </ul>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                            <div class="product-image-wrapper">
                                                                    <div class="single-products">
                                                                            <div class="productinfo text-center">
                                                                                    <img src="imagenes/product6.jpg" alt="">
                                                                                    <h2>$56</h2>
                                                                                    <p>Easy Polo Black Edition</p>
                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                            </div>
                                                                            <div class="product-overlay">
                                                                                    <div class="overlay-content">
                                                                                            <h2>$56</h2>
                                                                                            <p>Easy Polo Black Edition</p>
                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="choose">
                                                                            <ul class="nav nav-pills nav-justified">
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                                                            </ul>
                                                                    </div>
                                                            </div>
                                                    </div>

                                            </div><!--features_items-->

                                            <div class="category-tab"><!--category-tab-->
                                                    <div class="col-sm-12">
                                                            <ul class="nav nav-tabs">
                                                                    <li class="active"><a href="http://themifycloud.com/demos/templates/eshop/#tshirt" data-toggle="tab">T-Shirt</a></li>
                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#blazers" data-toggle="tab">Blazers</a></li>
                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#sunglass" data-toggle="tab">Sunglass</a></li>
                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#kids" data-toggle="tab">Kids</a></li>
                                                                    <li><a href="http://themifycloud.com/demos/templates/eshop/#poloshirt" data-toggle="tab">Polo shirt</a></li>
                                                            </ul>
                                                    </div>
                                                    <div class="tab-content">
                                                            <div class="tab-pane fade active in" id="tshirt">
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery1.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="pelicula.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery2.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="pelicula.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery3.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="pelicula.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery4.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="pelicula.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                            </div>

                                                            <div class="tab-pane fade" id="blazers">
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery4.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="pelicula.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery3.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery2.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery1.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                            </div>

                                                            <div class="tab-pane fade" id="sunglass">
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery3.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery4.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery1.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery2.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                            </div>

                                                            <div class="tab-pane fade" id="kids">
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery1.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery2.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery3.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery4.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                            </div>

                                                            <div class="tab-pane fade" id="poloshirt">
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery2.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery4.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery3.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                            <div class="product-image-wrapper">
                                                                                    <div class="single-products">
                                                                                            <div class="productinfo text-center">
                                                                                                    <img src="imagenes/gallery1.jpg" alt="">
                                                                                                    <h2>$56</h2>
                                                                                                    <p>Easy Polo Black Edition</p>
                                                                                                    <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                            </div>

                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                    </div>
                                            </div><!--/category-tab-->

                                            <div class="recommended_items"><!--recommended_items-->
                                                    <h2 class="title text-center">recommended items</h2>

                                                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                                            <div class="carousel-inner">
                                                                    <div class="item active">	
                                                                            <div class="col-sm-4">
                                                                                    <div class="product-image-wrapper">
                                                                                            <div class="single-products">
                                                                                                    <div class="productinfo text-center">
                                                                                                            <img src="imagenes/recommend1.jpg" alt="">
                                                                                                            <h2>$56</h2>
                                                                                                            <p>Easy Polo Black Edition</p>
                                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                                    </div>

                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                    <div class="product-image-wrapper">
                                                                                            <div class="single-products">
                                                                                                    <div class="productinfo text-center">
                                                                                                            <img src="imagenes/recommend2.jpg" alt="">
                                                                                                            <h2>$56</h2>
                                                                                                            <p>Easy Polo Black Edition</p>
                                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                                    </div>

                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                    <div class="product-image-wrapper">
                                                                                            <div class="single-products">
                                                                                                    <div class="productinfo text-center">
                                                                                                            <img src="imagenes/recommend3.jpg" alt="">
                                                                                                            <h2>$56</h2>
                                                                                                            <p>Easy Polo Black Edition</p>
                                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                                    </div>

                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                                    <div class="item">	
                                                                            <div class="col-sm-4">
                                                                                    <div class="product-image-wrapper">
                                                                                            <div class="single-products">
                                                                                                    <div class="productinfo text-center">
                                                                                                            <img src="imagenes/recommend1.jpg" alt="">
                                                                                                            <h2>$56</h2>
                                                                                                            <p>Easy Polo Black Edition</p>
                                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                                    </div>

                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                    <div class="product-image-wrapper">
                                                                                            <div class="single-products">
                                                                                                    <div class="productinfo text-center">
                                                                                                            <img src="imagenes/recommend2.jpg" alt="">
                                                                                                            <h2>$56</h2>
                                                                                                            <p>Easy Polo Black Edition</p>
                                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                                    </div>

                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                    <div class="product-image-wrapper">
                                                                                            <div class="single-products">
                                                                                                    <div class="productinfo text-center">
                                                                                                            <img src="imagenes/recommend3.jpg" alt="">
                                                                                                            <h2>$56</h2>
                                                                                                            <p>Easy Polo Black Edition</p>
                                                                                                            <a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                                                    </div>

                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                             <a class="left recommended-item-control" href="http://themifycloud.com/demos/templates/eshop/#recommended-item-carousel" data-slide="prev">
                                                                    <i class="fa fa-angle-left"></i>
                                                              </a>
                                                              <a class="right recommended-item-control" href="http://themifycloud.com/demos/templates/eshop/#recommended-item-carousel" data-slide="next">
                                                                    <i class="fa fa-angle-right"></i>
                                                              </a>			
                                                    </div>
                                            </div><!--/recommended_items-->

                                    </div>
                            </div>
                    </div>
            </section>
            <jsp:include page="footer.jsp"></jsp:include>
            </body>
</html>
