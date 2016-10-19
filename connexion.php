<?php 
session_start();	

echo"<form method = \"post\" action = \"cible_connection.php\" id =\"formulaire\" class=\"form-horizontal col-md-offset-3 col-lg-6\">
  <div class=\"form-group\">
    <legend>Se connecter</legend>
  </div>
  <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"pseudo\" class=\"col-lg-2 control-label\">Pseudo: </label>
      <div class=\"col-lg-10\">
        <input type=\"text\" class=\"form-control\" name=\"pseudo1\">
      </div>
    </div>
  </div>
  <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"textarea\" class=\"col-lg-2 control-label\">Password: </label>
      <div class=\"col-lg-10\">
        <input type=\"password\" class=\"form-control\" name=\"password1\">
      </div>
    </div>
  </div>
  
  <div class=\"form-group\">
    <button class=\"pull-right btn btn-default\">Se connecter</button>
  </div>
</form>
";

echo"<form method = \"post\" action = \"cible_inscription.php\" id =\"formulaire\" class=\"form-horizontal col-md-offset-3 col-lg-6\">
  <div class=\"form-group\">
    <legend>S'inscrire</legend>
	</div>
	</br>
  <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"pseudo\" class=\"col-lg-2 control-label\">Pseudo: </label>
      <div class=\"col-lg-10\">
        <input type=\"text\" class=\"form-control\" name=\"pseudo2\">
      </div>
    </div>
  </div>
  
  </div>
  <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"pseudo\" class=\"col-lg-2 control-label\">Nom: </label>
      <div class=\"col-lg-10\">
        <input type=\"text\" class=\"form-control\" name=\"nom\">
      </div>
    </div>
  </div>
  
   <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"pseudo\" class=\"col-lg-2 control-label\">Prenom: </label>
      <div class=\"col-lg-10\">
        <input type=\"text\" class=\"form-control\" name=\"prenom\">
      </div>
    </div>
  </div>
  
  <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"textarea\" class=\"col-lg-2 control-label\">Password: </label>
      <div class=\"col-lg-10\">
        <input type=\"password\" class=\"form-control\" name=\"password2\">
      </div>
    </div>
  </div>
  
   <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"pseudo\" class=\"col-lg-2 control-label\">Adresse: </label>
      <div class=\"col-lg-10\">
        <input type=\"text\" class=\"form-control\" name=\"adresse\">
      </div>
    </div>
  </div>
  
    <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"pseudo\" class=\"col-lg-2 control-label\">Code Postal: </label>
      <div class=\"col-lg-10\">
        <input type=\"text\" class=\"form-control\" name=\"codePostal\">
      </div>
    </div>
  </div>
  
    <div class=\"row\">
    <div class=\"form-group\">
      <label for=\"pseudo\" class=\"col-lg-2 control-label\">Tel: </label>
      <div class=\"col-lg-10\">
        <input type=\"text\" class=\"form-control\" name=\"tel\">
      </div>
    </div>
  </div>
  
  <div class=\"form-group\">
    <button  class=\"pull-right btn btn-default\">S'inscrire</button>
  </div>
</form>
";

?>