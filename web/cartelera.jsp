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
        <%ArrayList<Pelicula> listaCartelera = (ArrayList)session.getAttribute("listaCartelera");
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
                                                <div class="features_items">
                                                <% for(int i=0; i<listaCartelera.size();i++)
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
                                                <ul class="pagination">
                                                             <form action="Controlador" method="post">  
                                                            <%for(int j=1;j<=cantPaginas;j++){%>                                                                                                              
                                                                    <li><input type="submit" name="paginacionActual" value="<%=j%>"> </li>
                                                             <%}%>  
                                                            <input type="hidden" name="form" value="PeliculasComando">   
                                                             </form>
                                                </ul>
                                        </div>
                                </div>
                        </div>
                </section>
                <jsp:include page="footer.jsp"/>
        </body>
</html>