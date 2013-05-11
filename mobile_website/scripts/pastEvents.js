function addToPastDisplay(e)
{

	$("#my_past").append('\
		<div data-role="collapsible-set">\
			<div data-role="collapsible" data-collapsed="true">\
				<h3>'+e.Event_Name+' | '+e.Event_Date+'</h3>\
				<form action="">\
					<h2>'+e.Location_Name+'</h2>\
					<a data-role="button" href="#wish_list">Wish list</a>\
					<a data-role="button" href="#guests_list">Guests list</a>\
					<a data-role="button" href="#page1" data-icon="delete" data-iconpos="left">Delete event</a>\
				</form>\
			</div>\
		</div>\
	').trigger("create");
}

$(document).ready(function(){

$("#my_past_button").click(function(){

	var User_ID = 2;

	$.ajax({
			type: "POST",
			url: "scripts/pastQuery.php",
			dataType: "json",
			data: {"User_ID": User_ID}
		})
		.done(function(pastEvents){ 

			$("#my_past").empty();
			pastEvents.forEach(function(e){
				addToPastDisplay(e);
				console.log(e);
			});
		});
});


});
