<? php
session_start();
	
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="style.css" />
		<link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="style1.css" rel="stylesheet"/>
 <style type="text/css">
    .col-md-8, .col-sm-10 { line-height: 200px; }
    .col-md-12 { line-height: 80px; }
  </style>
  </head>
  <body>
  <script src="bootstrap/js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
	<script src="functions.js"></script>
    <script type="text/javascript" src="js/jssor.slider.mini.js"></script>  
	
    <div class="container" >
      <header class="row">
        <div class="col-md-12" id="navi">
			<a class="btn btn-link btn-lg" onclick="nouveautes()" >
			<span class="glyphicon glyphicon-fire">
			</span><br>Nouveautés</a>
			
			<a class="btn btn-link btn-lg"  onclick="livres()">
			<span class="glyphicon glyphicon-book">
			</span><br>Livres</a>
			
			<a class="btn btn-link btn-lg" onclick="commandes()">
			<span class="glyphicon glyphicon-shopping-cart">
			</span><br>Commandes</a>
			
			<a id="connect" style="color:green;" class="btn btn-link btn-lg"   onclick="connexion()"> 
			<span class="glyphicon glyphicon-user">
			</span><br>Inscription/Connection</a>
			
			<a id="deconnect" style="color:green;" class="btn btn-link btn-lg"   onclick="deconnection()"> 
			<span class="glyphicon glyphicon-user">
			</span><br>Deconnection</a>
		
		</div>
      </header>

      <div class="row">

        <div class="col-sm-2">
          <div class="row">
            <aside  class="col-md-12">
            <?php 
			session_start();
			if(isset($_SESSION['login']))
				echo "Bienvenue " .$_SESSION['login'];
			?>
            </aside>
            <aside id="ASIDE" class="col-md-12">
              
			  <?php 
		
			  if(isset($_SESSION['tableau']))
			  {
			//	  print_r($_SESSION['tableau']);
			  }
			  ?>
			  Liens utiles:
			  </br>
			  <a href="http://www.Google.ca">Google</a>
            </aside>
          </div>
        </div>

    <section id="section" class="col-sm-10 col-md-8" >
		

			<div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden; visibility: hidden;">
			<!-- Loading Screen -->
			<div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
				<div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
				<div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
			</div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden;">
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="img/02.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="img/04.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="img/05.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="img/09.jpg" />
            </div>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora12l" style="top:0px;left:0px;width:30px;height:46px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora12r" style="top:0px;right:0px;width:30px;height:46px;" data-autocenter="2"></span>
        <a href="http://www.jssor.com" style="display:none">Bootstrap Carousel</a>
    </div>
	
        </section>

        <div class="clearfix visible-sm-block"></div>

        <div class="hidden-xs col-md-2">
          <div class="row">
            <aside id="aside" class="col-md-12">
              
            </aside>
            <aside class="col-md-12">
              
            </aside>
          </div>
        </div>

      </div>

      <footer class="row">
        <div class="col-md-12">
		</br>
          
        </div>
      </footer>

    </div>
  </body>
</html>