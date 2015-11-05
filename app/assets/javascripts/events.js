$(document).ready(function(){

	$("#events-select").addClass("current");

	
	//for quickadd
	$(".datepicker").datepicker({

		changeMonth: true,
		changeYear:true
	});
});

function display_model() {
  $("#add-room-button").modal("show")
}
