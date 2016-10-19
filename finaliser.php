<?php	
session_start();

if (isset($_SESSION['login']))
{
$bdd = new PDO('mysql:host=localhost;dbname=adsi;charset=utf8', 'root', '');
 
	$i=0;
if(isset($_SESSION['tableau']))
{
	$total=0;
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
				$total+=$row['prix'];
				
			}
		}
		
	$i+=1;
	}
	echo "Le total est: ".$total.". Votre commande a bien ete effectuee";
		unset($_SESSION['tableau']);
	}
	else
		echo "Veuillez choisir les articles a commander";
}

	
?>