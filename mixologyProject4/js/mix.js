    var x,xmlhttp,xmlDoc;
    xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET", "brandy.xml", false);
    xmlhttp.send();
    xmlDoc = xmlhttp.responseXML; 
    x = xmlDoc.getElementsByTagName("group");
    table="<tr><td><p>Click on drink name for more information.</p></td></tr>";
        for (i = 0; i < x.length; i++) { 
            table += "<tr onclick='displaymixology(" + i + ")'><td>";
            table +=  x[i].getElementsByTagName("title")[0].childNodes[0].nodeValue;
            table += "</td></tr>";          
        }  

        //Displays drink names in a list.
        document.getElementById("mix").innerHTML = table;

        //Returns the values of the drinks.
        function displaymixology(i) { 
	                
        //Returns the drink name.    
        document.getElementById("showDrink").innerHTML =
            "<h2>Mixed Drink: </h2>" +
        x[i].getElementsByTagName("title")[0].childNodes[0].nodeValue;
        
        //Returns the drink ingredients. Should contain a loop to get all elements, but doesn't.
        document.getElementById("showDrinkIngredients").innerHTML =
			"<br><h2>Ingredients: </h2>" +
        x[i].getElementsByTagName("ingredients")[0].childNodes[0].nodeValue;
        
        //Returns the drink mixing directions. Should contain a loop to get all elements, but doesn't.
        document.getElementById("showDrinkMixingDirections").innerHTML =
            "<br><h2>Mixing Directions: </h2>" +
        x[i].getElementsByTagName("mixing_directions")[0].childNodes[0].nodeValue;

        //Returns the serving glass for the drink.
        document.getElementById("showDrinkServingGlass").innerHTML =
            "<br><h2>Serving Glass: </h2>" + 
        x[i].getElementsByTagName("serving_glass")[0].childNodes[0].nodeValue +
		x[i].getElementsByTagName("images")[0].childNodes[0].nodeValue;
    }

