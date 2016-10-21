<?php
session_start();

if(isset($_SESSION['tableau']))
			  {
				  $i=0;
			  $tableau = $_SESSION['tableau'];
			  while	(isset($tableau[$i]))
			  {
				$i+=1;
				 }
				  $arr = explode(',',trim($_POST['Numlivre']));
				 
				     $tableau[$i]= $arr[0];
					 $_SESSION['tableau']=$tableau;
				 // echo $_SESSION['tableau'][$i]."-";
					
			  
}
else
{
	$arr = explode(',',trim($_POST['Numlivre']));
	$tableau[0]= $arr[0];
	
	$_SESSION['tableau'] = $tableau	;
}
?>

<a class="btn btn-link btn-md" >
<span id="ok_icon" class="glyphicon glyphicon-ok">
			</span></a>
