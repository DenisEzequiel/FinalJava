<%@page import="aplicacion.modelo.negocio.CatalogoDePeliculas"%>
<%@page import="aplicacion.modelo.entidades.Pedido"%>
<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%@page import="aplicacion.modelo.entidades.Parametro"%>
<%@page import="aplicacion.modelo.datos.ParametroBD"%>
<%@page import="aplicacion.modelo.entidades.Pelicula"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"/>
    
<body>
    <% if(session.getAttribute("pedido")==null)
    {
        Pedido pedido = new Pedido();
        session.setAttribute("pedido", pedido);
        session.setAttribute("cantidadDias", 1);
    }
    %>
    <jsp:include page="header.jsp"/>
    <%CatalogoDePeliculas CdP= new CatalogoDePeliculas();
        ArrayList<Pelicula>pelisCarrusel= CdP.obtenerEstrenos(3);
        ArrayList<Pelicula>pelisIndexComedia=CdP.obtenerGenero(6, 0, 4);
        ArrayList<Pelicula>pelisIndexDrama=CdP.obtenerGenero(3, 0, 4);
        ArrayList<Pelicula>pelisIndexTerror=CdP.obtenerGenero(1, 0, 4);
        ArrayList<Pelicula>pelisIndexAccion=CdP.obtenerGenero(2, 0, 4);
        ArrayList<Pelicula>pelisIndexThriller=CdP.obtenerGenero(5, 0, 4);
        
        %>
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
                                                    <% int indice=0;
                                                        for(Pelicula pc: pelisCarrusel)
                                                    { %>
                                                    <div class="item <%if(indice==1){%>active<%}%>">
                                                        
								<div class="col-sm-6">
									<h1><span>A</span>efilep - Video Club</h1>
                                                                        <h2><%=pc.getNombre()%></h2>
									<p><%=pc.getSinopsis()%></p>
                                                                         <form action="Controlador" method="post">
                                                                                            <button type="submit" class="btn btn-default get">Obtener ahora</button>
                                                                                             <input type="hidden"  name="form" value="ObtenerPeliculaComando"/>
                                                                                               <input type="hidden"  name="idPelicula" value="<%=pc.getIdPelicula()%>"/>
                                                                                            </form>
									
								</div>
                                                           
								<div class="col-sm-6">
									<img src="./imagenes/girl1.jpg" class="girl img-responsive" alt="">
									<img src="./imagenes/pricing.png" class="pricing" alt="">
								</div>
							</div>
                                                    <%indice++;}%>                                    
							
							
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
								<li class="active"><a href="#comedia" data-toggle="tab">Comedia</a></li>
								<li><a href="#drama" data-toggle="tab">Drama</a></li>
								<li><a href="#terror" data-toggle="tab">Terror</a></li>
								<li><a href="#accion" data-toggle="tab">Acción</a></li>
								<li><a href="#thriller" data-toggle="tab">Thriller</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="comedia">
                                                            <%for(Pelicula p: pelisIndexComedia)
                                                            {%>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="./imagenes/product12.jpg" alt="">
                                                                                                 <h2><%=p.getNombre()%></h2>
												       <form action="Controlador" method="post">
                                                                                            <button type="submit" class="btn btn-default get">Obtener ahora</button>
                                                                                             <input type="hidden"  name="form" value="ObtenerPeliculaComando"/>
                                                                                               <input type="hidden"  name="idPelicula" value="<%=p.getIdPelicula()%>"/>
                                                                                            </form>
                                                                                               
												
											</div>
											
										</div>
									</div>
								</div>
								<%}%>
							</div>
							
							<div class="tab-pane fade" id="drama">
                                                            <%for(Pelicula p:pelisIndexDrama)
                                                            {%>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="./imagenes/product12.jpg" alt="">
                                                                                                 <h2><%=p.getNombre()%></h2>
												       <form action="Controlador" method="post">
                                                                                            <button type="submit" class="btn btn-default get">Obtener ahora</button>
                                                                                             <input type="hidden"  name="form" value="ObtenerPeliculaComando"/>
                                                                                               <input type="hidden"  name="idPelicula" value="<%=p.getIdPelicula()%>"/>
                                                                                            </form>
                                                                                               
												
											</div>
											
										</div>
									</div>
								</div>
                                                                    <%}%>
						
							
							<div class="tab-pane fade active in" id="terror">
                                                            <%for(Pelicula p: pelisIndexTerror)
                                                            {%>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="./imagenes/product12.jpg" alt="">
                                                                                                 <h2><%=p.getNombre()%></h2>
												       <form action="Controlador" method="post">
                                                                                            <button type="submit" class="btn btn-default get">Obtener ahora</button>
                                                                                             <input type="hidden"  name="form" value="ObtenerPeliculaComando"/>
                                                                                               <input type="hidden"  name="idPelicula" value="<%=p.getIdPelicula()%>"/>
                                                                                            </form>
                                                                                               
												
											</div>
											
										</div>
									</div>
								</div>
								<%}%>
							</div>
							
							<div class="tab-pane fade active in" id="accion">
                                                            <%for(Pelicula p: pelisIndexAccion)
                                                            {%>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="./imagenes/product12.jpg" alt="">
                                                                                                 <h2><%=p.getNombre()%></h2>
												       <form action="Controlador" method="post">
                                                                                            <button type="submit" class="btn btn-default get">Obtener ahora</button>
                                                                                             <input type="hidden"  name="form" value="ObtenerPeliculaComando"/>
                                                                                               <input type="hidden"  name="idPelicula" value="<%=p.getIdPelicula()%>"/>
                                                                                            </form>
                                                                                               
												
											</div>
											
										</div>
									</div>
								</div>
								<%}%>
							</div>
							
							<div class="tab-pane fade active in" id="thriller">
                                                            <%for(Pelicula p: pelisIndexThriller)
                                                            {%>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="./imagenes/product12.jpg" alt="">
                                                                                                 <h2><%=p.getNombre()%></h2>
												       <form action="Controlador" method="post">
                                                                                            <button type="submit" class="btn btn-default get">Obtener ahora</button>
                                                                                             <input type="hidden"  name="form" value="ObtenerPeliculaComando"/>
                                                                                               <input type="hidden"  name="idPelicula" value="<%=p.getIdPelicula()%>"/>
                                                                                            </form>
                                                                                               
												
											</div>
											
										</div>
									</div>
								</div>
								<%}%>
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
