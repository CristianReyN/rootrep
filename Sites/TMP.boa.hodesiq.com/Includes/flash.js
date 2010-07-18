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


if ( !window.createStopAudio )
{
	function createStopAudio()
	{
		removeStopAudio();
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
			document.getElementById("stopaudio").innerHTML = '<a href="JavaScript: if(window.doPassVar) doPassVar(\'mute\');" class="hlink"'+' title="'+'Stop Audio'+'">'+'Stop Audio'+'<\/a>';
			document.getElementById("stopaudio").style.display = "inline";
		}
	}
}
if ( !window.removeStopAudio )
{
	function removeStopAudio(i_d)
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
}

function getReqFlashPlayer ( requiredMajorVersion )
{
	return '<div style="width : 300px;"><a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." class="p">This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version.<\/a><\/div>';
}
function getReqFlashPlayerImg ( img_src, requiredMajorVersion )
{
	return '<a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version."><img src="'+img_src+'" width="578" height="166" alt="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." border="0" style="margin: 0px;" /><\/a><br>'+getReqFlashPlayer(requiredMajorVersion)+'<br><br>';
}

var flash = '<a class="auraltext" href="JavaScript: ow();" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Access Flash">Access Flash<\/a><a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Skip Flash content">Skip Flash content<\/a>';
	flash += '<div style="position: relative; top: 0; left: 0; ">';
	flash += '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" id="boa_cws_intro" width="578" height="300" align="middle" tabindex="0" title="Flash Animation" style="margin: 0px;">';
	flash += '<param name="allowScriptAccess" value="always" />';
	flash += '<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_cws_intro.swf" />';
	flash += '<param name="quality" value="high" />';
	flash += '<param name="wmode" value="transparent" />';
	flash += '<param name="bgcolor" value="#ffffff" />';
	flash += '<embed src="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_cws_intro.swf" wmode="transparent" quality="high" bgcolor="#ffffff" width="578" height="300" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" style="margin: 0px;" swLiveConnect=true id="boa_cws_intro" name="boa_cws_intro" /><\/embed>';
	flash += '<\/object>';
	flash += '<\/div>';
	
function ow() {
	/*var popWin = openWindow("http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/boa_career_cc_ada.html", "videoPop", 590, 240, 0,0,1,1,1,0,0,0,true,0);
	popWin.focus();*/
}

function shuffle_array(arr){ var i = arr.length;if (i==0) return false; while(--i){ var j=Math.floor(Math.random()*(i+1)); var ei=arr[i]; var ej=arr[j]; arr[i]=ej; arr[j]=ei;}}

var imgs = new Array ("../images/overview/costarica.gif", "../images/overview/emea.gif", "../images/overview/usa.gif", "../images/overview/canada.gif", "../images/overview/apac.gif" );
var current_img, img_timeout;
var rotated = 0;
function rotate_img(args)
{
	if (args=="start")
	{
		img_timeout = setTimeout("set_img()",img_timeout?5000:0);
		removeStopAudio();
	}
	else
	{
		clearTimeout(img_timeout);
		img_timeout = null;
		$("idvi").style.display = "none";
		$("foot").style.paddingTop = "12px";
		createStopAudio();
	}
}
function set_img()
{
	if ( !current_img || current_img > imgs.length - 1 ) current_img = 0;
	$("idvi").src = imgs[current_img];
	$("idvi").style.display = "block";
	$("foot").style.paddingTop = "125px";
	current_img++;
	rotated++;
	delay = 0;
	if( rotated <= 20 ) rotate_img("start");
}

var isInternetExplorer = navigator.appName.indexOf("Microsoft") != -1;
// Handle all the FSCommand messages in a Flash movie.
function boa_cws_intro_DoFSCommand(command, args)
{
	var boa_cws_introObj = isInternetExplorer ? document.all.boa_cws_intro : document.boa_cws_intro;
	if (command=="rotate_img") rotate_img(args);
}

function vb_script()
{
	document.write('<SCR' + 'IPT LANGUAGE=VBScript\> \n');
	document.write('On Error Resume Next\n');
	document.write('Sub boa_cws_intro_FSCommand(ByVal command, ByVal args)\n');
	document.write('	Call boa_cws_intro_DoFSCommand(command, args)\n');
	document.write('End Sub\n');
	document.write('<\/SCR' + 'IPT\> \n');
}

function doPassVar(args)
{
	var sendText = args;
	if( window.document.boa_cws_intro ) window.document.boa_cws_intro.SetVariable("myVar", sendText);
}

function init_img()
{
	createStopAudio();
	shuffle_array(imgs);
	if (navigator.appName && navigator.appName.indexOf("Microsoft") != -1 && navigator.userAgent.indexOf("Windows") != -1 && navigator.userAgent.indexOf("Windows 3.1") == -1) vb_script();
	if(!window.MM_preloadImages)
	{
		document.write('<scr' + 'ipt language="javascript" src="../Includes/mm.js');
		document.write('"></scr' + 'ipt>');
	}
	if(!window.preloadCC)
	{
		window.preloadCC = function(){MM_preloadImages("../images/overview/costarica.gif","../images/overview/emea.gif","../images/overview/usa.gif","../images/overview/canada.gif","../images/overview/apac.gif");}
	}
}