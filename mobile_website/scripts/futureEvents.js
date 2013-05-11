function addToFutureDisplay(e)
{

	$("#my_future").append('\
		<div data-role="collapsible-set">\
			<div data-role="collapsible" data-collapsed="true">\
				<h3>'+e.Event_Name+' | '+e.Event_Date+'</h3>\
				<form action="">\
					<h3> Location: '+e.Location_Name+'</h3>\
					<h4>Address:<br>\
					'+e.Street_Number+' '+e.Street_Name+', ext: '+e.Street_Ext+'<br>\
					'+e.City+', '+e.State+'</h4>\
					<a data-role="button" href="#wish_list">Wish list</a>\
					<a data-role="button" href="#guests_list">Guests list</a>\
					<a data-role="button" href="#page1" data-icon="delete" data-iconpos="left">Delete event</a>\
				</form>\
			</div>\
		</div>\
	').trigger("create");
}

$(document).ready(function(){

$("#my_future_button").click(function(){

	var User_ID = 1;

	$.ajax({
			type: "POST",
			url: "scripts/futureQuery.php",
			dataType: "json",
			data: {"User_ID": User_ID}
		})
		.done(function(futureEvents){ 

			$("#my_future").empty();
			futureEvents.forEach(function(e){
				addToFutureDisplay(e);
				console.log(e);
			});
		});
});


});
