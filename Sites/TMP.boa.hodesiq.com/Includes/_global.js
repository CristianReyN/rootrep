/* 
	Bank of America - Global Functions
	Author:  Michael "Spell" Spellacy, Lead User Interface Developer <michael.spellacy[at]tmp.com
*/

/* ====== Supress BOM Script Errors ====== */

function errorsuppressor(){

	return true;

}

if(location.href.indexOf("localhost") == -1){

	window.onerror = errorsuppressor;

}

jQuery.noConflict()(function(){

	if (jQuery("#programs").length)

		jQuery("#programs").tabs(); // Tabs

	/* ====== Transcripts ====== */
	
	jQuery("a.transcript").click(function() { // Transcript popup

		var transcriptWindow = window.open(this.href,"win", 'toolbar=0,location=0,directories=0,status=0,menubar=1,scrollbars=yes,resizable=1,top=180,left=200,width=625,height=345');
		return false;

	});
	
	/* ====== New Window ====== */

	jQuery("a.external").click(function(){

		this.target = "_blank";

	});

});

function getcss(intelementID) { // Alex, please leave this function here, where it belongs. Thanks! Spell

	switch (intelementID) {

		case '0':
		document.getElementById("video_select1").style.display = "block";
		document.getElementById("video_select2").style.display = "none";
		document.getElementById("video_select3").style.display = "none";
		document.getElementById("video_select4").style.display = "none";
		break;

		case '1':
		document.getElementById("video_select1").style.display = "none";
		document.getElementById("video_select2").style.display = "block";
		document.getElementById("video_select3").style.display = "none";
		document.getElementById("video_select4").style.display = "none";
		break;

		case '2':
		var str_option = document.getElementById("sel_videocategory").value;

		switch (str_option) {

			case '2':
			document.getElementById("video_select1").style.display = "none";
			document.getElementById("video_select2").style.display = "none";
			document.getElementById("video_select3").style.display = "none";
			document.getElementById("video_select4").style.display = "block";
			break;
		
			case '3':
			document.getElementById("video_select1").style.display = "block";
			document.getElementById("video_select2").style.display = "none";
			document.getElementById("video_select3").style.display = "none";
			document.getElementById("video_select4").style.display = "none";
			break;

			case '4':
			document.getElementById("video_select1").style.display = "none";
			document.getElementById("video_select2").style.display = "none";
			document.getElementById("video_select3").style.display = "block";
			document.getElementById("video_select4").style.display = "none";
			break;
		}
	}
}