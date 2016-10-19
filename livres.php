<?php

$bdd = new PDO('mysql:host=localhost;dbname=adsi;charset=utf8', 'root', '');
 


$result = $bdd->query("SELECT DISTINCT categorie
FROM livres
ORDER BY categorie");



echo"<h3>Choisissez par la categorie pour voir les produits correspondant </h3>
		<form name=\"mon_form1\" method=\"post\" action=\"\" >
        <select id=\"TitreCat\" onchange=\"afficheC(this.value)\"> ";
		while($row = $result->fetch())
		{
		echo "<option value=\"" . $row['categorie'] ."\">" .$row['categorie'] . "</option>\n";
		}
	echo  "</select></form>
	<p id=\"section2\">
	</p>";
?>
