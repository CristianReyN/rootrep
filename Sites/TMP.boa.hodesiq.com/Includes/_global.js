/* 
	Bank of America - Global Functions
	Michael Spellacy, Senior UI Developer <michael.spellacy@tmp.com>, TMP Worldwide, LLC
*/

/* ====== Supress BOM Script Errors ====== */

function errorsuppressor(){

	return true;

}

if(location.href.indexOf("localhost") == -1){

	window.onerror = errorsuppressor;

}

/* ====== Multiple Onload Utility ====== */

function addLoadEvent(func) {

	var oldonload = window.onload;

	if (typeof window.onload != 'function') {

		window.onload = func;

	} else {

		window.onload = function() {
		oldonload();
		func();

		}

	}

}

/* ====== Insert-after Function ====== */

function insertAfter(newElement, targetElement) {

	var parent = targetElement.parentNode;

	if (parent.lastChild == targetElement) {

		parent.appendChild(newElement);

	} else {

		parent.insertBefore(newElement, targetElement.nextSibling);

	}

}

jQuery.noConflict()(function(){

	if (jQuery("#programs").length)

	jQuery("#programs").tabs(); // Tabs

	/* ====== Transcripts ====== */
	
	jQuery("a.transcript").click(function() { // Transcript popup

		var transcriptWindow = window.open(this.href,"win", 'toolbar=0,location=0,directories=0,status=0,menubar=1,scrollbars=yes,resizable=0,top=180,left=200,width=625,height=345');
		//transcriptWindow.focus();
		return false;

	});

	/* ====== Video ====== */
	
	jQuery("a.video").live("click", function() { // Transcript popup

		jQuery.dialog(jQuery(this).attr("href") + "&r=" + new Date().getTime() + " #video"); // Pull in video
		return false;

	});
	
	/* ====== New Window ====== */

	jQuery("a.external").click(function(){

		this.target = "_blank";

	});

});