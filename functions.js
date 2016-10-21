function getXMLHttpRequest() {
	var xhr = null;
	
	if (window.XMLHttpRequest || window.ActiveXObject) {
		if (window.ActiveXObject) {
			try {
				xhr = new ActiveXObject("Msxml2.XMLHTTP");
			} catch(e) {
				xhr = new ActiveXObject("Microsoft.XMLHTTP");
			}
		} else {
			xhr = new XMLHttpRequest(); 
		}
	} else {
		alert("Votre navigateur ne supporte pas l'objet XMLHTTPRequest...");
		return null;
	}
	
	return xhr;
}

function nouveautes()
      { var state;
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
             document.getElementById("section").innerHTML = req.responseText;
		
		state = 0;
           }
           else
           {
             document.getElementById("section").innerHTML =
              "Error: returned status code " + req.status + " " + req.statusText;
           }
        };
        req.open("GET", "nouveautes.php", true);
        req.send(null);
     } // addCat()

function livres()
      { var state;
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
             document.getElementById("section").innerHTML = req.responseText;
		
		state = 0;
           }
           else
           {
             document.getElementById("section").innerHTML =
              "Error: returned status code " + req.status + " " + req.statusText;
           }
        };
        req.open("GET", "livres.php", true);
        req.send(null);
} // editCat()

function commandes()
      { var state;
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
             document.getElementById("section").innerHTML = req.responseText;
		
		state = 0;
           }
           else
           {
             document.getElementById("section").innerHTML =
              "Error: returned status code " + req.status + " " + req.statusText;
           }
        };
        req.open("GET", "commandes.php", true);
        req.send(null);
      }

function finaliser()
      { var state;
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
             document.getElementById("section").innerHTML = req.responseText;
		
		state = 0;
           }
           else
           {
             document.getElementById("section").innerHTML =
              "Error: returned status code " + req.status + " " + req.statusText;
           }
        };
        req.open("POST", "finaliser.php", true);
        req.send(null);
      }

function connexion()
      { var state;
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
             document.getElementById("section").innerHTML = req.responseText;
		
		state = 0;
           }
           else
           {
             document.getElementById("section").innerHTML =
              "Error: returned status code " + req.status + " " + req.statusText;
           }
        };
        req.open("GET", "connexion.php", true);
        req.send(null);
      } // addProduit()  
	  
jQuery(document).ready(function ($) {
            
            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,$Opacity:2}
            ];
            
            var jssor_1_options = {
              $AutoPlay: true,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
            
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 600);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
		
function verifier_form(pseudo2,nom,prenom,tel,password2,adresse,codePostal)
      { 
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
             //console.log(req);
             document.getElementById("section").innerHTML = req.responseText;
           }
           
        };
        req.open("POST", "cible_inscription.php", true);
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		req.send("pseudo2=pseudo2&nom=nom&prenom=prenom&tel=tel&password2=password2&adresse=adresse&codePostal=codePostal");
      } 

function verifier_connection(pseudo1,password)
      { 
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
             //console.log(req);
             document.getElementById("section").innerHTML = req.responseText;

				$('#connect').addClass('inv') ;//un getter
		
		document.getElementById("connect").innerHTML="";
		
		$('#deconnect').addClass('inv'); //un getter
		
		document.getElementById("deconnect").innerHTML="";
			 
		  }
           
        };
        req.open("POST", "cible_connection.php", true);
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		req.send("pseudo1=pseudo1&password1=password1");
      } ;//colorer();
      
	  function deconnection()
      { 
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
             //console.log(req);
            // document.getElementById("section").innerHTML = req.responseText
			 
		  }
           
        };
        req.open("POST", "deconnection.php", true);
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		req.send();
      }
function afficheC(Titre)
      { 
        if (Titre=="")
        {
          document.getElementById("section2").innerHTML = " ";
        }
        else
        {
	  var req = getXMLHttpRequest();

          req.onreadystatechange = function()
          { 
            if(req.readyState==4 && req.status==200)
            {
              document.getElementById("section2").innerHTML = req.responseText;
            }
          };
		if(Titre=="Affaires")
		{req.open("GET", "categorieAff.php?Titre="+Titre, true);
		req.send(null);}
		else if (Titre=="Informatique")
			{req.open("GET", "categorieInf.php?Titre="+Titre, true);
		req.send(null);}
		else 
		{req.open("GET", "categorieTec.php?Titre="+Titre, true);
		req.send(null);}
        }
      }  //afficheC();

	  function cart(livre,cart)
      { 
	var req = getXMLHttpRequest();
        req.onreadystatechange = function()
        { 
          if(req.readyState==4 && req.status==200)
           {
			   
			  //var n = livre.split(",");
    var chiffre= cart//n[n.length - 1];
	//console.log(chiffre);
	
    //var livre2= //n[0];
	//console.log(livre2);
	//livre=livre2;
	//console.log(livre);
			 var text='cart'+chiffre;
             document.getElementById(text).innerHTML = req.responseText;
           }
           
        };
        req.open("POST", "cart.php", true);
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		req.send("Numlivre="+livre);
      }