<?php


$bdd = new PDO('mysql:host=localhost;dbname=adsi;charset=utf8', 'root', '');
 

$Titre = $_GET["Titre"];

$result = $bdd->query("SELECT auteur,titre,edition,anneEdition,description,
					categorie, type, quantite FROM livres 
					WHERE categorie= '".$Titre."' ");

 //$rows = mysqli_num_rows($result);

echo "<p class=\"col-sm-8 table-responsive\">";
echo "<table class=\"table table-bordered table-striped table-condensed\" cellpadding='1' border='1'><tr><td>Auteur</td><td>titre</td><td>description</td>
						<td>categorie</td><td>type</td><td>quantite</td></tr>";
		
while ($row = $result->fetch() ) 
        {
            echo "<tr><td>"
			
			 .$row['auteur']."</td>" ."<td>" 
			 . $row['titre'] . "</td>" . "<td>" 
			 . $row['description'] . "</td>" . "<td>" 
			 . $row['categorie'] . "</td>". "<td>" 
			 . $row['type'] . "</td>". "<td>" 
			 . $row['quantite'] . "</td></tr>";
        }
       echo "</table>";
	   echo"</p>";
	   
?>




