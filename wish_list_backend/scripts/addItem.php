<?php
// addItem.php

/* Requires 3 arguements: upc, description, size
 * or the same 3 parameters via the GET method.
 *
 * Error codes:
 * 0 - Successful, no errors.
 * 1 - Invalid number of arguements or missing parameters
 * 2 - upc or first arguement is not a number.
 *     The primary key is an integer.
*/

$sqldb = "mysql";
$dbhost = "dbdev.cs.kent.edu";
require 'MySQLcreditials.php';

// arguements
if($argc == 4){
	if (is_numeric($argv[1])) $UPC = $argv[1];
	else return 2;
	$DESCRIPTION = $argv[2];
	$SIZE = $argv[3];
} else if ($_GET['upc'] && $_GET['description'] && $_GET['size']){
	if (is_numeric($_GET['upc'])) $UPC = $_GET['upc'];
	else return 2;
	$DESCRIPTION = $_GET['description'];
	$SIZE = $_GET['size'];
} else {
	return 1;
}

// Connect to MySQL Server
try {
	// database handle
	$dbh = new PDO("$sqldb:host=$dbhost;dbname=$dbname", 
		"$dbuser", "$dbpass");

	// query
	$sql = "INSERT INTO Item 
			(Item_ID, Title, Classification)
			VALUES
			(:upc, :description, :size)";

	// statement handle
$sth = $dbh->prepare($sql, Array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	$sth->execute(Array(':upc' => $UPC,
						':description' => $DESCRIPTION,
						':size' => $SIZE));

	// close connection
	$dbh = NULL;

} catch (PDOException $e) {
	print "Error!: " . $e->getMessage() . "<br/>";
	//die();
}

return 0;

?>

