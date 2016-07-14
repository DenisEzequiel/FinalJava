<%-- 
    Document   : ABMPeliculas
    Created on : 04/07/2016, 11:20:39
    Author     : JP
--%>
<%@page import="aplicacion.modelo.entidades.Parametro"%>
<%@page import="aplicacion.modelo.entidades.Genero"%>
<%@page import="aplicacion.modelo.entidades.Pelicula"%>
<%@page import="aplicacion.modelo.entidades.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"/>
    <body onload="scrollDiv();">
        <jsp:include page="header.jsp"/>
        <%!ArrayList<Pelicula> peliculas;%>
        <%!ArrayList<Genero> generos;%>
        <%!Parametro param;%>
        <%! Pelicula peli;%>
        <% if(session.getAttribute("parametro")!=null){ param = (Parametro) session.getAttribute("parametro"); }%>
        <% if(session.getAttribute("ListaPeliculas")!=null) { peliculas = (ArrayList)session.getAttribute("ListaPeliculas");}%>
        <% if(session.getAttribute("ListaGeneros")!=null) { generos = (ArrayList)session.getAttribute("ListaGeneros");}%>
        <% if(session.getAttribute("PeliEdit")!=null) { peli = (Pelicula)session.getAttribute("PeliEdit");}%>
        <div class="cuenta">
            <div class="container"> 
                <div class="row">
                    <div class="alert alert-success fade<%if(request.getAttribute("ex")!=null){ %> in <%}%>">
                        <%= request.getAttribute("ex")%>
                    </div>
                </div>
                <% if(request.getAttribute("ex")==null) { %>
                <div class="row">
                    <h2 class="title text-center">Lista de Peliculas</h2> 
                <div class="col-sm-12">
                    <div class="table-responsive" style="height:400px; overflow:auto">
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
            <div <%if(session.getAttribute("Scroll")!=null){%> id="Edit" <%session.setAttribute("Scroll", null); };%> class="row">
                <h2 class="title text-center"><%if(peli!=null){%>EDITAR<%} else{%>AGREGAR<%};%> PELICULA</h2>
                <form action="Controlador" method="post" enctype="multipart/form-data" >  
                    <div class="col-sm-5 col-sm-offset-1">
                            <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">ID</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control"  type="text" placeholder="ID (Automático)" maxlength="15" name="ID" readonly="" value="<%if(peli!=null)%><%=peli.getIdPelicula()%>">
                                    </div>
                            </div>
                            <%if(peli!=null){%>
                            <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">F. Alta</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input type="date" class="control form-control" name="fCargaPel" readonly="" value="<%if(peli!=null)%><%= peli.getFechaCarga()%>">
                                    </div>
                            </div>
                            <%}%>
                            <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Año</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input type="text" class="control form-control" name="anioPel" placeholder="* (Año de lanzamiento)" pattern="^[0-9]*$" title="Numero" required value="<%if(peli!=null)%><%= peli.getAnio() %>">
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Título</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input type="text" class="control form-control" name="nomPel" placeholder="*"  required value="<%if(peli!=null)%><%=peli.getNombre()%>">
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-lg-6">
                                        <h4 class="text-left">Duración</h4>
                                    </div>
                                    <div class="col-lg-6">
                                        <h4 class="text-left">Formato</h4>
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-lg-6">
                                        <input class="control form-control"  type="text" placeholder="* (En min.)" name="durPel" pattern="^[0-9]*$" title="Numero" value="<%if(peli!=null)%><%=peli.getDuracion()%>">
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="text" class="control form-control" name="formPel" placeholder="*"  required value="<%if(peli!=null)%><%=peli.getFormato()%>">
                                    </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                        <h4 class="text-left">Sinopsis</h4>
                                </div>    
                            </div>        
                            <div class="row">
                                <div class="col-sm-12 col-sm-offset-0">
                                    <textarea rows="5" class="form-control" maxlength="400" placeholder="*" name="sinPel"><%if(peli!=null)%><%=peli.getSinopsis()%></textarea> 
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                        <h4 class="text-left">Reparto</h4>
                                </div>    
                            </div>        
                            <div class="row">
                                <div class="col-sm-12 col-sm-offset-0">
                                    <textarea rows="4" class="form-control" maxlength="200" placeholder="*" name="repPel"><%if(peli!=null)%><%= peli.getReparto()%></textarea>
                                </div>
                            </div>
                    </div>
                    <div class="col-sm-5 col-sm-offset-0">
                        <div class="row">
                                    <div class="col-lg-6">
                                        <h4 class="text-left">Stock. Alq.</h4>
                                    </div>
                                    <div class="col-lg-6">
                                        <h4 class="text-left">Stock. Vta.</h4>
                                    </div>
                        </div>
                        <div class="row">
                                    <div class="col-lg-6">
                                        <input type="text" class="control form-control" name="stockAlqPel" placeholder="*" pattern="^[0-9]*$" title="Numero" required value="<%if(peli!=null)%><%=peli.getStockAlquiler()%>">
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="text" class="control form-control" name="stockVtaPel" placeholder="*" pattern="^[0-9]*$" title="Numero" required value="<%if(peli!=null)%><%=peli.getStockVenta()%>">
                                    </div>
                        </div>
                        <div class="row">
                                    <div class="col-lg-6">
                                        <h4 class="text-left">Precio. Alq.</h4>
                                    </div>
                                    <div class="col-lg-6">
                                        <h4 class="text-left">Precio. Vta.</h4>
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-lg-6">
                                        <input type="text" class="control form-control" name="palqPel" placeholder="Precio Alquiler" pattern="^[0-9]*$" title="Numero" readonly required value="<%if(peli!=null){%><%= peli.getPrecioAlquiler()%><%}else if(peli==null){%><%= param.getPrecioAlquilerEstreno()%><%}%>">
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="text" class="control form-control" name="pvtaPel" placeholder="* (En $)" pattern="^[0-9]*$" title="Numero" required value="<%if(peli!=null)%><%= peli.getPrecioVenta() %>">
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Portada</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input type="file" class="control form-control" name="imgPel">
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Link Trailer</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input type="text" class="control form-control" name="urlPel" placeholder="*" required value="<%if(peli!=null)%><%= peli.getUrlTrailer() %>">                               
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-lg-3">
                                        <h4 class="text-left">Activa</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input class="control form-control" type="checkbox" name="Activa" value="true" <%if(peli==null)%> checked <%; if(peli!=null && peli.isActivo())%>checked<%;%>>
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="text-left">Géneros</h4>
                                    </div>
                            </div>
                            <div class="table-responsive" style="height:90px;overflow:auto;">
                                <table class="table-striped col-lg-12">
                                    <tbody>
                                    <% for(int i=0;i<generos.size();i++){%>
                                        <tr>
                                            <td><%=generos.get(i).getDescripcion()%></td>
                                            <td>
                                                <input type="checkbox" name="generos" value="<%=generos.get(i).getIdGenero()%>" <%if(peli!=null && peli.contieneGenero(generos.get(i)))%>checked<%;%>>
                                            </td>
                                        </tr>
                                    <%}%>
                                    </tbody>
                                    </table>
                            </div>
                            <div class="alert alert-success fade<%if(session.getAttribute("ExitoPeli")!=null){ %> in <%session.setAttribute("ExitoPeli", null);} %>">
                                    Pelicula <%if(peli==null){ %>agregada<% }else{%>editada<%}%> con éxito.        
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
            <% }%>
         </div>
      </div>
    </body>
    <jsp:include page="footer.jsp"/>
</html>

