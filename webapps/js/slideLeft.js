$(document).ready(function(){
	
	$('#menu').toggle(function(){
		fn_resizeHeight();
		$("#slideLeft").animate({ "left":"0px" }, "fast");
		$('#main').animate({ 'left' : '260px' }, 'fast');
	},
	function() {
		$('#main').animate({ 'left' : '0'}, 'fast');
	});

});


fn_resizeHeight = function() {
	   var sideHeight = $(document).height(); 
	   $('.sideMenu').css({'height':sideHeight});
	  }