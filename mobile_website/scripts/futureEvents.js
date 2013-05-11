function addToFutureDisplay(e)
{
	$("#my_future").append('\



		<div data-role="collapsible-set">\
			<div data-role="collapsible" data-collapsed="true">\

<div data-role="collapsible" data-collapsed="true" class="ui-collapsible ui-collapsible-inset ui-collapsible-collapsed ui-first-child ui-last-child"><h3 class="ui-collapsible-heading ui-collapsible-heading-collapsed"><a href="#" class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-up-c" data-corners="false" data-shadow="false" data-iconshadow="true" data-wrapperels="span" data-icon="plus" data-iconpos="left" data-theme="c"><span class="ui-btn-inner"><span class="ui-btn-text">
                            Event_Name_Date
                        <span class="ui-collapsible-heading-status"> click to expand contents</span></span>                    

				<h3>'+e.Event_Name+' | '+e.Event_Date+'</h3>\
				<form action="">\
					<h2>'+e.Location_Name+'</h2>\
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
			data: {"User_ID": User_ID}
		})
		.done(function(futureEvents){ 
			futureEvents.forEach(function(e){
				addToFutureDisplay(e);
				console.log(e);
			});
		});
});


});
