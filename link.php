<ul>
	<li>
		<a href="index.php?content=homepage">Home</a>
	</li>

	<li>
		<a href="index.php?content=hallo">Hallo</a>
	</li>

	<?php 
		if ( isset($_SESSION['userrole']))
		{
			echo "<li>
					<a href='index.php?content=log_out'><br>Uitloggen</br></a>
				</li>";
			
			switch ($_SESSION['userrole'])
			{
				case 'customer': 
					
					echo "<li>
							<a href='index.php?content=downloadpage'><br>Download<br>The Game</br></br></a>
					
						</li>";
					echo"<li>
						<a href='index.php?content=faq'>FAQ Pagina</a>
					
						</li>";
					echo"<li>
							<a href='index.php?content=customer_homepage'><br>User<br>Homepage</br></br></a>
					
						</li>";

					
				break;
				case 'admin':
				
				break;
				case 'root':
				
				break;
				
			}
		
		}
		else
		{
			echo "<li>
					<a href='index.php?content=login_form'><br>Log in</br></a>
				</li>
				<li>
					<a href='index.php?content=register_form'><br>Registration</br></a>
				</li>";
		}
	?>
</ul>