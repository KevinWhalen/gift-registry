function addToFutureDisplay(e)
{
	$("#my_future").append('\
		<div data-role="collapsible-set">\
			<div data-role="collapsible" data-collapsed="true">\
				<h3>'+e.name+' | '+e.date+'</h3>\
				<form action="">\
					<h2>'+e.loc+'</h2>\
					<a data-role="button" href="#wish_list">Wish list</a>\
					<a data-role="button" href="#guests_list">Guests list</a>\
					<a data-role="button" href="#page1" data-icon="delete" data-iconpos="left">Delete event</a>\
				</form>\
			</div>\
		</div>\
	');
}

$(document).ready(function(){

//$("#my_future_button").click(function(){console.log("click");});
$("#my_future_button").click(function(){
/*
	var futureEvents = 
			[
				{
					"name": "Birthday",
					"date": "07-16-2013",
					"loc": "My House - full address from database"
				},
				{
					"name": "Kick ass party",
					"date": "05-11-2013",
					"loc": "Kyle's House"
				},
				{
					"name": "Baby Shower",
					"date": "05-12-2013",
					"loc": "Library"
				}
			];
*/

	var User_ID = 1;

	$.ajax({
			type: "POST",
			url: "scripts/futureQuery.php",
			dataType: "json",
			data: {"User_ID": User_ID},
		})
		.done(function(futureEvents){ 
			futureEvents.forEach(function(e){
				addToFutureDisplay(e);
				console.log(e);
			});
		});
});


});
