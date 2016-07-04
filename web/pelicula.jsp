<%@page import="aplicacion.modelo.entidades.Pelicula"%>
<html>
    <head>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <%Pelicula peliActual=(Pelicula)session.getAttribute("peliActual"); %>
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
                                                        </div>
                                                </div>

                                                <div class="col-sm-9 padding-right">
                                                        <div class="product-details"><!--product-details-->
                                                                <div class="col-sm-5">
                                                                        <div class="view-product">
                                                                                <img src="imagenes/product12.jpg" alt="">
                                                                                
                                                                        </div>
                                                                      
                                                                                
                                                                        </div>
                                                             <div class="col-sm-7">
                                                                        <div class="product-information"><!--/product-information-->
                                                                            <!-- desp podemos poner el coso d estreno<img src="imagenes/new.jpg" class="newarrival" alt="">-->
                                                                            <h2><%=peliActual.getNombre()%></h2>
                                                                                <p></p>
                                                                               
                                                                                <span>
                                                                                        
                                                                                    <label>Duración: <%=peliActual.getDuracion()%></label>
                                                                                      <label>Año: <%=peliActual.getAnio()%></label>
                                             
                                                                                </span>
                                                                                    <p><b>Disponible para alquiler:</b><%if(peliActual.getStockAlquiler()>0){ %> Si <%}else{%> No <%}%></p>
                                                                                    <p><b>Estreno: </b> <%if(peliActual.isEstreno()){%> Si <%}else{%> No <%}%></p>
                                                                                     <p><b>Formato:</b><%=peliActual.getFormato()%></p>
                                                                                    <p><b>Reparto:</b><%=peliActual.getReparto()%></p>
                                                                                    <p><b>Sinopsis:</b><%=peliActual.getSinopsis()%></p>
                                                                                    <form action="Controlador" method="post">
                                                                                    <div class="row">
                                                                                                    <input type="hidden"  name="form" value="AgregarLineaComando"/>
                                                                                                    <input type="hidden" name="idPelicula" value="<%=peliActual.getIdPelicula()%>"/>
                                                                                                    <input type="hidden" name="provieneDePelicula" value="true">
                                                                                                
                                                                                    <span><span class="precios">Alquiler $<%=String.format("%.2f",peliActual.getPrecioAlquiler())%></span>
                                                                                         <button type="submit" class="btn btn-fefault cart"  name="tipoLinea" value="Alquilar">
                                                                                               <i class="fa fa-shopping-cart"></i>
                                                                                                Alquilar
                                                                                        </button>
                                                                                    </span>
                                                                                    </div>
                                                                                    <div class="row">
                                                                                    <span>
                                                                                    <span class="precios">Compra $<%=String.format("%.2f",peliActual.getPrecioVenta())%></span>
                                                                                     <button type="submit" class="btn btn-fefault cart"  name="tipoLinea" value="Comprar">
                                                                                               <i class="fa fa-shopping-cart"></i>
                                                                                                Comprar
                                                                                        </button>
                                                                                    </span>
                                                                                     
                                                                                    </div>
                                                                                     </form>
                                                                        </div><!--/product-information-->
                                                                </div>
                                                                <p><b>Ver Trailer</b></p>
                                                                <div class="row"><iframe width="560" height="315" src="<%=peliActual.getUrlTrailer()%>" frameborder="0" allowfullscreen></iframe></div> 
                                                                </div>
                                                                                              
                                                        </div>
                                                                                           

                                                                                                                  </div>
                                </div>
                        </section>
            <jsp:include page="footer.jsp"/>
    </body>
</html>