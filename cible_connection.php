<?php	
session_start();	
$bdd = new PDO('mysql:host=localhost;dbname=adsi;charset=utf8', 'root', '');

// Le mot de passe n'a pas été envoyé ou n'est pas bon
if (isset($_POST['pseudo1']) AND isset($_POST['password1'] ))
{	
	$pseudo=$_POST['pseudo1'];
	$password=$_POST['password1'];
	$result = $bdd->query("SELECT login,password
	FROM authentification
	WHERE login= '".$pseudo."' AND password='".$password."' ");
	if($row = $result->fetch())
		{
		echo "console.log(\"Good !\"); Bienvenue ".$pseudo;
		$_SESSION['login']=$pseudo;
		echo $_SESSION['login'];
		echo "$('#connect').css('color','red')";
		
		echo"var couleur = $('#connect').css('color'); //un getter
		$('.connect').css('font-size', '40px');	//un setter;
		console.log(couleur);";
		header('Location: index.php');
		
		}
	else
		{
		echo "Erreur d'authentification\</br>
		<a onclick='ajax(\"connexion.php\"); return false;' href=\"index.php\">";
		}
}
else
{
	echo "Erreur\" </br>
			<a onclick='ajax(\"connexion.php\"); return false;' href=\"index.php\">";
	
}

?>




