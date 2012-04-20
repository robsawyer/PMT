$(document).ready(function(){

	// fade out good flash messages after 3 seconds  
	$('.flash_good').animate({opacity: 1.0}, 3000).hide("slow");
	//var t=setTimeout("javascript statement",milliseconds);

		
	$(".nav-browsedrop-link-1").mouseover(function () {
			
			$('#nav-browsedrop-1').show();
			$("#nav-browsedrop-1-link").addClass('topnavActive');
		    });
		
	$(".nav-browsedrop-link-1").mouseout(function () {
		//alert('drop off');
				$('#nav-browsedrop-1').hide();
				$("#nav-browsedrop-1").removeClass('topnavActive');
			});
	$(".nav-browsedrop-link-2").mouseover(function () {

			$('#nav-browsedrop-2').show();
			$("#nav-browsedrop-2-link").addClass('topnavActive');
		    });

	$(".nav-browsedrop-link-2").mouseout(function () {
		//alert('drop off');
				$('#nav-browsedrop-2').hide();
				$("#nav-browsedrop-2").removeClass('topnavActive');
			});

	$(".nav-browsedrop-link-3").mouseover(function () {

			$('#nav-browsedrop-3').show();
			$("#nav-browsedrop-3-link").addClass('topnavActive');
		    });

	$(".nav-browsedrop-link-3").mouseout(function () {
		//alert('drop off');
				$('#nav-browsedrop-3').hide();
				$("#nav-browsedrop-3").removeClass('topnavActive');
			});
			
	$(".closer").mouseover(function () {
			//alert('drop off');
				$('#nav-browsedrop').hide();
				$("#nav-browsedrop-link").removeClass('topnavActive');
			});
	
	$(".nav-browsedrop-indy22").mouseout(function () {
		//		alert('link out');
				$('#nav-browsedrop').show();
				$("#nav-browsedrop-link").addClass('topnavActive');
			});	
			

	$(".debuggg").click(function () {
			      $(".debuggg-inner").slideToggle("slow");
			    });
			
	$(".showhideparts").click(function () {
		$("#listofaddedparts").slideToggle("slow");
		if($(this).text() == "hide me"){
			$(this).text('show me');
		}else{
			$(this).text('hide me');
		}
	});
	
	$(".showhidecompanies").click(function () {
		$("#listofaddedcompanies").slideToggle("slow");
		if($(this).text() == "hide me"){
			$(this).text('show me');
		}else{
			$(this).text('hide me');
		}
	});
	$(".showhidehaves").click(function () {
		$("#listofhaves").slideToggle("slow");
		if($(this).text() == "hide me"){
			$(this).text('show me');
		}else{
			$(this).text('hide me');
		}
	});
	
});



