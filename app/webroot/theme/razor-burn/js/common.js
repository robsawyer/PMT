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

/***************************************************************************************/
/* Truncated text plugin for jQuery.                                                   */
/***************************************************************************************/
(function($){
	$.fn.jTruncate = function(options) {
	   
		var defaults = {
			length: 300,
			minTrail: 0,
			moreText: "more",
			lessText: "less",
			ellipsisText: "",
			moreAni: "fast",
			lessAni: "fast"
		};
		
		var options = $.extend(defaults, options);
	   
		return this.each(function() {
			obj = $(this);
			var body = obj.html();
			
			if(body.length > options.length + options.minTrail) {
				var splitLocation = body.indexOf(' ', options.length);
				if(splitLocation != -1) {
					// truncate tip
					var splitLocation = body.indexOf(' ', options.length);
					var str1 = body.substring(0, splitLocation);
					var str2 = body.substring(splitLocation, body.length - 1);
					obj.html(str1 + '<span class="truncate_ellipsis">' + options.ellipsisText + 
						'</span>' + '<span class="truncate_more">' + str2 + '</span>');
					obj.find('.truncate_more').css("display", "none");
					
					// insert more link
					obj.append(
						'<a href="#" class="truncate_more_link">' + options.moreText + '</a>' 
					);

					// set onclick event for more/less link
					var moreLink = $('.truncate_more_link', obj);
					var moreContent = $('.truncate_more', obj);
					var ellipsis = $('.truncate_ellipsis', obj);
					moreLink.click(function() {
						if(moreLink.text() == options.moreText) {
							moreContent.show(options.moreAni);
							moreLink.text(options.lessText);
							ellipsis.css("display", "none");
						} else {
							moreContent.hide(options.lessAni);
							moreLink.text(options.moreText);
							ellipsis.css("display", "inline");
						}
						return false;
				  	});
				}
			} // end if
			
		});
	};
})(jQuery);

//Truncated text declarations
$().ready(function() {
    $('.trunc').jTruncate({
        length: 95,
        minTrail: 0,
        moreText: "...",
        lessText: "",
    });
});

$().ready(function() {
    $('.trunc2').jTruncate({
        length: 23,
        minTrail: 0,
        moreText: "...",
        lessText: "",
    });
});

$().ready(function() {
    $('.trunc3').jTruncate({
        length: 75,
        minTrail: 0,
        moreText: "...",
        lessText: "",
    });
});

