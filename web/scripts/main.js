/*price range*/

 $('#sl2').slider();

	var RGBChange = function() {
	  $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
	};	
		
/*scroll to top*/

$(document).ready(function(){
	$(function () {
		$.scrollUp({
	        scrollName: 'scrollUp', // Element ID
	        scrollDistance: 300, // Distance from top/bottom before showing element (px)
	        scrollFrom: 'top', // 'top' or 'bottom'
	        scrollSpeed: 300, // Speed back to top (ms)
	        easingType: 'linear', // Scroll to top easing (see http://easings.net/)
	        animation: 'fade', // Fade, slide, none
	        animationSpeed: 200, // Animation in speed (ms)
	        scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
					//scrollTarget: false, // Set a custom target element for scrolling to the top
	        scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
	        scrollTitle: false, // Set a custom <a> title if required.
	        scrollImg: false, // Set true to use image
	        activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
	        zIndex: 2147483647 // Z-Index for the overlay
		});
	});
});
var acc = document.getElementsByClassName("accordion");
  
 var i;
 for (i = 0; i < acc.length; i++) {
  
 acc[i].onclick = function(){
            
 for(var j=0;j<acc.length;j++)
 {
     if(this!=acc[j])
     {
         acc[j].classList.remove("active");
         acc[j].nextElementSibling.classList.remove("show");
     }
 }
                  
 this.classList.toggle("active");
 this.nextElementSibling.classList.toggle("show");
              
 };
 }
 


 
 function validarContrasenia()
 {
     var nueva = document.getElementById("nuevaContra").value;
     var repetida = document.getElementById("repiteContra").value;
     var mensaje = document.getElementById("mensajeError");
     var p = document.getElementById("parrafoError");
     p.innerHTML = "<strong>Error! </strong>Las contrase&ntilde;as no son iguales";
     if(!mensaje.classList.contains("alert-danger"))
     {
         mensaje.classList.add("alert-danger");
     }
     if(nueva===repetida)
     {
        mensaje.classList.remove("alert-danger");
        mensaje.classList.add("alert-success");
        p.innerHTML = "<strong>Bien!</strong> Las contrase&ntilde;as son iguales";
     }
    
     
 }