<?php 

	if (!isset($_GET['language']))
	{
		$_GET['language'] = 'dutch';
	}

	$userrole = array ('customer');
	include("security.php");
	include("connect_db.php");
	$query = "SELECT * FROM `faq`";
	$result = mysql_query($query, $db);

?>



<table class='simple'>
	<caption>
		Dit is de FAQ pagina. Welkom...
		<a 
			href='index.php?content=faq&language=english'>
				<img src='./images/uk_vlag.jpg' alt='' />
		</a>
		<a 
			href='index.php?content=faq&language=dutch'>
				<img src='./images/nederlandse_vlag.jpg' alt='' />
		</a>
	</caption
	<tr>
		<th>
			ID
		</th>
		<th>
			Vraag
		</th>
		<th>
			Antwoord
		</th>
<?php
while ($record = mysql_fetch_array($result))
{
	echo 	"<tr>
				<td>
					".$record['id']."
				</td>
				<td>
					";
				if ($_GET['language'] == 'english')
				{
					echo $record['question_english'];

				}
				else
				{
					echo $record['question_dutch'];
				}
				echo"
				</td>
				<td>
					";
					if ($_GET['language'] == 'english')
					{
						echo $record['answer_english'];
					}
					else
					{
					 	echo $record['answer_dutch'];
					}
					echo "
				</td>
			</tr>";
}
?>
</table>