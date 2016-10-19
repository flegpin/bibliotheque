<?php
$bdd = new PDO('mysql:host=localhost;dbname=adsi;charset=utf8', 'root', '');
 


$result = $bdd->query("SELECT auteur,titre,edition,anneEdition,description,
					categorie, type, quantite,Numlivre FROM livres 
					WHERE anneEdition >= '2015-07-17'
					ORDER BY Numlivre");

 //$rows = mysqli_num_rows($result);

echo "<p id=\"table_new\" class=\"col-sm-8 table-responsive\">";
echo "<table  class=\"table table-bordered table-striped table-condensed\" cellpadding='1' border='1'><tr><td>Auteur</td><td>titre</td><td>description</td>
						<td>categorie</td><td>type</td><td>quantite</td>
					<td>	
						<span class=\"glyphicon glyphicon-shopping-cart\">
			</span>Panier</a>
			</td>
						</tr>";
		$i=1;
while ($row = $result->fetch() ) 
        {
			// ".$row['Numlivre']."
            echo "<tr><td>"
			
			 .$row['auteur']."</td>" ."<td>" 
			 . $row['titre'] . "</td>" . "<td>" 
			 . $row['description'] . "</td>" . "<td>" 
			 . $row['categorie'] . "</td>". "<td>" 
			 . $row['type'] . "</td>". "<td>" 
			 . $row['quantite'] . "</td>". "<td>
			 <a  id=\"cart".$i."\" class=\"btn btn-link btn-lg\" onclick=\"cart('".$row['Numlivre'].",".$i."')\">
			 <span class=\"glyphicon glyphicon-shopping-cart\">
			 </span>
			
			</tr>";
			$i+=1; 
        }
       echo "</table>";
	   echo"</p>";
	   
?>
mohamed
15deMah0M2k



