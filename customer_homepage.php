<?php 
	$userrole = array('customer','root','admin');
	include("security.php");
?>
<h3>Welkom Customer</h3>
Uw id is: <?php echo $_SESSION['id']; ?>
<br>Uw gebruikersrol is: <?php echo $_SESSION['userrole']; ?></br>