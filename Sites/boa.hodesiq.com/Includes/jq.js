jQuery(document).ready(function(){
	$('.prg h2.bac').each(function(index) {
		//var arr = $('<img class="'+(index==0?'pclose':'popen')+'" src="../images/clear.gif">').prependTo($(this));
		var sibling_div = $(this).siblings('div'), arr = $('.prg h2.bac:eq('+index+') img');
		arr.click(function() {
			sibling_div.slideToggle('slow', function() {arr.toggleClass("pclose popen");});
		});
		if(index == 0)
		{
			//sibling_div.show();
			//arr.toggleClass("pclose");
		}
	});
	$('.prg h2.bac:last').addClass('last');
	
	$('.cmpr a').each(function(index) {
		$(this).mouseover(function() {
			$(this).addClass('over');
		});
		$(this).focus(function() {
			$(this).addClass('over');
		});
		$(this).mouseout(function() {
			$(this).removeClass('over');
		});
		$(this).blur(function() {
			$(this).removeClass('over');
		});
	});
 });