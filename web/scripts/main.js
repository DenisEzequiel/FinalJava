/*Socrolls ABMs*/
function scrollDiv()
{
    var div = document.getElementById('Edit');
    div.scrollIntoView(true);
}
/*Desaparecer alertas y avisos*/
$(document).ready(
        function()
        {
            setTimeout(function(){$(".popover").fadeOut(1000)},4000);
            setTimeout(function(){$(".vanish").fadeOut(1000)},4000);
        });
/*price range*/

 $('#sl2').slider();

	var RGBChange = function() {
	  $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
	};	
		
/*scroll to top*/
$(document).ready(function(){
	$(function () {
		$.scrollUp
                ({
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
        
        $(function(){
            $("#formSalir").hover(function(){$(this).children("i").css("color","#3A5C83");
                                             $(this).children("input").css("color","#3A5C83");
                                             $(this).css("cursor","pointer");},
                                  function(){$(this).children("i").css("color","#696763");
                                             $(this).children("input").css("color","#696763");
                                            });
        });
});
