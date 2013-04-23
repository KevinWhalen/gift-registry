<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>Catch Barcode Scanner Result</title>
	<link rel="stylesheet" href="styles/jquery.mobile-1.3.1.min.css" />
	<link rel="stylesheet" href="styles/my.css" />

	<script src="scripts/jquery-1.9.1.min.js"></script>
	<script src="scripts/jquery.mobile-1.3.1.min.js"></script>
	<script src="scripts/my.js"></script>
<?php
header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
header("Expires: Sat, 26 Jul 1990 05:00:00 GMT"); // Date in the past

// 'code' is the prefered zxing phrasing.
if ($_GET['code']){
	$scannedUPC = $_GET['code'];
} else {
	$scannedUPC = '""';
}

?>
	<script>
// empty the container, add label, add field with optional value
function inputField(val)
{
	$("#inputContainer").empty();
	$("#inputContainer").append('<label class="ui-input-text" for="inputUpc">Enter barcode number:</label>');
	$("#inputContainer").append('<div class="ui-input-text ui-shadow-inset ui-corner-all ui-btn-shadow ui-body-c"><input class="ui-input-text ui-body-c" name="upc" id="inputUpc" placeholder="UPC/EAN Barcode" value="'+ val +'" type="number" /></div>');
}
function itemFields(info)
{
	$("#inputContainer").append('<hr />');
	$("#inputContainer").append('<label class="ui-input-text" for="inputTitle">Title:</label>');
	$("#inputContainer").append('<div class="ui-input-text ui-shadow-inset ui-corner-all ui-btn-shadow ui-body-c"><input class="ui-input-text ui-body-c" name="Title" id="inputTitle" placeholder="Item Name" value="'+ info.Title +'" type="text" /></div>');
	$("#inputContainer").append('<label class="ui-input-text" for="inputClassification">Size:</label>');
	$("#inputContainer").append('<div class="ui-input-text ui-shadow-inset ui-corner-all ui-btn-shadow ui-body-c"><input class="ui-input-text ui-body-c" name="Classification" id="inputClassification" placeholder="Item Classification" value="'+ info.Classification+'" type="text" /></div>');

	//$("#inputUpc").append('<hr />');
	// quantity
	// estimated price
}

try {

    $(document).ready(function() {
		var UPC = <?php echo $scannedUPC; ?>;
		//$("#inputUpc input").val(UPC);

		$('#callScanner').click(function(){
			window.open('zxing://scan/?ret=http%3A%2F%2Fwww.cs.kent.edu%2F%7Ekwhalen%2FRPC%2Ftest%2FscanResultTest.php%3Fcode%3D%7BCODE%7D&SCAN_FORMATS=UPC_A,EAN_13', 'zxingHook');
			window.close();
//			window.location = 'http://zxing.appspot.com/scan?ret=http%3A%2F%2Fwww.cs.kent.edu%2F%7Ekwhalen%2FRPC%2Ftest%2FscanResultTest.php%3Fcode%3D%7BCODE%7D&SCAN_FORMATS=UPC_A,EAN_13';
		});

//-- merging functional aspects --//
		if (UPC != ""){ // check database for item
console.log(UPC);
			inputField(""); //essentially $.empty()

			$.getJSON("scripts/itemExistenceCheck.php?upc=" + UPC, 
	//		$.getJSON("testResponse.php", // always gives 012000000850
			function(data){
				//$('#callScanner').click(function(){
					//$("#inputUpc input").val(data.upc); // works when !async
					inputField(data.Item_ID);
					itemFields(data);
				//});
			});
		}





/*
		$.getJSON("test.php", function(data){
			console.log(data);
			$('#callScanner').click(function(){
				// does not work because of async
				$("#inputUpc input").val(data.upc);
			});
		});
*/
    });

} catch (error) {
    console.error("Your javascript has an error: " + error);
}
	</script>
</head>

<body>
	<!-- Home -->
	<div data-role="page" id="page1">
		<div data-theme="a" data-role="header">
			<h3>Add To Wish List</h3>
		</div>
		<div data-role="content">
			<form id="itemFrom" action="#" method="POST">
				<div id="callScanner" data-role="button" data-theme="a">
					Scan Barcode
				</div>
				<div id="inputContainer" data-role="fieldcontain">
					<label for="inputUpc">
						Enter barcode number:
					</label>
					<input name="upc" id="inputUpc" placeholder="UPC/EAN Barcode" value="" type="number" />
				</div>
				<input id="addItem" value="Add To  Wish List" type="submit" />
			</form>
		</div>
	</div>

</body>
</html>


