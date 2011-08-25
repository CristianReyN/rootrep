jQuery(document).ready(function(){
	$('.prg h2.bac').each(function(index) {
		//var arr = $('<img class="'+(index==0?'pclose':'popen')+'" src="../images/clear.gif">').prependTo($(this));
		var sibling_div = $(this).siblings('div'), a = $('.prg h2.bac:eq('+index+') a'), arr = $('.prg h2.bac:eq('+index+') img');
		a.click(function() {
			sibling_div.slideToggle('slow', function() {
				
				arr.toggleClass("pclose popen");
				if(arr.hasClass('pclose')) 
				{
					arr.attr('alt',arr.attr('alt').replace('Show','Hide'));
					arr.attr('title',arr.attr('title').replace('Show','Hide'));
				}
				else if(arr.hasClass('popen'))
				{
					arr.attr('alt',arr.attr('alt').replace('Hide','Show'));
					arr.attr('title',arr.attr('title').replace('Hide','Show'));
				}
				
				a.toggleClass("aclose aopen");
				if(a.hasClass('aclose')) 
				{
					a.attr('title',a.attr('title').replace('Show','Hide'));
				}
				else if(a.hasClass('aopen'))
				{
					a.attr('title',a.attr('title').replace('Hide','Show'));
				}
			});
			return false;
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
	/*$('.md-trans').click(function (e) {
		$('#modal-dialog').css({width:'700px'});
		$('#mdvideo').hide();
		$('#mdtrans').show();
		$('#modal-dialog').modal( { opacity: 50, position: ['99', '160'] } );
		return false;
	});*/
	$('.md-trans').popupWindow({
		height:500,
		width:700,
		top:250,
		left:160,
		scrollbars:1,
		resizable:1,
		windowName: 'videoTranscript'
	});
	
	$('#modal-dialog').dialog({
		autoOpen: false,
		modal: true,
		draggable: false,
		resizable: false,
		closeOnEscape: true,
		width: 507,
		//height: 305,
		position: [160,99]
	});
	$('.modaldialog-close').click(function (e) {
		$('#modal-dialog').dialog('close');
		var iframe = $('#imodal').get(0);
		if (iframe) iframe.src = 'video/empty.html';
		return false;
	});
	$('.md-video').click(function (e) {
		$('#modal-dialog').css({width:'507px'});
		$('#mdvideo').show();
		$('#modal-dialog').dialog('open');
		
		var iframe = $('#imodal').get(0);
		if (iframe) iframe.src = iframe.getAttribute('videosrc');
		if(document.all)
		{
			$('#grabfocus').get(0).tabIndex = '-1';
			$('#grabfocus').focus();
			
			$('a.haf').each(function(index) {
				var arr = $('<div class="adiv"><div class="rdiv"></div></div>').prependTo($('a.haf:eq('+index+') div'));
				$('a.haf:eq('+index+') div.rdiv').width($('a.haf:eq('+index+') div.adiv').siblings('img').get(0).width+4);
				$('a.haf:eq('+index+') div.rdiv').height($('a.haf:eq('+index+') div.adiv').siblings('img').get(0).height+4);
				$(this).focus(function() {
					$('a.haf:eq('+index+') div.rdiv').addClass('rhdiv');
				});
				$(this).blur(function() {
					$('a.haf:eq('+index+') div.rdiv').removeClass('rhdiv');
				});
			});
		}
		else
		{
			$('#videoclose').get(0).tabIndex = '-1';
			$('#videoclose').focus();
		}
		//else $('#imodal').focus();
		
		return false;
	});
	$('.modaldialog-close').click(function (e) {
		$('#modal-dialog').dialog('close');
		var iframe = $('#imodal').get(0);
		if (iframe) iframe.src = 'video/empty.html';
		return false;
	});
	$('#returnfocus').blur(function (e) {
		if(document.all)
		{
			$('#grabfocus').get(0).tabIndex = '-1';
			$('#grabfocus').focus();
		}
		else
		{
			$('#videoclose').get(0).tabIndex = '-1';
			$('#videoclose').focus();
		}
	});
	
 });
 
 
 (function($){ 		  
	$.fn.popupWindow = function(instanceSettings){
		
		return this.each(function(){
		
		$(this).click(function(){
		
		$.fn.popupWindow.defaultSettings = {
			centerBrowser:0, // center window over browser window? {1 (YES) or 0 (NO)}. overrides top and left
			centerScreen:0, // center window over entire screen? {1 (YES) or 0 (NO)}. overrides top and left
			height:500, // sets the height in pixels of the window.
			left:0, // left position when the window appears.
			location:0, // determines whether the address bar is displayed {1 (YES) or 0 (NO)}.
			menubar:0, // determines whether the menu bar is displayed {1 (YES) or 0 (NO)}.
			resizable:0, // whether the window can be resized {1 (YES) or 0 (NO)}. Can also be overloaded using resizable.
			scrollbars:0, // determines whether scrollbars appear on the window {1 (YES) or 0 (NO)}.
			status:0, // whether a status line appears at the bottom of the window {1 (YES) or 0 (NO)}.
			width:500, // sets the width in pixels of the window.
			windowName:null, // name of window set from the name attribute of the element that invokes the click
			windowURL:null, // url used for the popup
			top:0, // top position when the window appears.
			toolbar:0 // determines whether a toolbar (includes the forward and back buttons) is displayed {1 (YES) or 0 (NO)}.
		};
		
		settings = $.extend({}, $.fn.popupWindow.defaultSettings, instanceSettings || {});
		
		var windowFeatures =    'height=' + settings.height +
								',width=' + settings.width +
								',toolbar=' + settings.toolbar +
								',scrollbars=' + settings.scrollbars +
								',status=' + settings.status + 
								',resizable=' + settings.resizable +
								',location=' + settings.location +
								',menuBar=' + settings.menubar;

				settings.windowName = this.name || settings.windowName;
				settings.windowURL = this.href || settings.windowURL;
				var centeredY,centeredX;
			
				if(settings.centerBrowser){
						
					if ($.browser.msie) {//hacked together for IE browsers
						centeredY = (window.screenTop - 120) + ((((document.documentElement.clientHeight + 120)/2) - (settings.height/2)));
						centeredX = window.screenLeft + ((((document.body.offsetWidth + 20)/2) - (settings.width/2)));
					}else{
						centeredY = window.screenY + (((window.outerHeight/2) - (settings.height/2)));
						centeredX = window.screenX + (((window.outerWidth/2) - (settings.width/2)));
					}
					window.open(settings.windowURL, settings.windowName, windowFeatures+',left=' + centeredX +',top=' + centeredY).focus();
				}else if(settings.centerScreen){
					centeredY = (screen.height - settings.height)/2;
					centeredX = (screen.width - settings.width)/2;
					window.open(settings.windowURL, settings.windowName, windowFeatures+',left=' + centeredX +',top=' + centeredY).focus();
				}else{
					window.open(settings.windowURL, settings.windowName, windowFeatures+',left=' + settings.left +',top=' + settings.top).focus();	
				}
				return false;
			});
			
		});	
	};
})(jQuery);