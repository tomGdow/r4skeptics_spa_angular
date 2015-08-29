//flexslider

/*$(window).load(function(){
  $('.flexslider').flexslider({

  start: function(slider){
  $('body').removeClass('loading');
  }
  });
  });*/


function widgetFlash (myid, myhtml, infade, timedelay, outfade) {

    infade = parseInt(infade,10)  || 1000;
    timedelay = parseInt(timedelay,10)  || 5000;
    outfade = parseInt(outfade, 10)   || 1000;
    var id_concat = "#" + myid.toString();
    $(id_concat).html(myhtml.toString()).fadeIn(infade).delay(timedelay).fadeOut(outfade); 

}

