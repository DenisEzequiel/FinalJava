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
                                                                    <form action="Controlador" method="post" >
                                                               
                                                                    <input type="hidden" name="form" value="PeliculasComando" >
                                                                    <ul class="nav nav-pills nav-stacked">
                                                                    
                                                                    
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="estreno" name="tipo">Estrenos</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="2" name="tipo">Acción</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="4" name="tipo">Aventura</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="7" name="tipo">Ciencia Ficción</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="6" name="tipo">Comedia</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="11" name="tipo">Crimen</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="9" name="tipo">Documental</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="3" name="tipo">Drama</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="8" name="tipo">Romance</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="10" name="tipo">Suspenso</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="1" name="tipo">Terror</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="5" name="tipo">Thriller</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="12" name="tipo">Infantil</label></li>
                                                              
                                                                </ul>
                                                                </form>
                                                                </div>
                                                        </div>
                                                </div>

                                                <div class="col-sm-9 padding-right">
                                                        <div class="product-details"><!--product-details-->
                                                                <div class="col-sm-5">
                                                                        <div class="view-product">
                                                                                <img src="ProcesadorImagenes?id=<%=peliActual.getIdPelicula()%>" alt="">
                                                                                
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
                                                                                    <p><b>Disponible para compra:</b><%if(peliActual.getStockVenta()>0){ %> Si <%}else{%> No <%}%></p>
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