<%@page import="aplicacion.modelo.entidades.Genero"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
    <jsp:include page="head.jsp"/>
    
<body>
    <jsp:include page="header.jsp"/>
    <%!ArrayList<Genero> listaGeneros;%>
    <%if(session.getAttribute("listaGeneros")!=null)
             listaGeneros = (ArrayList)session.getAttribute("listaGeneros");
    %>
    <section id="form">
    <form action="Controlador" method="post"> 
         <div class="cuenta">
            <div class="container">
                <h2 class="title text-center">Agregar una película </h2>  
                <div class="login-form"><!--login form-->
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                       
                            <div class="row">
                                <div class="col-sm-12 col-sm-offset-0">
                                    <input type="text" class="control form-control" name="nomPel" placeholder="Nombre de película" required>
                                    <input type="text" class="control form-control" name="durPel" placeholder="Duración" required>
                                    <input type="text" class="control form-control" name="formPel" placeholder="Formato" required>
                                </div>
                          
                            </div>
                            <div class="row">
                                <div class="col-sm-6 col-sm-offset-0">
                                    <input type="text" class="control form-control" name="stockAlqPel" placeholder="Stock para alquiler" required>
                                 
                                </div>
                                <div class="col-sm-6 col-sm-offset-0">
                                      <input type="text" class="control form-control" name="stockVtaPel" placeholder="Stock para venta" required>
                                 
                                </div>       
                            </div>
                             <div class="row">
                                <div class="col-sm-12 col-sm-offset-0">
                                     <textarea rows="5" class=" form-control" placeholder="Sinopsis" name="sinPel" requiered></textarea> 
                                </div>
                             </div>
                    
                            <input type="hidden" name="form" value="AgregarPeliculaComando">
                       
                       
                    </div>
                    
                    <div class="col-sm-5 col-sm-offset-0">
                        
                            <div class="row">
                                <div class="col-sm-12 col-sm-offset-0">
                                    <input type="file" class="control form-control" name="imgPel" placeholder="Cargue imagen" >
                                    <input type="text" class="control form-control" name="repPel" placeholder="Reparto" required>
                                    <input type="text" class="control form-control" name="urlPel" placeholder="URL Trailer" required>                               
                                    <input type="text" class="control form-control" name="pvtaPel" placeholder="Precio Venta" required>
                                    <input type="text" class="control form-control" name="anioPel" placeholder="Año de lanzamiento" required>
                                                           
                                </div>
                            </div>
                    
                    </div>
                    <div class="row">
                        <div class="col-sm-5 col-sm-offset-1">                            
                            <% if(request.getSession().getAttribute("pelicula")!=null)
                            { %> <div class="alert alert-success"> Película agregada con éxito </div>
                            <%}%>
                        </div>

                    </div>
                          
                   
                </div>
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                         Generos  
                        <div class="listaGeneros">
                         
                         <% for(int i=0;i<listaGeneros.size();i++){ %>
                         <label> <%=listaGeneros.get(i).getDescripcion()+" "%><input type="checkbox" class="" name="generos" value="<%=listaGeneros.get(i).getIdGenero()%>"></label>
                         <%}%>
                        </div>
                    </div>
                </div>
                <div class="row">
                     <div class="col-sm-12 col-sm-offset-0">
                                    <button type="submit" class="btn btn-default">Agregar</button>
                     </div>
                </div>
                </div> 
            </div>
         </div>
      </form>         
 </section>
</body>
<jsp:include page="footer.jsp"/>
</html>
                         
