<?php
// itemExistenceCheck.php
$sqldb = "mysql";
$dbhost = "dbdev.cs.kent.edu";
require 'MySQLcreditials.php';

// parameters
if($_POST['upc']){
	$upc = $_POST['upc'];
} else if($_GET['upc']){
	$upc = $_GET['upc'];
} else {
	//$upc = "000000000000";
	echo '{"Item_ID":"", "Department":"", "Title":"", "Classification":"", "Price":""}';
	die();
}

// can't trust the front end when it allows it be set by GET


// Connect to MySQL Server
try {
	// database handle
	$dbh = new PDO("$sqldb:host=$dbhost;dbname=$dbname", 
		"$dbuser", "$dbpass");

	// query
	$sql = "SELECT Item_ID, Department, Title, Classification, Price 
			FROM Item 
			WHERE Item_ID = :id";

	// statement handle
$sth = $dbh->prepare($sql, Array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	$sth->execute(Array(':id' => $upc));
	$row = $sth->fetch(PDO::FETCH_ASSOC);

	// return result
	if ($row){
		$rowNoNulls = str_replace('null','""',$row);
		echo json_encode($rowNoNulls);
	} else {
	// search external database and pull into local cache table.
		$arguement = escapeshellarg($upc);
		exec("php lookupItem.php $arguement", $output, $returnCode);

		if ($returnCode == 0){
			$out = preg_replace('/description/','desc',$output[0],1);
			$entry = json_decode($out);
			$u = escapeshellarg($entry->upc);
			$d = escapeshellarg($entry->desc);
			$s = escapeshellarg($entry->size);
			exec("php addItem.php ".$u." ".$d." ".$s, $output2, $returnCode2);

			if ($returnCode2 == 0){
				echo '{"Item_ID":"'.$entry->upc.'", ',
					'"Department":"", ',
					'"Title":"'.$entry->desc.'", ',
					'"Classification":"'.$entry->size.'", ',
					'"Price":""',
					'}' . PHP_EOL;
			}
		}
	}

	// close connection
	$dbh = NULL;

} catch (PDOException $e) {
	print "Error!: " . $e->getMessage() . "<br/>";
	//die();
}

?>

