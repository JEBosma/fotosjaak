<?php
	//var_dump($_POST);
	
	//Hier wordt contact gemaakt met de server
	$db = mysql_connect("localhost", "root", "");
	
	//Hier wordt er een database gekozen op mysql-server
	mysql_select_db("am1a", $db) or die ("De database is niet gevonden");

	$sql = "INSERT INTO `users` (`id`,
								`firstname`,
								`infix`,
								`surname`,
								`street`,
								`housenumber`,
								`hometown`,
								`zipcode`,
								`date_of_birth`,
								`sex`,
								`marital_status`,
								`favorite_gamekind`,
								`favorite_game`,
								`email`,
								`password`,
								`userrole`)
					VALUES		( NULL,
								'".$_POST['firstname']."',
								'".$_POST['infix']."',
								'".$_POST['surname']."',
								'".$_POST['street']."',
								'".$_POST['housenumber']."',
								'".$_POST['hometown']."',
								'".$_POST['zipcode']."',
								'2013-09-09',
								'".$_POST['sex']."',
								'".$_POST['marital_status']."',
								'".$_POST['favorite_gamekind']."',
								'".$_POST['favorite_game']."',
								'".$_POST['email']."',
								'".$_POST['password']."',
								'customer')";
		
	
	echo $sql;
	//Hier wordt de sql-query op de database afgevuurd en uitgevoerd.
	mysql_query($sql, $db) or die ("De sql-query is niet geoed uitgevoerd")
	
?>