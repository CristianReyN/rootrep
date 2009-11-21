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

requiredMajorVersion = 8;
requiredVersion = 8;
hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);

var mutted = false;
function doPassVar(args){
	var sendText = args;
	window.document.javaflash.SetVariable("myVar", sendText);
	
	switch(sendText)
	{
		case 'play':
			if(!mutted) createStopAudio();
		break;
		case 'pause':
		break;
		case 'stop':
			removeStopAudio();
		break;
		case 'mute':
			if(mutted) {mutted = false;}
			else {mutted = true;}
			createStopAudio();
		break;
		case 'ccoc':
			createStopAudio();
		break;
	}
}

function createStopAudio()
{
	if(document.body.firstChild)
	{
		var new_a = document.getElementById("stopaudio");
		if(!new_a) new_a = document.createElement("a");
		new_a.href = "JavaScript: if(window.doPassVar) doPassVar('mute');";
		new_a.innerHTML = "Stop Audio";
		new_a.title = "Stop Audio";
		new_a.id = "stopaudio";
		new_a.className = "hlink";
		if(!document.getElementById("stopaudio"))
			document.body.insertBefore(new_a,document.body.firstChild);
	}
	else if (document.all)
	{
		if(!document.getElementById("stopaudio"))
			document.body.insertAdjacentHTML("afterBegin",'<div id="stopaudio"></div>');
		document.getElementById("stopaudio").innerHTML = '<a href="JavaScript: if(window.doPassVar) doPassVar(\'mute\');" class="hlink"'+' title="'+'Stop Audio'+'">'+'Stop Audio'+'</a>';
		document.getElementById("stopaudio").style.display = "inline";
	}
	
}

function removeStopAudio()
{
	if(document.body.firstChild && document.body.firstChild.id == "stopaudio")
	{
		document.body.removeChild(document.body.firstChild);
	}
	else if (document.all)
	{
		if(document.getElementById("stopaudio"))
		{
			document.getElementById("stopaudio").innerHTML = '';
			document.getElementById("stopaudio").style.display = "none";
		}
	}
}

function strReplace(s,p,r){var pos=s.indexOf(p);var len=p.length;while(pos != -1){s1=s.substring(0,pos);s2=s.substring(pos+len,s.length);s=s1+r+s2;pos=s.indexOf(p);}return s;}

var reqFlashPlayer = '<a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';"><img src="../Includes/pages/college/thumbnails/';
var reqFlashPlayer2 = '" width="205" height="131" alt="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." border="0" \/><\/a>';

var html_control = '<table border="0" cellspacing="0" cellpadding="0" bgcolor="#e7313c" width="100%">';
html_control += '<tr>';
html_control += '<td nowrap>';
html_control += '<div align="left">';
html_control += '<a href="#" onClick="doPassVar(\'play\')" title="Play Video"><img src="../Includes/pages/buttons/01btn.gif" alt="Play Video" width="19" height="20" border="0"/></a>';
html_control += '<a href="#" onClick="doPassVar(\'pause\')" title="Pause Video"><img src="../Includes/pages/buttons/02btn.gif" alt="Pause Video" width="11" height="20" border="0"/></a>';
html_control += '<a href="#" onClick="doPassVar(\'stop\')" title="Stop Video"><img src="../Includes/pages/buttons/03btn.gif" alt="Stop Video" width="16" height="20" border="0"/></a>';
//html_control += '<a href="#" onClick="doPassVar(\'skip\')"><img src="../Includes/pages/buttons/04btn.gif" alt="Skip" width="16" height="20" border="0"/></a>';
html_control += '</div>';
html_control += '</td>';
html_control += '<td nowrap align="center" width="100%">';
html_control += '<a href="<href>#vt" title="<title>" class="btn1" onfocus="this.className=\'btn1-over\';" onblur="this.className=\'btn1\';"><text></a>';
html_control += '</td>';
html_control += '<td nowrap>';
html_control += '<div align="right">';
html_control += '<a href="#" onClick="doPassVar(\'mute\')" title="Mute Video"><img src="../Includes/pages/buttons/05btn.gif" alt="Mute Video" width="15" height="20" border="0"/></a>';
html_control += '<a href="#" onClick="doPassVar(\'ccoc\')" title="CC/OC"><img src="../Includes/pages/buttons/06btn.gif" alt="CC/OC" width="16" height="20" border="0"/></a>';
html_control += '</div>';
html_control += '</td>';
html_control += '</tr>';
html_control += '</table>';

var Guan_video = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">';
	Guan_video += '<param name="wmode" value="transparent">';
	Guan_video += '<param name="allowScriptAccess" value="always" />';
	Guan_video += '<param name="movie" value="../Includes/pages/college/Guan.swf"  />';
	Guan_video += '<param name="quality" value="high" />';
	Guan_video += '<param name="bgcolor" value="#ffffff" />';
	Guan_video += '<embed src="../Includes/pages/college/Guan.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"><\/embed>';
	Guan_video += '<\/object>';

var Nathan_video = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">';
	Nathan_video += '<param name="wmode" value="transparent">';
	Nathan_video += '<param name="allowScriptAccess" value="always" />';
	Nathan_video += '<param name="movie" value="../Includes/pages/college/Nathan.swf"  />';
	Nathan_video += '<param name="quality" value="high" />';
	Nathan_video += '<param name="bgcolor" value="#ffffff" />';
	Nathan_video += '<embed src="../Includes/pages/college/Nathan.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"><\/embed>';
	Nathan_video += '<\/object>';

var Placencia_video = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">';
	Placencia_video += '<param name="wmode" value="transparent">';
	Placencia_video += '<param name="allowScriptAccess" value="always" />';
	Placencia_video += '<param name="movie" value="../Includes/pages/associate/Placencia.swf"  />';
	Placencia_video += '<param name="quality" value="high" />';
	Placencia_video += '<param name="bgcolor" value="#ffffff" />';
	Placencia_video += '<embed src="../Includes/pages/associate/Placencia.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"><\/embed>';
	Placencia_video += '<\/object>';

var Tony_video = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">';
	Tony_video += '<param name="wmode" value="transparent">';
	Tony_video += '<param name="allowScriptAccess" value="always" />';
	Tony_video += '<param name="movie" value="../Includes/pages/college/Tony.swf"  />';
	Tony_video += '<param name="quality" value="high" />';
	Tony_video += '<param name="bgcolor" value="#ffffff" />';
	Tony_video += '<embed src="../Includes/pages/college/Tony.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"><\/embed>';
	Tony_video += '<\/object>';

var Erin_video = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">';
	Erin_video += '<param name="wmode" value="transparent">';
	Erin_video += '<param name="allowScriptAccess" value="always" />';
	Erin_video += '<param name="movie" value="../Includes/pages/college/Erin.swf"  />';
	Erin_video += '<param name="quality" value="high" />';
	Erin_video += '<param name="bgcolor" value="#ffffff" />';
	Erin_video += '<embed src="../Includes/pages/college/Erin.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"><\/embed>';
	Erin_video += '<\/object>';

var Chris_video = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">';
	Chris_video += '<param name="wmode" value="transparent">';
	Chris_video += '<param name="allowScriptAccess" value="always" />';
	Chris_video += '<param name="movie" value="../Includes/pages/college/Chris.swf"  />';
	Chris_video += '<param name="quality" value="high" />';
	Chris_video += '<param name="bgcolor" value="#ffffff" />';
	Chris_video += '<embed src="../Includes/pages/college/Chris.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"><\/embed>';
	Chris_video += '<\/object>';

var Anne_video = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">';
	Anne_video += '<param name="wmode" value="transparent">';
	Anne_video += '<param name="allowScriptAccess" value="always" />';
	Anne_video += '<param name="movie" value="../Includes/pages/college/Anne.swf"  />';
	Anne_video += '<param name="quality" value="high" />';
	Anne_video += '<param name="bgcolor" value="#ffffff" />';
	Anne_video += '<embed src="../Includes/pages/college/Anne.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"><\/embed>';
	Anne_video += '<\/object>';