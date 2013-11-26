<?php
	require_once 'config/config.php';

	class MySqlDatabaseClass
	{
		//Fields
		private $db_connection;
		
		
		//Dit is de constructor van de MySqlDatabaseClass
		//Een constructor herken je in PHP aan de naam. De naam is altijd
		// __construct omdat deze functie
		public function __construct()
		{
			// Velden roep je aan met $this->naam_van_het_veld_zonder_$
			// Er word hier een verbinding gemaatk met de mysql server
			$this->db_connection = mysql_connect(SERVERNAME,
												USERNAME,
												PASSWORD);
			//Er wordt hier een database geselecteerd
			mysql_select_db(DATABASE, $this->db_connection) or 
			die('MysqlDatabaseClass, database niet geselecteerd');
		}
		
	}




?>