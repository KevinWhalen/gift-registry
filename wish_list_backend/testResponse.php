<?php
// One hardcoded UPC object for testing.
// Use arrays with database results of multiple rows, 
// but just a single object here.

echo '{"upc":"012000000850", ',
	'"pendingUpdates":"1", ',
	'"status":"success", ',
	'"ean":"012000000850", ',
	'"issuerCountryCode":"us", ',
	'"found":"1", ',
	'"description":"Mountain Dew (Can)", ',
	'"message":"Database entry found", ',
	'"size":"12fl oz (355mL)", ',
	'"issuerCountry":"United States", ',
	'"noCacheAfterUTC":"2013-04-15T16:52:17", ',
	'"lastModifiedUTC":"2006-08-16T17:41:45", ',
	'"upce":"01208500"',
	'}' . PHP_EOL;

?>
