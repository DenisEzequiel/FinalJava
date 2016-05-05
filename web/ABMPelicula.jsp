
<section id="form"><!--form-->
    <form action="Controlador" method="post"> 
            <div class="container">
                <h2 class="title text-center">Agregar una película </h2>  
               <div class="login-form"><!--login form-->
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="cuenta">
                            
                            
                                <input type="hidden" name="form" value="altaPelicula">
                                <input type="text" class="control form-control" name="nomPel" placeholder="Nombre de película" required>
                                <input type="text" class="control form-control" name="durPel" placeholder="Duración" required>
                                 <input type="text" class="control form-control" name="formPel" placeholder="Formato" required>
                                 <input type="text" class="control form-control" name="stockAlqPel" placeholder="Stock para alquiler" required>
                                   <input type="text" class="control form-control" name="stockVtaPel" placeholder="Stock para venta" required>
                                  <input type="text" class="control form-control" name="imgPel" placeholder="Cargue imagen" >
                        </div>
                    </div>
                    
                    <div class="col-sm-5 col-sm-offset-0">
                        <div class="cuenta">
                        <input type="text" class="control form-control" name="formPel" placeholder="Formato" required>
                                  <input type="text" class="control form-control" name="repPel" placeholder="Reparto" required>
                                  <input type="text" class="control form-control" name="urlPel" placeholder="URL Trailer" required>
                                   <input type="text" class="control form-control" name="sinPel" placeholder="Sinopsis" required>
                                   <input type="text" class="control form-control" name="pvtaPel" placeholder="Precio Venta" required>
                                  <input type="text" class="control form-control" name="anioPel" placeholder="Año de lanzamiento" required>
                                    <button type="submit" class="btn btn-default">Agregar</button>
                        </div>           
                    </div>
                        
                                  
                                  
                               
                        </div>
                    </div>
            </div>   
      </form>         
 </section>
                         
