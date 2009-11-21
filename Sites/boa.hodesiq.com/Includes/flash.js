var isIE = (navigator.appVersion.indexOf("MSIE") != -1) ? true : false;
var isWin = (navigator.appVersion.toLowerCase().indexOf("win") != -1) ? true : false;
var isMac = (navigator.appVersion.toLowerCase().indexOf("mac") != -1) ? true : false; 
var isOpera = (navigator.userAgent.indexOf("Opera") != -1) ? true : false;

// swf params
var jsVersion = 1.0;
var requiredMajorVersion = 7;
var requiredMinorVersion = 0;
var requiredRevision = 0;
var requiredVersion = 7; // correct version of flash player required
var maxVersion = 9;
var actualVersion = 1;
var flash2Installed = false;
var flash3Installed = false;
var flash4Installed = false;
var flash5Installed = false;
var flash6Installed = false;
var flash7Installed = false;
var flash8Installed = false;
var flash9Installed = false;

// write vb swf detection

document.write('<SCR' + 'IPT LANGUAGE=VBScript\> \n');
document.write('on error resume next \n');
for (var i = 2; i <= maxVersion; i++) {
	document.write('flash' + i + 'Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash." + CStr(' + i + ')))) \n');
}
document.write('<\/SCR' + 'IPT\> \n');


function JSGetSwfVerIE() {
	

	if (navigator.plugins != null && navigator.plugins.length > 0) {
		if (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]) {
			var isVersion2 = navigator.plugins["Shockwave Flash 2.0"] ? " 2.0" : "";
			var flashDescription = navigator.plugins["Shockwave Flash" + isVersion2].description;
			var flashVersion = parseInt(flashDescription.substring(16));
			flash2Installed = flashVersion == 2;
			flash3Installed = flashVersion == 3;
			flash4Installed = flashVersion == 4;
			flash5Installed = flashVersion == 5;
			flash6Installed = flashVersion == 6;
			flash7Installed = flashVersion == 7;
			flash8Installed = flashVersion == 8;
			flash9Installed = flashVersion >= 9;
		}
	}
	
	for (var i = 2; i <= maxVersion; i++) {
		if (eval("flash" + i + "Installed") == true) actualVersion = i;
	}
	if(navigator.userAgent.indexOf("WebTV") != -1) actualVersion = 4;
	if (actualVersion >= requiredVersion) {
		// flash player is present and version is OK
		return true;
	}else{
		return false;
	}
}	

function JSGetSwfVer(i){
	if (navigator.plugins != null && navigator.plugins.length > 0) {
		if (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]) {
			var swVer2 = navigator.plugins["Shockwave Flash 2.0"] ? " 2.0" : "";
			var flashDescription = navigator.plugins["Shockwave Flash" + swVer2].description;
			descArray = flashDescription.split(" ");
			tempArrayMajor = descArray[2].split(".");
			versionMajor = tempArrayMajor[0];
			versionMinor = tempArrayMajor[1];
			if ( descArray[3] != "" ) {
				tempArrayMinor = descArray[3].split("r");
			} else {
				tempArrayMinor = descArray[4].split("r");
			}
			versionRevision = tempArrayMinor[1] > 0 ? tempArrayMinor[1] : 0;
			flashVer = versionMajor + "." + versionMinor + "." + versionRevision;
		} else {
			flashVer = -1;
		}
	}
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.6") != -1) flashVer = 4;
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.5") != -1) flashVer = 3;
	else if (navigator.userAgent.toLowerCase().indexOf("webtv") != -1) flashVer = 2;
	else {
		flashVer = -1;
	}
	
	return flashVer;
} 

function DetectFlashVer(reqMajorVer, reqMinorVer, reqRevision) {
 	
	reqVer = parseFloat(reqMajorVer + "." + reqRevision);
	if(isIE && isWin && !isOpera){
		return JSGetSwfVerIE();
	}else{
		for (i=25;i>0;i--) {
			versionStr = JSGetSwfVer(i);
			
			if (versionStr == -1) {
				return false;
			} else if (versionStr != 0) {
				if(isIE && isWin && !isOpera) {
					tempArray = versionStr.split(" ");
					tempString = tempArray[1];
					versionArray = tempString .split(",");
				} else {
					versionArray = versionStr.split(".");
				}
				versionMajor = versionArray[0]; 
				versionMinor = versionArray[1];
				versionRevision = versionArray[2];
				versionString = versionMajor + "." + versionRevision;
				versionNum = parseFloat(versionString);
				
				if ( (versionMajor > reqMajorVer) && (versionNum >= reqVer) ) {
					return true;
				} else {
					return ((versionNum >= reqVer && versionMinor >= reqMinorVer) ? true : false );
				} 
			}
		}		
	}
}

var hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);

var hiddenFlash = '<a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\'); this.focus();" onblur="hover(this,\'auraltext\')">Skip Flash content<\/a><br>';
	hiddenFlash += '<object tabindex="0" onmousedown="if(document.getElementById(\'skipflash2\')) document.getElementById(\'skipflash2\').focus();" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="310" height="390" title="virtualhost" id="ShockwaveFlash1">';
	hiddenFlash += '<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/virtualhost.swf" />';
	hiddenFlash += '<param name="quality" value="high" />';
	hiddenFlash += '<param value="transparent" name="wmode" />';
	hiddenFlash += '<param name="allowScriptAccess" value="always" />';
	hiddenFlash += '<embed src="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/virtualhost.swf" wmode="transparent" allowScriptAccess="always" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="310" height="390"><\/embed>';
	hiddenFlash += '<\/object>';

var bc_ns = '<a class="auraltext" href="JavaScript: ow(\'bc_ns\');" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Click to access Flash">Click to access Flash<\/a><a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Skip Flash content">Skip Flash content<\/a>';
	bc_ns += '<div style="position: relative; top: 0; left: 0; ">';
	bc_ns += '<object name="wabo" id="wabo" tabindex="0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="578" height="166" align="middle" title="Flash Animation" style="margin: 0px;">';
	bc_ns += '<param name="allowScriptAccess" value="always" />';
	bc_ns += '<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_OPP_ns.swf" />';
	bc_ns += '<param name="quality" value="high" />';
	bc_ns += '<param name="wmode" value="transparent" />';
	bc_ns += '<param name="bgcolor" value="#ffffff" />';
	bc_ns += '<embed name="wabe" id="wabe" src="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_OPP_ns.swf" wmode="transparent" quality="high" bgcolor="#ffffff" width="578" height="166" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" style="margin: 0px;" /><\/embed>';
	bc_ns += '<\/object>';
	bc_ns += '<\/div>';

var bc_cc = '<a class="auraltext" href="JavaScript: ow(\'bc_cc\');" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Click to access Flash">Click to access Flash<\/a><a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Skip Flash content">Skip Flash content<\/a>';
	bc_cc += '<div style="position: relative; top: 0; left: 0; ">';
	bc_cc += '<object name="wabo" id="wabo" tabindex="0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="578" height="166" align="middle" title="Flash Animation" style="margin: 0px;">';
	bc_cc += '<param name="allowScriptAccess" value="always" />';
	bc_cc += '<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_OPP_cc.swf" />';
	bc_cc += '<param name="quality" value="high" />';
	bc_cc += '<param name="wmode" value="transparent" />';
	bc_cc += '<param name="bgcolor" value="#ffffff" />';
	bc_cc += '<embed name="wabe" id="wabe" src="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_OPP_cc.swf" wmode="transparent" quality="high" bgcolor="#ffffff" width="578" height="166" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" style="margin: 0px;" /><\/embed>';
	bc_cc += '<\/object>';
	bc_cc += '<\/div>';
	
function ow(fl) { 
	var popWin = openWindow((fl=="bc_ns"?"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_career_cc_ada.html":"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_career_cc_ada.html"), "videoPop", 590, 240, 0,0,1,1,1,0,0,0,true,0);
	popWin.focus();
}
function openWindow(pageToLoad,winName,width,height,lo,me,re,sc,st,ti,to,ho,center,fs) { xposition=0; yposition=0; if ((parseInt(navigator.appVersion) >= 4 ) && (center)){ xposition = (screen.width - width) / 2; yposition = (screen.height - height) / 2; } args = "width=" + width + "," + "height=" + height + "," + "location="+lo+"," + "menubar="+me+"," + "resizable="+re+"," + "scrollbars="+sc+"," + "status="+st+"," + "titlebar="+ti+"," + "toolbar="+to+"," + "hotkeys="+ho+"," + "screenx=" + xposition + "," + "screeny=" + yposition + "," + "left=" + xposition + "," + "top=" + yposition + "," + "fullscreen=" + fs; return window.open( pageToLoad,winName,args);}