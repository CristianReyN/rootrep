
function bt_rollover(ref, classRef) { eval(ref).className = classRef; }

function create_safebutton(text, href, onclick_evt, onmouseover_evt, onmouseout_evt, tabindex, title, _container) {
	
	var cssType = "";
	var textexpanded = text + "&nbsp;&nbsp;";
	var t = "";
	
	
	//detecting Opera
	if ((navigator.userAgent.indexOf("Opera")!=-1)||(navigator.userAgent.indexOf("Opera")!=-1)){cssType = "opera"; text = textexpanded;}
	
	//detecting Firefox
	else if (navigator.userAgent.indexOf("Firefox") > 0){cssType = "ffx"}

    //detecting Safari
	else if (navigator.userAgent.indexOf("Safari") > 0){cssType = "saf"}

	//detecting IE
	else if (navigator.userAgent.indexOf("MSIE") > 0 && navigator.userAgent.indexOf("Opera") < 0){cssType = "ie"}

	//detecting newer Netscapes
	else if (navigator.appName == "Netscape" && document.all && navigator.userAgent.indexOf("Opera") < 0){cssType = "ns6"}
	
	//else if (document.getElementById){cssType = "saf"; text = textexpanded;}
	
	//detecting older Netscapes
	else if (!document.all){cssType = "saf"}
	
	
	t = "<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" summary=\"\"><tr><td class=\"whitebg\"><div class=\"" + cssType + "-btn\"><a href=\"" + href + "\" class=\"" + cssType + "-btn\"" 
	+ "onFocus='bt_rollover(this, \"" + cssType + "-btn-over\")'"
	+ "onBlur='bt_rollover(this, \"" + cssType + "-btn\")'";
	  if (onclick_evt) { t = t + " onClick=\"" + onclick_evt + "\""; }
	  if (onmouseover_evt) { t = t + " onMouseOver=\"" + onmouseover_evt + "\""; }
	  if (onmouseout_evt) { t = t + " onMouseOut=\"" + onmouseout_evt + "\""; }
	  if (tabindex) { t = t + " tabindex=\"" + tabindex + "\""; }
	  if (title) { t = t + " title=\"" + title + "\""; }
	  t = t + ">" + text + "<\/a><\/div><\/td><\/tr><\/table>";
 	
	if ( _container && _container != '' )
	{
		if (jQuery) jQuery('#'+_container).html(t);
		else document.getElementById(_container).innerHTML = t;
	}
 	else document.write(t);
	
}
