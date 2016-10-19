<?php
$bdd = new PDO('mysql:host=localhost;dbname=adsi;charset=utf8', 'root', '');

// Le mot de passe n'a pas été envoyé ou n'est pas bon
if (!isset($_POST['login'])=="mohamed" AND $_POST['mot_de_passe'] != "kangourou")
{
	echo $_POST['pseudo'];
}
// Le mot de passe a été envoyé et il est bon
else
{
	else echo "Veuillez reesayer";
	// Afficher les codes secrets
}

?>




