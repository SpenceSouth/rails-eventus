function initEventPanel(){
	
	$(".event-panel").each(function( index ){
		var offset = index * 270;
		var offsetString = offset.toString() + 'px';
		$(this).css('left',offsetString);
	});
	var width = ($(".event-panel").size() * 270);
	$("#slide-panel hr").css('width', width);
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