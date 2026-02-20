var app = {};

var miCallback = function(dades){
	
	console.log(dades)
	
	app.office = dades;
	
	var html = "";
	html += "<h2>Oficines</h2>";
	
	app.office.map(oficina => {
		
		html += "<div class='oficina'>";
	
		html += "<h3>" + oficina.city + "</h3>";
		
		html += "<div class='datos'>";
		html += "<img src='" + oficina.picture + "'</img>"; 
		
		html += "<ul>";
	
		html += "<li><b>Teléfon: </b>" + oficina.phone + "</li>";
		html += "<li><b>Direcció: </b>" + oficina.addressLine1 + ", " + oficina.addressLine2 + "</li>";
		html += "<li><b>Estat: </b>" + oficina.state + "</li>";
		html += "<li><b>País: </b>" + oficina.country + " - " + oficina.territory + "</li>";
		
		html += "</ul>";
	
		html += "</div>";
		
		html += "</div>";
		
	} )
	
	document.getElementById("results").innerHTML = html;
	
}

