<%@page import="aplicacion.modelo.entidades.Pedido"%>
<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%@page import="aplicacion.modelo.entidades.Parametro"%>
<%@page import="aplicacion.modelo.datos.ParametroBD"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"/>
    
<body>
    <% if(session.getAttribute("pedido")==null)
    {
        Pedido pedido = new Pedido();
        session.setAttribute("pedido", pedido);
    }
    %>
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
									<h1><span>A</span>efilep</h1>
									<h2>Video Club</h2>
									<p>No se pierda este estreno absoluto. Se lo recomendamos.</p>
									<button type="button" class="btn btn-default get">Obtener ahora</button>
								</div>
								<div class="col-sm-6">
									<img src="./imagenes/girl1.jpg" class="girl img-responsive" alt="">
									<img src="./imagenes/pricing.png" class="pricing" alt="">
								</div>
							</div>
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>A</span>efilep</h1>
									<h2>Video Club</h2>
									<p>No se pierda este estreno absoluto. Se lo recomendamos.</p>
									<button type="button" class="btn btn-default get">Obtener ahora</button>
								</div>
								<div class="col-sm-6">
									<img src="./imagenes/girl2.jpg" class="girl img-responsive" alt="">
									<img src="./imagenes/pricing.png" class="pricing" alt="">
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>A</span>efilep</h1>
									<h2>Video Club</h2>
									<p>No se pierda este estreno absoluto. Se lo recomendamos.</p>
									<button type="button" class="btn btn-default get">Obtener ahora</button>
								</div>
								<div class="col-sm-6">
									<img src="./imagenes/girl3.jpg" class="girl img-responsive" alt="">
									<img src="./imagenes/pricing.png" class="pricing" alt="">
								</div>
							</div>
							
						</div>
						
						<a href="/#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="/#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
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
						<h2>Publicidad</h2>
						<div class="shipping text-center"><!--shipping-->
							<img src="./imagenes/shipping.jpg" alt="">
						</div><!--/shipping-->
					
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="category-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active"><a href="http://themifycloud.com/demos/templates/eshop/#tshirt" data-toggle="tab">Comedia</a></li>
								<li><a href="http://themifycloud.com/demos/templates/eshop/#blazers" data-toggle="tab">Drama</a></li>
								<li><a href="http://themifycloud.com/demos/templates/eshop/#sunglass" data-toggle="tab">Terror</a></li>
								<li><a href="http://themifycloud.com/demos/templates/eshop/#kids" data-toggle="tab">Acción</a></li>
								<li><a href="http://themifycloud.com/demos/templates/eshop/#poloshirt" data-toggle="tab">Thriller</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="tshirt">
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="./imagenes/gallery1.jpg" alt="">
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
												<img src="./imagenes/gallery2.jpg" alt="">
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
												<img src="./imagenes/gallery3.jpg" alt="">
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
												<img src="./imagenes/gallery4.jpg" alt="">
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="http://themifycloud.com/demos/templates/eshop/#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
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
												<img src="./imagenes/gallery4.jpg" alt="">
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
												<img src="./imagenes/gallery3.jpg" alt="">
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
												<img src="./imagenes/gallery2.jpg" alt="">
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
												<img src="./imagenes/gallery1.jpg" alt="">
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
												<img src="./imagenes/gallery3.jpg" alt="">
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
												<img src="./imagenes/gallery4.jpg" alt="">
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
												<img src="./imagenes/gallery1.jpg" alt="">
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
												<img src="./imagenes/gallery2.jpg" alt="">
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
												<img src="./imagenes/gallery1.jpg" alt="">
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
												<img src="./imagenes/gallery2.jpg" alt="">
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
												<img src="./imagenes/gallery3.jpg" alt="">
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
												<img src="./imagenes/gallery4.jpg" alt="">
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
												<img src="./imagenes/gallery2.jpg" alt="">
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
												<img src="./imagenes/gallery4.jpg" alt="">
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
												<img src="./imagenes/gallery3.jpg" alt="">
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
												<img src="./imagenes/gallery1.jpg" alt="">
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
				</div>
			</div>
		</div>
	</section>
        
       <jsp:include page="footer.jsp"/>
    </body>
</html>
