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
 	
	var reqVer = parseFloat(reqMajorVer + "." + reqRevision);
	if(isIE && isWin && !isOpera){
		return JSGetSwfVerIE();
	}else{
		for (i=25;i>0;i--) {
			var versionStr = JSGetSwfVer(i);
			
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
var hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);

if(!window.MM_swapImage)
{
	document.write('<scr' + 'ipt language="javascript" src="../Includes/mm.js');
	document.write('"></scr' + 'ipt>');
}

if(!window.preloadCC)
{
	function preloadCC()
	{
MM_preloadImages('../Includes/pages/buttons/01btn-over.gif','../Includes/pages/buttons/02btn-over.gif','../Includes/pages/buttons/03btn-over.gif','../Includes/pages/buttons/05btn-over.gif','../Includes/pages/buttons/06btn-over.gif');
		if(window.preloadThumb) window.preloadThumb();
	}
}

var reqFlashPlayer = '<a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';"><img src="../Includes/pages/college/thumbnails/';
var reqFlashPlayer2 = '" width="259" height="166" alt="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." border="0" \/><\/a>';

function getHTMLControl(objname,w,h,play,pause,stop,ada,mute,ccoc)
{
	w = (w == 0?"100%":w);
	var html_control = '<table border="0" cellspacing="0" cellpadding="0" bgcolor="#d4001a" width="'+w+'">';
	html_control += '<tr>';
	if(play || pause || stop)
	{
		html_control += '<td nowrap>';
		html_control += '<div align="left" style="padding: 2px 5px;">';
		if(play)
		{
			html_control += '<a href="Javascript: vo_id();" onClick="doPassVar(\''+objname+'\',\'play\')" title="Play Video" onMouseOut="MM_swapImgRestore();" onMouseOver="MM_swapImage(\'btn01\',\'\',\'../Includes/pages/buttons/01btn-over.gif\',1);" onBlur="MM_swapImgRestore();" onFocus="MM_swapImage(\'btn01\',\'\',\'../Includes/pages/buttons/01btn-over.gif\',1);"><img name="btn01" src="../Includes/pages/buttons/01btn.gif" alt="Play Video" width="14" height="18" border="0"/><\/a>';
		}
		if(pause)
		{
			html_control += '<a href="Javascript: vo_id();" onClick="doPassVar(\''+objname+'\',\'pause\')" title="Pause Video" onMouseOut="MM_swapImgRestore();" onMouseOver="MM_swapImage(\'btn02\',\'\',\'../Includes/pages/buttons/02btn-over.gif\',1);" onBlur="MM_swapImgRestore();" onFocus="MM_swapImage(\'btn02\',\'\',\'../Includes/pages/buttons/02btn-over.gif\',1);"><img name="btn02" src="../Includes/pages/buttons/02btn.gif" alt="Pause Video" width="13" height="18" border="0"/><\/a>';
		}
		if(stop)
		{
			html_control += '<a href="Javascript: vo_id();" onClick="doPassVar(\''+objname+'\',\'stop\')" title="Stop Video" onMouseOut="MM_swapImgRestore();" onMouseOver="MM_swapImage(\'btn03\',\'\',\'../Includes/pages/buttons/03btn-over.gif\',1);" onBlur="MM_swapImgRestore();" onFocus="MM_swapImage(\'btn03\',\'\',\'../Includes/pages/buttons/03btn-over.gif\',1);"><img name="btn03" src="../Includes/pages/buttons/03btn.gif" alt="Stop Video" width="17" height="18" border="0"/><\/a>';
		}
		html_control += '<\/div>';
		html_control += '</td>';
	}
	html_control += '<td nowrap align="center" height="'+h+'" width="100%">';
	if(ada)
	{
		html_control += '<a href="<href><anchor>" title="<title>" class="btn1" onfocus="this.className=\'btn1-over\';" onblur="this.className=\'btn1\';"><text><\/a>';
	}
	else
	{
		html_control += '<img style="margin: 0px;" src="../images/clear.gif" width="100%" height="'+h+'" alt="" border="0" \/>';
	}
	html_control += '</td>';
	if(mute || ccoc)
	{
		html_control += '<td nowrap>';
		html_control += '<div align="right" style="padding: 2px 5px;">';
		if(mute)
		{
			html_control += '<a href="Javascript: vo_id();" onClick="doPassVar(\''+objname+'\',\'mute\')" title="Mute Video" onMouseOut="MM_swapImgRestore();" onMouseOver="MM_swapImage(\'btn05\',\'\',\'../Includes/pages/buttons/05btn-over.gif\',1);" onBlur="MM_swapImgRestore();" onFocus="MM_swapImage(\'btn05\',\'\',\'../Includes/pages/buttons/05btn-over.gif\',1);"><img name="btn05" src="../Includes/pages/buttons/05btn.gif" alt="Mute Video" width="16" height="18" border="0"/><\/a>';
		}
		if(ccoc)
		{
			html_control += '<a href="Javascript: vo_id();" onClick="doPassVar(\''+objname+'\',\'ccoc\')" title="Close Captions" onMouseOut="MM_swapImgRestore();" onMouseOver="MM_swapImage(\'btn06\',\'\',\'../Includes/pages/buttons/06btn-over.gif\',1);" onBlur="MM_swapImgRestore();" onFocus="MM_swapImage(\'btn06\',\'\',\'../Includes/pages/buttons/06btn-over.gif\',1);"><img name="btn06" src="../Includes/pages/buttons/06btn.gif" alt="Close Captions" width="21" height="18" border="0"/><\/a>';
		}
		html_control += '<\/div>';
		html_control += '</td>';
	}
	html_control += '</tr>';
	html_control += '</table>';
	return html_control;
}





function doPassVar(objname,args)
{
	var vo = eval("window.document."+objname);
	if(vo)
	{
		switch(objname)
		{
			case 'javaflash':
				var sendText = args;
				vo.SetVariable("myVar", sendText);
				switch(sendText)
				{
					case 'play':
						createStopAudio('javaflash');
					break;
					case 'pause':
						removeStopAudio();
					break;
					case 'stop':
						removeStopAudio();
					break;
					case 'mute':
						createStopAudio('javaflash');
					break;
					case 'ccoc':
						createStopAudio('javaflash');
					break;
				}
			break;
			default:
			break;
		}
	}
}

function createStopAudio(objname)
{
	removeStopAudio();
	if(document.body.firstChild)
	{
		var new_a = document.getElementById("stopaudio");
		if(!new_a) new_a = document.createElement("a");
		new_a.href = "JavaScript: if(window.doPassVar) doPassVar('"+objname+"','mute');";
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
		document.getElementById("stopaudio").innerHTML = '<a href="JavaScript: if(window.doPassVar) doPassVar(\''+objname+'\',\'mute\');" class="hlink"'+' title="'+'Stop Audio'+'">'+'Stop Audio'+'<\/a>';
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

var mv, vthumb, vthumb_off;
function playVideo(video,play,pause,stop,ada,mute,ccoc)
{
	if(!mv) mv=$x("mainvideo");
	if(!vthumb) vthumb=$x("videothumb");
	if(!vthumb_off) vthumb_off=$x("videothumb_off");
	if(video && mv && vthumb && vthumb_off)
	{
		mv.innerHTML = getVideo(video,259,166,"javaflash","") + strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,play,pause,stop,ada,mute,ccoc),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",video.ada_anchor);
		mv.style.display = "inline";
		vthumb.style.display = "none";
		vthumb_off.style.display = "none";
		createStopAudio('javaflash');
	}
}

function pauseVideo(objname)
{
	if(!mv) mv=$x("mainvideo");
	var vo = eval("window.document."+objname);
	if(vo && (objname != "javaflash" || mv.style.display == "inline"))
	{
		doPassVar(objname,"pause");
		videoplaying = null;
	}
}

function fpvideo(swf_url,w,h)
{
	this.swf_url = swf_url;
	this.w = w;
	this.h = h;
}

function fvideo(swf_url,flv_url,flashplayer,ada_anchor,thumb_on,thumb_off,main_video,cc_video)
{
	this.swf_url = swf_url;
	this.flv_url = flv_url;
	this.flashplayer = flashplayer;
	this.ada_anchor = ada_anchor;
	this.thumb_on = thumb_on;
	this.thumb_off = thumb_off;
	this.main_video = main_video;
	this.cc_video = cc_video;
}

function ccfvideo(swf_url,flv_url,flashplayer)
{
	this.swf_url = swf_url;
	this.flv_url = flv_url;
	this.flashplayer = flashplayer;
}

var flashplayer = new fpvideo("../Includes/pages/rjp/flashplayer_xml20080308.swf",259,166);

var andrey_video;
andrey_video = new fvideo(
					flashplayer.swf_url,
					"../Includes/pages/cw/CW.xml",
					flashplayer,
					"#vt",
					"../Includes/pages/cw/thumbnails/andrey_on.jpg",
					"../Includes/pages/cw/thumbnails/andrey_off.jpg",
					null,
					null
					);


function getVideo(video,w,h,na_me,alt)
{
	var vi_deo = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+w+'" height="'+h+'" id="'+na_me+'" align="middle">';
	vi_deo += '<param name="wmode" value="transparent">';
	vi_deo += '<param name="allowScriptAccess" value="sameDomain" />';
	vi_deo += '<param name="movie" value="'+video.swf_url+'"  />';
	if(video.flv_url)
		vi_deo += '<param name="FlashVars" value="var1='+video.flv_url+(video.cc_video?'&var2='+video.cc_video.flv_url:'')+'" />';
	vi_deo += '<param name="quality" value="high" />';
	//vi_deo += '<param name="loop" value="false" />';
	vi_deo += '<param name="bgcolor" value="#ffffff" />';
	vi_deo += '<embed src="'+video.swf_url+'" quality="high" bgcolor="#ffffff" width="'+w+'" height="'+h+'" alt="'+alt+'" name="'+na_me+'" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent"'/*+'swLiveConnect="true" loop="false"'*/+(video.flv_url?(' FlashVars="var1='+video.flv_url+(video.cc_video?'&var2='+video.cc_video.flv_url:'')+'"'):'')+'><\/embed>';
	vi_deo += '<\/object>';
	return vi_deo;
}





function findChild(s,tag,cls)
{if(s){
	var childs=document.getElementById&&!document.all?s.childNodes:s.all;
	if(childs.length>0){
		for (var i=0; i<childs.length; i++)
		{	var ch;
			if(childs[i].tagName && childs[i].tagName.toLowerCase() == tag && childs[i].className == cls) ch = childs[i];
			else ch = findChild(childs[i],tag,cls);
			if(ch) return ch;
		}
	return false;
}return false;}return false;}

function $x(pNd)
{	try
	{	var node;
		switch(typeof (pNd)){
			case 'string':node = document.getElementById(pNd); break;
			case 'object':node = pNd; break;
			default:node = false; break;}
		return node;
	} catch(e){return false;}
}

function vo_id(){}