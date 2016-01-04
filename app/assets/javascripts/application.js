// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
function enterid() {
	var offerid = prompt("please enter the offer id");
	if (offerid != null){
		window.location.href = "offers/"+offerid;
	}
}

function captchawhy() {
    alert("the logic questions are aimed at 7 year old children, so they can be solved easily. This step is necessary in order to prevent hostile computer programs from damaging the site")
}	
function sectip() {
    alert("If you are worried about automatic spam programs, you can enter your email in a strange way, for example 'bob at gmx dot net'")




}
function delete_offer(id) {
  var x = document.getElementById('offer_expiration').value;
  document.getElementById('offer_expiration').value= "0001-01-01";
  if(confirm("are you sure you want to delete offer "+id))
  {
    document.forms["edit_offer_"+id].submit();
  }
  else
  {
    document.getElementById('offer_expiration').value= x;
  }  
}

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
