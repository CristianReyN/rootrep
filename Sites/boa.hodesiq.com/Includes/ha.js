jQuery(document).ready(function(){
	$('a.ha').each(function(index) {
		
		var arr = $('<div class="adiv"><div class="rdiv"></div></div>').prependTo($('a.ha:eq('+index+') div'));
		
		$('a.ha:eq('+index+') div.rdiv').width($('a.ha:eq('+index+') div.adiv').siblings('img').get(0).width+4);
		$('a.ha:eq('+index+') div.rdiv').height($('a.ha:eq('+index+') div.adiv').siblings('img').get(0).height+4);
		
		/*$(this).mouseover(function() {
			$('a.ha:eq('+index+') div.rdiv').addClass('rhdiv');
		});*/
		$(this).focus(function() {
			$('a.ha:eq('+index+') div.rdiv').addClass('rhdiv');
		});
		/*$(this).mouseout(function() {
			$('a.ha:eq('+index+') div.rdiv').removeClass('rhdiv');
		});*/
		$(this).blur(function() {
			$('a.ha:eq('+index+') div.rdiv').removeClass('rhdiv');
		});
	});
 });