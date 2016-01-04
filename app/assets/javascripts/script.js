function colorize(){
    var mes = "freebay";
    var comes = "";
    
    var colors = new Array("#b9e067","#ff6147","#85edcc","#e275b5","#619be1","#ef446c","#c64c43"); // red, green, blue
    for (var i = 0; i < mes.length; i++){
	comes = comes + "<span style=\"color:" + colors[i % colors.length] + "\">" + mes[i] + "</span>";
    }
    return comes;
}



document.getElementById("logo").innerHTML = colorize();
