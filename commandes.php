<?php	
session_start();

if (isset($_SESSION['login']))
{
$bdd = new PDO('mysql:host=localhost;dbname=adsi;charset=utf8', 'root', '');
 



					

	echo "<p id=\"table_new\" class=\"col-sm-8 table-responsive\">";
echo "<table  class=\"table table-bordered table-striped table-condensed\" cellpadding='1' border='1'><tr><td>Auteur</td><td>titre</td><td>description</td>
						<td>categorie</td><td>type</td><td>quantite</td><td>prix</td></tr>";
		$i=0;
if(isset($_SESSION['tableau'])){
$tableau=$_SESSION['tableau'];
while(isset($tableau[$i]))
	{	
	
	$result = $bdd->query("SELECT auteur,titre,edition,anneEdition,description,
					categorie, type, quantite,Numlivre,prix FROM livres ");
	while ($row = $result->fetch() ) 
        {
			$y=$row['Numlivre'];

			if($tableau[$i]==$row['Numlivre'])	
			{
				echo "<tr><td>"
				
				 .$row['auteur']."</td>" ."<td>" 
				 . $row['titre'] . "</td>" . "<td>" 
				 . $row['description'] . "</td>" . "<td>" 
				 . $row['categorie'] . "</td>". "<td>" 
				 . $row['type'] . "</td>". "<td>" 
				 . $row['prix'] . "</td>". "<td>" 
				 . $row['quantite'] . "</td></tr>";		
			//break;
			}
		}
	
	$i+=1;
	}
	echo "</table>";

	echo"<a class=\"btn btn-link btn-lg\" onclick=\"finaliser()\">
			<span class=\"glyphicon glyphicon-ok\">
			</span><br>Continuer</a>";
	
}
else echo"Vous navez aucune commande";
}
else{
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
}
?>