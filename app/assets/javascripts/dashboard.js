function initEventPanel(){
	
	$(".event-panel").each(function( index ){
		var offset = index * 270 + 20;
		var offsetString = offset.toString() + 'px';
		$(this).css('left',offsetString);

	});
}

$(document).ready(function(){
	//create navigation
	$("#dashboard-select").addClass("current");

	initEventPanel();

	//for quickadd
	$(".datepicker").datepicker({

		changeMonth: true,
		changeYear:true
	});


});