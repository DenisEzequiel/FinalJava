<%-- 
    Document   : ABMPeliculas
    Created on : 04/07/2016, 11:20:39
    Author     : JP
--%>
<%@page import="aplicacion.modelo.entidades.Genero"%>
<%@page import="aplicacion.modelo.entidades.Pelicula"%>
<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"/>
    <body>
        <jsp:include page="header.jsp"/>
        <%!ArrayList<Pelicula> peliculas;%>
        <%!ArrayList<Genero> generos;%>
        <% peliculas = (ArrayList)session.getAttribute("ListaPeliculas");%>
        <% generos = (ArrayList)session.getAttribute("ListaGeneros");%>
        <% Pelicula peli;%>
        <% peli = (Pelicula)session.getAttribute("PeliEdit");%>
        <div class="cuenta">
            <div class="container"> 
                <div class="row">
                    <h2 class="title text-center">Lista de Peliculas</h2> 
                <div class="col-sm-12">
                    <div class="table-responsive">
                        <div class="table-striped">
                            <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Duración</th>
                                    <th>Stock Alqui.</th>
                                    <th>Stock Venta</th>
                                    <th>F. Alta</th>
                                    <th>Año</th>
                                    <th>Activa</th>
                                    <th>Estreno</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td> - </td>
                                    <td>
                                        <form action="Controlador" method="post">
                                        <input type="hidden"  name="form" value="SeleccionarPeliculaComando"/>
                                        <input type="hidden" name="idPeliEdit" value="0">
                                        <input type="submit" value="+ Nuevo">
                                        </form>
                                    </td>
                                  </tr>
                                <%for(Pelicula pel:peliculas)
                                  {%>
                                  <tr>
                                    <td><%= pel.getIdPelicula()%></td>
                                    <td><%= pel.getNombre()%></td>
                                    <td><%= pel.getDuracion()%></td>
                                    <td><%= pel.getStockAlquiler()%></td>
                                    <td><%= pel.getStockVenta()%></td>
                                    <td><%= pel.getFechaCarga()%></td>
                                    <td><%= pel.getAnio()%></td>
                                    <td><%= pel.isActivo()%></td>
                                    <td><%= pel.isEstreno()%></td>
                                    <td>
                                        <form action="Controlador" method="post">
                                        <input type="hidden"  name="form" value="SeleccionarPeliculaComando"/>
                                        <input type="hidden" name="idPeliEdit" value="<%= pel.getIdPelicula()%>">
                                        <input type="submit" value="Editar">
                                        </form>
                                    </td>
                                  </tr>
                                <%}%>
                            </tbody>
                            </table>
                        </div>
                    </div>
                </div> 
            </div>
            <div id="Edit" class="row">
                <h2 class="title text-center"><%if(peli!=null){%>EDITAR<%} else{%>AGREGAR<%};%> PELICULA</h2>
                <form action="Controlador" method="post">  
                    <div class="col-sm-5 col-sm-offset-1">
                            <div class="row">
                                <div class="col-sm-12 col-sm-offset-0">
                                    <input class="control form-control"  type="text" placeholder="ID" maxlength="15" name="ID" readonly="" value="<%if(peli!=null)%><%=peli.getIdPelicula()%>">
                                    <input type="text" class="control form-control" name="nomPel" placeholder="Nombre de película" required value="<%if(peli!=null)%><%=peli.getNombre()%>">
                                    <input type="text" class="control form-control" name="durPel" placeholder="Duración" required value="<%if(peli!=null)%><%=peli.getDuracion()%>">
                                    <input type="text" class="control form-control" name="formPel" placeholder="Formato" required value="<%if(peli!=null)%><%=peli.getFormato()%>">
                                </div>
                          
                            </div>
                            <div class="row">
                                <div class="col-sm-6 col-sm-offset-0">
                                    <input type="text" class="control form-control" name="stockAlqPel" placeholder="Stock para alquiler" required value="<%if(peli!=null)%><%=peli.getStockAlquiler()%>">
                                 
                                </div>
                                <div class="col-sm-6 col-sm-offset-0">
                                      <input type="text" class="control form-control" name="stockVtaPel" placeholder="Stock para venta" required value="<%if(peli!=null)%><%=peli.getStockVenta()%>">
                                 
                                </div>       
                            </div>
                             <div class="row">
                                <div class="col-sm-12 col-sm-offset-0">
                                     <textarea rows="5" class=" form-control" placeholder="Sinopsis" name="sinPel"><%if(peli!=null)%><%=peli.getSinopsis()%></textarea> 
                                </div>
                             </div>
                    </div>
                    <div class="col-sm-5 col-sm-offset-0">
                        
                            <div class="row">
                                <div class="col-sm-12 col-sm-offset-0">
                                    <input type="file" class="control form-control" name="imgPel" >
                                    <input type="text" class="control form-control" name="repPel" placeholder="Reparto" required value="<%if(peli!=null)%><%= peli.getReparto()%>">
                                    <input type="text" class="control form-control" name="urlPel" placeholder="URL Trailer" required value="<%if(peli!=null)%><%= peli.getUrlTrailer() %>">                               
                                    <input type="text" class="control form-control" name="pvtaPel" placeholder="Precio Venta" required value="<%if(peli!=null)%><%= peli.getPrecioVenta() %>">
                                    <input type="text" class="control form-control" name="palqPel" placeholder="Precio Alquiler" readonly required value="<%if(peli!=null)%><%= peli.getPrecioAlquiler() %>">
                                    <input type="text" class="control form-control" name="anioPel" placeholder="Año de lanzamiento" required value="<%if(peli!=null)%><%= peli.getAnio() %>">
                                    <%if(peli!=null){%><input type="date" class="control form-control" name="fCargaPel" required value="<%if(peli!=null)%><%= peli.getFechaCarga()%>"><%}%>
                                    
                                    Generos  
                                    <div class="listaGeneros">

                                     <% for(int i=0;i<generos.size();i++){%>
                                     <label> <%=generos.get(i).getDescripcion()+" "%><input type="checkbox" class="" name="generos" value="<%=generos.get(i).getIdGenero()%>" <%if(peli!=null && peli.contieneGenero(generos.get(i)))%>checked<%;%>></label>
                                     <%}%>
                                    </div>
                                    Estado de Pelicula
                                    <label>Activa</label><input class="control form-control" type="checkbox" name="Activa" value="true" <%if(peli!=null && peli.isActivo())%>checked<%;%>>
                                    
                                    
                                </div>
                            </div>
                    
                    </div>
                    <div class="row">
                        <div class="col-sm-5 col-sm-offset-1">
                                                <div class="alert alert-success popover fade left <%if(session.getAttribute("ExitoAltaPeli")!=null)
                                                                                { %> in <%
                                                                                    session.setAttribute("ExitoAltaPeli", null); } %>">
                                                     
                                                         Película agregada con éxito
                                                </div>                              
                        </div>
                    </div>
                    
                    <div class="row">
                            <div class="col-lg-10 col-lg-offset-1">
                                <input type="hidden" name="form" value="<%if(peli!=null) {%>EditarPeliculaComando<%}else{%>AgregarPeliculaComando<%}%>">
                                <button type="submit" class="btn btn-default"><%if(peli!=null) {%>Guardar Cambios<%}else{%>Agregar Pelicula<%}%></button>
                                <h5>Los campos marcados con * son obligatorios</h5>
                            </div>
                    </div>
            </form>
            </div>
         </div>
      </div>
    </body>
    <jsp:include page="footer.jsp"/>
</html>

