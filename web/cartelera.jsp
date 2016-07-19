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
        <%!ArrayList<Pelicula> listaCartelera = null;%>
        <%int cantPaginas = 0;%>
        <%if(session.getAttribute("generoObtenido")!=null)
            {
                if(session.getAttribute("pelisEncontradas")!=null)
                {
                    listaCartelera = (ArrayList)session.getAttribute("pelisEncontradas");
                }
            }
            else
            {
                if(session.getAttribute("listaCartelera")!=null)
                {
                    listaCartelera = (ArrayList)session.getAttribute("listaCartelera");
                }
            }
            if(session.getAttribute("cantidadPeliculas")!=null)
            {
                if((Integer)session.getAttribute("cantidadPeliculas") % 9==0)
                    cantPaginas= ((Integer)session.getAttribute("cantidadPeliculas")/9);
                else
                    cantPaginas= ((Integer)session.getAttribute("cantidadPeliculas")/9)+1;
            }
        %>
        
        
                <section>
                        <div class="container">
                                <div class="row">
                                        <div class="col-sm-3">
                                                <div class="left-sidebar">
                                                      <h2>G�neros</h2>
                                                            <div class="brands-name">
                                                                <form action="Controlador" method="post" >
                                                               
                                                                    <input type="hidden" name="form" value="PeliculasComando" >
                                                                    <ul class="nav nav-pills nav-stacked">
                                                                    
                                                                    
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="estreno" name="tipo">Estrenos</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="2" name="tipo">Acci�n</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="4" name="tipo">Aventura</label></li>
                                                                    <li><label class="etiquetaGenero"><input onclick="submit()" type="radio" value="7" name="tipo">Ciencia Ficci�n</label></li>
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
                                            <h2 class="title text-center">Pel�culas</h2>
                                            <% if(request.getAttribute("ex")!=null){%>
                                            <div class="row">
                                                <div class="alert alert-danger fade in">
                                                    <%= request.getAttribute("ex")%>
                                                </div>
                                            </div>                                        
                                            <%} else {%>
                                            <div class="features_items">
                                                <% if(session.getAttribute("errorNoEncontradas")!=null){%>
                                                <div class="alert alert-danger">
                                                    <h2 class='text-center'>No hay pel�culas que coincidan con su b�squeda!!</h2>
                                                </div>
                                                <%session.setAttribute("errorNoEncontradas", null);}         

                                                 for(Pelicula p: listaCartelera)
                                                  { %>
                                                        <div class="col-sm-4">
                                                                <div class="product-image-wrapper">
                                                                        <div class="single-products">
                                                                                <div class="productinfo text-center">
                                                                                        <img class="imagen" src="ProcesadorImagenes?id=<%=p.getIdPelicula()%>" alt="">
                                                                                        <h2><%=p.getNombre()%></h2>
                                                                                        <p><%=p.getAnio()%></p>
                                                                                        <p>$ <%=String.format("%.2f",p.getPrecioAlquiler())%> - $ <%=String.format("%.2f",p.getPrecioVenta())%></p>
                                                                                        <a href="" class="btn btn-default add-to-cart">Alquilar</a>
                                                                                        <a href="" class="btn btn-default add-to-cart">Comprar</a>

                                                                                </div>
                                                                                <div class="product-overlay text-center">
                                                                                        <div class="overlay-content">
                                                                                            <form action="Controlador" method="post">
                                                                                            <h2><button><%=p.getNombre()%></button></h2>
                                                                                             <input type="hidden"  name="form" value="ObtenerPeliculaComando"/>
                                                                                               <input type="hidden"  name="idPelicula" value="<%=p.getIdPelicula()%>"/>
                                                                                            </form>
                                                                                                <p><%=p.getAnio()%></p>
                                                                                                <p>$ <%=String.format("%.2f",p.getPrecioAlquiler())%> - $ <%=String.format("%.2f",p.getPrecioVenta())%></p>
                                                                                                <form action="Controlador" method="post">
                                                                                                    <input type="hidden"  name="form" value="AgregarLineaComando"/>
                                                                                                    <input type="hidden" name="idPelicula" value="<%=p.getIdPelicula()%>"/>
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
                                                              <li><input type="submit" <%if((Integer)session.getAttribute("pActual")==j){%> disabled<%}%> name="paginacionActual" value="<%=j%>"> </li>
                                                             <%}%>  
                                                            <input type="hidden" name="form" value="PeliculasComando">   
                                              
                                                     </ul>
                                                </form> 
                                        <%}%>
                                        </div>
                                </div>
                        </div>
                </section>
                <jsp:include page="footer.jsp"/>
        </body>
</html>