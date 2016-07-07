<%@page import="aplicacion.modelo.entidades.Parametro"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <%@page import="aplicacion.modelo.entidades.Pelicula"%>
        <%ArrayList<Pelicula> listaCartelera;
            if(session.getAttribute("generoObtenido")!=null)
            {
                listaCartelera = (ArrayList)session.getAttribute("pelisEncontradas");
            }
            else
            {
                listaCartelera = (ArrayList)session.getAttribute("listaCartelera");
            }
            
          int cantPaginas= ((Integer)session.getAttribute("cantidadPeliculas")/9)+1;
        %>
        
        <h2 class="title text-center">Películas</h2>
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
                                                         
                                                              
                                                                </ul>
                                                                </form>
                                                            </div>
                                                </div>
                                        </div>


                                        <div class="col-sm-9 padding-right">
                                                <div class="features_items">
                                                    <% if(session.getAttribute("errorNoEncontradas")!=null){%>
                                                                                    
                                            <div class="alert alert-danger">
                                                <h2 class='text-center'>No hay películas que coincidan con su búsqueda!!</h2>
                                            </div>
                                                <%session.setAttribute("errorNoEncontradas", null);}         

                                                 for(int i=0; i<listaCartelera.size();i++)
                                                  { %>
                                                        <div class="col-sm-4">
                                                                <div class="product-image-wrapper">
                                                                        <div class="single-products">
                                                                                <div class="productinfo text-center">
                                                                                        <img src="imagenes/product12.jpg" alt="">
                                                                                        <h2><%=listaCartelera.get(i).getNombre()%></h2>
                                                                                        <p><%=listaCartelera.get(i).getAnio()%></p>
                                                                                        <p>$ <%=String.format("%.2f",listaCartelera.get(i).getPrecioAlquiler())%> - $ <%=String.format("%.2f",listaCartelera.get(i).getPrecioVenta())%></p>
                                                                                        <a href="" class="btn btn-default add-to-cart">Alquilar</a>
                                                                                        <a href="" class="btn btn-default add-to-cart">Comprar</a>

                                                                                </div>
                                                                                <div class="product-overlay text-center">
                                                                                        <div class="overlay-content">
                                                                                            <form action="Controlador" method="post">
                                                                                            <h2><button><%=listaCartelera.get(i).getNombre()%></button></h2>
                                                                                             <input type="hidden"  name="form" value="ObtenerPeliculaComando"/>
                                                                                               <input type="hidden"  name="idPelicula" value="<%=listaCartelera.get(i).getIdPelicula()%>"/>
                                                                                            </form>
                                                                                                <p><%=listaCartelera.get(i).getAnio()%></p>
                                                                                                <p>$ <%=String.format("%.2f",listaCartelera.get(i).getPrecioAlquiler())%> - $ <%=String.format("%.2f",listaCartelera.get(i).getPrecioVenta())%></p>
                                                                                                <form action="Controlador" method="post">
                                                                                                    <input type="hidden"  name="form" value="AgregarLineaComando"/>
                                                                                                    <input type="hidden" name="idPelicula" value="<%=listaCartelera.get(i).getIdPelicula()%>"/>
                                                                                                    <input class="btn btn-default add-to-cart linea" type="submit" name="tipoLinea" value="Alquilar">
                                                                                                    <input class="btn btn-default add-to-cart linea" type="submit" name="tipoLinea" value="Comprar">
                                                                                                </form>
                                                                                        </div>
                                                                                </div>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                    <% } ; %>        
                                                </div>
                                                 <form action="Controlador" method="post">  
                                                                        
                                                <ul class="pagination">
                                                              <%for(int j=1;j<=cantPaginas;j++){%>                                                                                                
                                                                    <li><input type="submit" name="paginacionActual" value="<%=j%>"> </li>
                                                             <%}%>  
                                                            <input type="hidden" name="form" value="PeliculasComando">   
                                              
                                                 </ul>
                                                   </form>
                                        </div>
                                </div>
                        </div>
                </section>
                <jsp:include page="footer.jsp"/>
        </body>
</html>