<?php
// http://www.upcdatabase.com/php_example.txt

	// Requires PHP PEAR and XML/RPC
	require_once 'XML/RPC.php';

	// Set your rpc_key here
	$rpc_key = '9c1f062957bac9660bd69d947c595e5e7acab82d';
	
	// Setup the URL of the XML-RPC service
	$client = new XML_RPC_Client('/xmlrpc', 'http://www.upcdatabase.com');
	
	// Construct the entire parameter list (an array) for the call.
	// The array contains a single XML_RPC_Value object, a struct.
	// The struct is constructed from a PHP associative array, and each
	// value needs to be an XML_RPC_Value object.
// possibly pick up an arguement from the command line
if ($argv[1]){
	$requested = $argv[1];
} else {
	$requested = $_REQUEST['upc'];
}
	$params = array( new XML_RPC_Value( array(
		'rpc_key' => new XML_RPC_Value($rpc_key, 'string'),
		'upc' => new XML_RPC_Value($requested, 'string'),	
		), 'struct'));

	// Construct the XML-RPC request.  Substitute your chosen method name
	$msg = new XML_RPC_Message('lookup', $params);
	
	// Have the client send the message to the server.  Save response.
	$resp = $client->send($msg);
	
	// If there was a problem sending the message, the resp will be false
	if (!$resp)
	{
		//print the error code from the client and exit
		echo 'Communication error: ' . $client->errstr;
		exit;
	}
	
	// If the response doesn't have a fault code, then
	// show the response as the array it is
	if(!$resp->faultCode())
	{
		// Store the value of the response in a variable
		$val = $resp->value();
		// Decode the value, into an array.
		$data = XML_RPC_decode($val);

// asdf
echo json_encode($data);

		// Optionally print the array to the screen to inspect the values
//		echo "<pre>" . print_r($data, true) . "</pre>";
	}else{
		// If something went wrong, show the error
		echo 'Fault Code: ' . $resp->faultCode() . "\n";
		echo 'Fault Reason: ' . $resp->faultString() . "\n";
	}
?>

