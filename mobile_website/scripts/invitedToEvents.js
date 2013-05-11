
function addToInvitedDisplay(e)
{

	$("#i_am_invited").append('\
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
				</form>\
			</div>\
		</div>\
	').trigger("create");
}

$(document).ready(function(){

$("#i_am_invited_button").click(function(){

	var User_ID = 4;

	$.ajax({
			type: "POST",
			url: "scripts/invitedToQuery.php",
			dataType: "json",
			data: {"User_ID": User_ID}
		})
		.done(function(Events){ 

			$("#i_am_invited").empty();
			Events.forEach(function(e){
				addToInvitedDisplay(e);
				console.log(e);
			});
		});
});


});


/*

function addToInvitedDisplay(e)

{

	$("#i_am_invited").append('\
		<div data-role="collapsible-set">\
			<div data-role="collapsible" data-collapsed="true">\
				<h3>'+e.Event_Name+' | '+e.Event_Date+'</h3>\
				<form action="">\
					<h2>'+e.Location_Name+'</h2>\
					<a data-role="button" href="#wish_list">Wish list</a>\
					<a data-role="button" href="#guests_list">Guests list</a>\
				</form>\
			</div>\
		</div>\
	').trigger("create");
}

$(document).ready(function(){

$("#i_am_invited_button").click(function(){

	var User_ID = 1;

	$.ajax({
			type: "POST",
			url: "scripts/invitedToQuery.php",
			dataType: "json",
			data: {"User_ID": User_ID}
		})
		.done(function(invitedToEvents){ 

			$("#i_am_invited").empty();
			invitedToEvents.forEach(function(e){
				addToInvitedDisplay(e);
				console.log(e);
			});
		});
});


});
*/
