<?php
// pastQuery.php
$sqldb = "mysql";
$dbhost = "dbdev.cs.kent.edu";
require 'MySQLcreditials.php';

// parameters
if($_POST['User_ID']){
	$user = $_POST['User_ID'];
} 

//else if($_GET['User_ID']){
//	$user = $_GET['User_ID'];
//}

 else {
	echo 'url error';
//	echo '{"Item_ID":"", "Department":"", "Title":"", "Classification":"", "Price":""}';
	die();
}

// can't trust the front end when it allows it be set by GET

// Connect to MySQL Server
try {
	// database handle
	$dbh = new PDO("$sqldb:host=$dbhost;dbname=$dbname", 
		"$dbuser", "$dbpass");

	// query
	//$today = date("Y-m-d"); //MySQL format
	$sql = "SELECT Event_Name, Location_Name,City, Street_Number, Street_Name, Street_Ext, State, Event_Date
			FROM Events JOIN Address ON (Events.Location_ID = Address.Location_ID)
			WHERE DATE(NOW()) > Event_Date
				AND Events.User_ID = :user";

	// statement handle
	$sth = $dbh->prepare($sql, Array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	$sth->execute(Array(':user' => $user));
	//$sth->execute();
	$rows = $sth->fetchAll(PDO::FETCH_ASSOC);

	// return result
	if ($rows){
		$rowNoNulls = str_replace('null','"NA"',$rows);
		echo json_encode($rowNoNulls);
	} else {
		echo "no result";
	}

	// close connection
	$dbh = NULL;

} catch (PDOException $e) {
	print "Error!: " . $e->getMessage() . "<br/>";
	//die();
}

?>

