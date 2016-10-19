<?php
// Le mot de passe n'a pas été envoyé ou n'est pas bon
if ((!isset($_POST['pseudo2']) or empty($_POST['pseudo2']) )or
	(!isset($_POST['nom']) or empty($_POST['nom']))or
	(!isset($_POST['prenom']) or empty($_POST['prenom'])) or
	(!isset($_POST['adresse']) or empty($_POST['adresse'])) or
	(!isset($_POST['password2']) or empty($_POST['password2'])) or
	(!isset($_POST['codePostal']) or empty($_POST['codePostal'])) or
	(!isset($_POST['tel']) or empty($_POST['tel'])))
	{echo "Tous les champs n'ont pas ete remplis";}
else
	{	
	$bdd = new PDO('mysql:host=localhost;dbname=adsi;charset=utf8', 'root', '');
		$pseudo = $_POST['pseudo2'];
		$nom = $_POST['nom'];
		$prenom = $_POST['prenom'];
		$password = $_POST['password2'];
		$adresse = $_POST['adresse'];
		$codePostal = $_POST['codePostal'];
		$tel = $_POST['tel'];
		
	echo " Tous les champs ont ete bien recu ";
	$requete = "INSERT INTO clients 
	(adresse,nom,prenom,codePostal,tel)
	VALUES 
	('$adresse','$nom','$prenom','$codePostal','$tel')";

if( $bdd->query($requete) == true)
{		
		$result = $bdd->query ("SELECT numClient FROM clients WHERE tel='".$tel."'");
		$row = $result->fetch();
		echo "Le numero de ce client est : ".$row['numClient'];
		$numClient = $row['numClient'];
	$requete2 = "INSERT INTO authentification 
	(login,password,numClient)
	VALUES 
	( '$pseudo','$password','$numClient')";
	if( $bdd->query($requete2) == true)
		echo" 	ajout reussi";
}
}
?>




