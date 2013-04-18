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

if ($_GET['code']){
	$scannedUPC = $_GET['code'];
} else {
	$scannedUPC = '""';
}

?>
	<script>
try {

    $(document).ready(function() {
		var UPC = <?php echo $scannedUPC; ?>;
		$("#inputUpc input").val(UPC);
		//if (UPC != ""){} // check database for item

		console.log("opener: " + window.opener);
		$('#callScanner').click(function(){
			window.open('zxing://scan/?ret=http%3A%2F%2Fwww.cs.kent.edu%2F%7Ekwhalen%2FRPC%2Ftest%2FscanResultTest.php%3Fcode%3D%7BCODE%7D&SCAN_FORMATS=UPC_A,EAN_13', 'zxingHook');
			close();
//			window.location = 'http://zxing.appspot.com/scan?ret=http%3A%2F%2Fwww.cs.kent.edu%2F%7Ekwhalen%2FRPC%2Ftest%2FscanResultTest.php%3Fcode%3D%7BCODE%7D&SCAN_FORMATS=UPC_A,EAN_13';
		});

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
			<h3></h3>
		</div>
		<div data-role="content">
			<form id="itemFrom" action="#" method="POST">
				<div id="callScanner" data-role="button" data-theme="a">
					Scan Barcode
				</div>
				<div id="inputUpc" data-role="fieldcontain">
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


