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
	function preloadCC(){MM_preloadImages('../Includes/pages/buttons/01btn-over.gif','../Includes/pages/buttons/02btn-over.gif','../Includes/pages/buttons/03btn-over.gif','../Includes/pages/buttons/05btn-over.gif','../Includes/pages/buttons/06btn-over.gif');}
}

function strReplace(s,p,r){var pos=s.indexOf(p);var len=p.length;while(pos != -1){s1=s.substring(0,pos);s2=s.substring(pos+len,s.length);s=s1+r+s2;pos=s.indexOf(p);}return s;}

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





var videoplaying, action_script = false;
function doPassVar(objname,args)
{
	var vo = eval("window.document."+objname);
	if(vo)
	{
		switch(objname)
		{
			case 'ansvideo':
				//enableVideo();
				//stopResponce();
				var sendText = args;
				vo.SetVariable("myVar", sendText);
				switch(sendText)
				{
					case 'play':
						//stopVideo("javaflash");
						pauseVideo("javaflash");
						createStopAudio('ansvideo');
						videoplaying = 'ansvideo';
					break;
					case 'pause':
						if(!videoplaying || videoplaying=='ansvideo') removeStopAudio();
					break;
					case 'stop':
						if(!videoplaying || videoplaying=='ansvideo') removeStopAudio();
					break;
					case 'mute':
						if(!videoplaying || videoplaying=='ansvideo') createStopAudio('ansvideo');
					break;
					case 'ccoc':
						if(!videoplaying || videoplaying=='ansvideo') createStopAudio('ansvideo');
					break;
				}
			break;
			case 'javaflash':
				var sendText = args;
				vo.SetVariable("myVar", sendText);
				switch(sendText)
				{
					case 'play':
						//stopVideo("ansvideo");
						pauseVideo("ansvideo");
						createStopAudio('javaflash');
						videoplaying = 'javaflash';
					break;
					case 'pause':
						if(!videoplaying || videoplaying=='javaflash') removeStopAudio();
					break;
					case 'stop':
						if(!videoplaying || videoplaying=='javaflash') removeStopAudio();
					break;
					case 'mute':
						if(!videoplaying || videoplaying=='javaflash') createStopAudio('javaflash');
					break;
					case 'ccoc':
						if(!videoplaying || videoplaying=='javaflash') createStopAudio('javaflash');
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
	videoplaying = null;
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
		pauseVideo("ansvideo");//stopVideo("ansvideo");
		if(action_script) createStopAudio('javaflash');
		videoplaying = 'javaflash';
	}
}
function disableVideo()
{
	if(!mv) mv=$x("mainvideo");
	if(!vthumb) vthumb=$x("videothumb");
	if(!vthumb_off) vthumb_off=$x("videothumb_off");
	if(mv && vthumb && vthumb_off)
	{
		mv.innerHTML = "";
		mv.style.display = "none";
		vthumb.style.display = "none";
		vthumb_off.style.display = "inline";
		if(action_script) removeStopAudio();
		videoplaying = null;
	}
}
function enableVideo()
{
	if(!mv) mv=$x("mainvideo");
	if(!vthumb) vthumb=$x("videothumb");
	if(!vthumb_off) vthumb_off=$x("videothumb_off");
	if(mv && vthumb && vthumb_off)
	{
		mv.innerHTML = "";
		mv.style.display = "none";
		vthumb.style.display = "inline";
		vthumb_off.style.display = "none";
		videoplaying = 'javaflash';
	}
}

function stopVideo(objname)
{
	if(!mv) mv=$x("mainvideo");
	var vo = eval("window.document."+objname);
	if(vo && (objname != "javaflash" || mv.style.display == "inline"))
	{
		doPassVar(objname,"stop");
		videoplaying = null;
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
var flashplayer = new fpvideo("../Includes/flashplayer.swf",259,166);
var flashplayer2 = new fpvideo("../Includes/flashplayer.swf",260,167);
var flashplayer3 = new fpvideo("../Includes/flashplayer.swf",255,167);

function fpvideo(swf_url,w,h)
{
	this.swf_url = swf_url;
	this.w = w;
	this.h = h;
}

var craig_video, jeremy_video, michael_video, fairbrother_video, diaz_video, saulsberry_video, price_video, cambra_video, chen_video, shuwen_video;
craig_video = new fvideo(
					flashplayer.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/craig_test.flv",
					flashplayer,
					"#vt",
					"../Includes/pages/lob/thumbnails/craig_on.jpg",
					"../Includes/pages/lob/thumbnails/craig_off.jpg",
					null
					);
jeremy_video = new fvideo(
					flashplayer.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/jeremy_test.flv",
					flashplayer,
					"#vt",
					"../Includes/pages/lob/thumbnails/jeremy_on.jpg",
					"../Includes/pages/lob/thumbnails/jeremy_off.jpg",
					null
					);
michael_video = new fvideo(
					flashplayer.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/michael_test.flv",
					flashplayer,
					"#vt",
					"../Includes/pages/lob/thumbnails/michael_on.jpg",
					"../Includes/pages/lob/thumbnails/michael_off.jpg",
					null
					);
fairbrother_video = new fvideo(
					"../Includes/pages/associate/Fairbrother.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/lob/thumbnails/fairbrother_on.jpg",
					"../Includes/pages/lob/thumbnails/fairbrother_off.jpg",
					null
					);
diaz_video = new fvideo(
					"../Includes/pages/associate/Diaz.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/lob/thumbnails/diaz_on.jpg",
					"../Includes/pages/lob/thumbnails/diaz_off.jpg",
					null
					);
saulsberry_video = new fvideo(
					"../Includes/pages/associate/Saulsberry.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/lob/thumbnails/saulsberry_on.jpg",
					"../Includes/pages/lob/thumbnails/saulsberry_off.jpg",
					null
					);
price_video = new fvideo(
					"../Includes/pages/associate/Price.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/lob/thumbnails/price_on.jpg",
					"../Includes/pages/lob/thumbnails/price_off.jpg",
					null
					);
cambra_video = new fvideo(
					"../Includes/pages/associate/Cambra.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/lob/thumbnails/cambra_on.jpg",
					"../Includes/pages/lob/thumbnails/cambra_off.jpg",
					null
					);
chen_video = new fvideo(
					"../Includes/pages/associate/Chen.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/lob/thumbnails/chen_on.jpg",
					"../Includes/pages/lob/thumbnails/chen_off.jpg",
					null
					);
shuwen_video = new fvideo(
					flashplayer.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/Shu_Wen.flv",
					flashplayer,
					"#vt",
					"../Includes/pages/lob/thumbnails/shuwen_on.jpg",
					"../Includes/pages/lob/thumbnails/shuwen_off.jpg",
					null
					);

var alejandro_a1, alejandro_a2, alejandro_a3, alejandro_a4;
alejandro_a1 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/alejandro_quest_1.flv",
					flashplayer2,
					"#answ1",
					"../Includes/pages/lob/thumbnails/alejandro_on.jpg",
					"../Includes/pages/lob/thumbnails/alejandro_on.jpg",
					fairbrother_video
					);
alejandro_a2 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/alejandro_quest_2.flv",
					flashplayer2,
					"#answ2",
					"../Includes/pages/lob/thumbnails/alejandro_on.jpg",
					"../Includes/pages/lob/thumbnails/alejandro_on.jpg",
					fairbrother_video
					);
alejandro_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/alejandro_quest_3.flv",
					flashplayer2,
					"#answ3",
					"../Includes/pages/lob/thumbnails/alejandro_on.jpg",
					"../Includes/pages/lob/thumbnails/alejandro_on.jpg",
					fairbrother_video
					);
alejandro_a4 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/alejandro_quest_4.flv",
					flashplayer2,
					"#answ4",
					"../Includes/pages/lob/thumbnails/alejandro_on.jpg",
					"../Includes/pages/lob/thumbnails/alejandro_on.jpg",
					fairbrother_video
					);

var andy_a1, andy_a2, andy_a3;
andy_a1 = new fvideo(
					flashplayer3.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/BOA_ANDY_PART1.flv",
					flashplayer3,
					"#answ1",
					"../Includes/pages/lob/thumbnails/andy_on.jpg",
					"../Includes/pages/lob/thumbnails/andy_on.jpg",
					saulsberry_video
					);
andy_a2 = new fvideo(
					flashplayer3.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/BOA_ANDY_PART2.flv",
					flashplayer3,
					"#answ2",
					"../Includes/pages/lob/thumbnails/andy_on.jpg",
					"../Includes/pages/lob/thumbnails/andy_on.jpg",
					saulsberry_video
					);
andy_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/BOA_ANDY_PART3.flv",
					flashplayer2,
					"#answ3",
					"../Includes/pages/lob/thumbnails/andy_on.jpg",
					"../Includes/pages/lob/thumbnails/andy_on.jpg",
					saulsberry_video
					);

var charles_a1, charles_a2, charles_a3;
charles_a1 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/charles_quest_1.flv",
					flashplayer2,
					"#answ1",
					"../Includes/pages/lob/thumbnails/charles_on.jpg",
					"../Includes/pages/lob/thumbnails/charles_on.jpg",
					price_video
					);
charles_a2 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/charles_quest_2.flv",
					flashplayer2,
					"#answ2",
					"../Includes/pages/lob/thumbnails/charles_on.jpg",
					"../Includes/pages/lob/thumbnails/charles_on.jpg",
					price_video
					);
charles_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/charles_quest_3.flv",
					flashplayer2,
					"#answ3",
					"../Includes/pages/lob/thumbnails/charles_on.jpg",
					"../Includes/pages/lob/thumbnails/charles_on.jpg",
					price_video
					);

var kim_a1, kim_a2, kim_a3;
kim_a1 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/kim_quest_1.flv",
					flashplayer2,
					"#answ1",
					"../Includes/pages/lob/thumbnails/kim_on.jpg",
					"../Includes/pages/lob/thumbnails/kim_on.jpg",
					chen_video
					);
kim_a2 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/kim_quest_2.flv",
					flashplayer2,
					"#answ2",
					"../Includes/pages/lob/thumbnails/kim_on.jpg",
					"../Includes/pages/lob/thumbnails/kim_on.jpg",
					chen_video
					);
kim_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/kim_quest_3.flv",
					flashplayer2,
					"#answ3",
					"../Includes/pages/lob/thumbnails/kim_on.jpg",
					"../Includes/pages/lob/thumbnails/kim_on.jpg",
					chen_video
					);

var nancy_a1, nancy_a2, nancy_a3;
nancy_a1 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/nancy_quest_1.flv",
					flashplayer2,
					"#answ1",
					"../Includes/pages/lob/thumbnails/nancy_on.jpg",
					"../Includes/pages/lob/thumbnails/nancy_on.jpg",
					craig_video
					);
nancy_a2 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/nancy_quest_2.flv",
					flashplayer2,
					"#answ2",
					"../Includes/pages/lob/thumbnails/nancy_on.jpg",
					"../Includes/pages/lob/thumbnails/nancy_on.jpg",
					craig_video
					);
nancy_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/nancy_quest_3.flv",
					flashplayer2,
					"#answ3",
					"../Includes/pages/lob/thumbnails/nancy_on.jpg",
					"../Includes/pages/lob/thumbnails/nancy_on.jpg",
					craig_video
					);

var ryan_a2, ryan_a3, ryan_a4;
ryan_a2 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/ryan_quest_2.flv",
					flashplayer2,
					"#answ2",
					"../Includes/pages/lob/thumbnails/ryan_on.jpg",
					"../Includes/pages/lob/thumbnails/ryan_on.jpg",
					cambra_video
					);
ryan_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/ryan_quest_3.flv",
					flashplayer2,
					"#answ3",
					"../Includes/pages/lob/thumbnails/ryan_on.jpg",
					"../Includes/pages/lob/thumbnails/ryan_on.jpg",
					cambra_video
					);
ryan_a4 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/ryan_quest_4.flv",
					flashplayer2,
					"#answ4",
					"../Includes/pages/lob/thumbnails/ryan_on.jpg",
					"../Includes/pages/lob/thumbnails/ryan_on.jpg",
					cambra_video
					);

var sheila_a1, sheila_a2, sheila_a3;
sheila_a1 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/sheila_quest_1.flv",
					flashplayer2,
					"#answ1",
					"../Includes/pages/lob/thumbnails/sheila_on.jpg",
					"../Includes/pages/lob/thumbnails/sheila_on.jpg",
					shuwen_video
					);
sheila_a2 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/sheila_quest_2.flv",
					flashplayer2,
					"#answ2",
					"../Includes/pages/lob/thumbnails/sheila_on.jpg",
					"../Includes/pages/lob/thumbnails/sheila_on.jpg",
					shuwen_video
					);
sheila_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/sheila_quest_3.flv",
					flashplayer2,
					"#answ13",
					"../Includes/pages/lob/thumbnails/sheila_on.jpg",
					"../Includes/pages/lob/thumbnails/sheila_on.jpg",
					null
					);

var tammi_a1, tammi_a2, tammi_a3, tammi_a4;
tammi_a1 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/tammi_quest_1.flv",
					flashplayer2,
					"#answ1",
					"../Includes/pages/lob/thumbnails/tammi_on.jpg",
					"../Includes/pages/lob/thumbnails/tammi_on.jpg",
					diaz_video
					);
tammi_a2 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/tammi_quest_2.flv",
					flashplayer2,
					"#answ2",
					"../Includes/pages/lob/thumbnails/tammi_on.jpg",
					"../Includes/pages/lob/thumbnails/tammi_on.jpg",
					diaz_video
					);
tammi_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/tammi_quest_3.flv",
					flashplayer2,
					"#answ3",
					"../Includes/pages/lob/thumbnails/tammi_on.jpg",
					"../Includes/pages/lob/thumbnails/tammi_on.jpg",
					diaz_video
					);
tammi_a4 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/tammi_quest_4.flv",
					flashplayer2,
					"#answ1",
					"../Includes/pages/lob/thumbnails/tammi_on.jpg",
					"../Includes/pages/lob/thumbnails/tammi_on.jpg",
					diaz_video
					);

var tara_a1, tara_a2, tara_a3;
tara_a1 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/tara_quest_1.flv",
					flashplayer2,
					"#answ1",
					"../Includes/pages/lob/thumbnails/tara_on.jpg",
					"../Includes/pages/lob/thumbnails/tara_on.jpg",
					jeremy_video
					);
tara_a2 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/tara_quest_2.flv",
					flashplayer2,
					"#answ2",
					"../Includes/pages/lob/thumbnails/tara_on.jpg",
					"../Includes/pages/lob/thumbnails/tara_on.jpg",
					jeremy_video
					);
tara_a3 = new fvideo(
					flashplayer2.swf_url,
					"http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/tara_quest_3.flv",
					flashplayer2,
					"#answ3",
					"../Includes/pages/lob/thumbnails/tara_on.jpg",
					"../Includes/pages/lob/thumbnails/tara_on.jpg",
					jeremy_video
					);

function getVideo(video,w,h,na_me,alt)
{
	var vi_deo = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+w+'" height="'+h+'" id="'+na_me+'" align="middle">';
	vi_deo += '<param name="wmode" value="transparent">';
	vi_deo += '<param name="allowScriptAccess" value="always" />';
	vi_deo += '<param name="movie" value="'+video.swf_url+'"  />';
	if(video.flv_url) vi_deo += '<param name="FlashVars" value="var1='+video.flv_url+'" />';
	vi_deo += '<param name="quality" value="high" />';
	vi_deo += '<param name="loop" value="false" />';
	vi_deo += '<param name="bgcolor" value="#ffffff" />';
	vi_deo += '<embed src="'+video.swf_url+'" quality="high" bgcolor="#ffffff" width="'+w+'" height="'+h+'" alt="'+alt+'" name="'+na_me+'" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true" loop="false"'+(video.flv_url?(' FlashVars="var1='+video.flv_url+'"'):'')+'><\/embed>';
	vi_deo += '<\/object>';
	return vi_deo;
}

function getFAQVideo(video,w,h,na_me,alt)
{
	if(isIE) return getFAQIeVideo(video,w,h,na_me,alt);
	else return getFAQFfVideo(video,w,h,na_me,alt);
}
function getFAQFfVideo(video,w,h,na_me,alt)
{
	var vi_deo = '<div style="width: '+w+'px; height: '+h+'px;"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+(video.flv_url&&video.flashplayer?video.flashplayer.w:w)+'" height="'+(video.flv_url&&video.flashplayer?video.flashplayer.h:h)+'" id="'+na_me+'" align="middle">';
	vi_deo += '<param name="wmode" value="transparent" />';
	vi_deo += '<param name="allowScriptAccess" value="always" />';
	vi_deo += '<param name="movie" value="'+video.swf_url+'"  />';
	if(video.flv_url) vi_deo += '<param name="FlashVars" value="var1='+video.flv_url+'" />';
	vi_deo += '<param name="quality" value="high" />';
	vi_deo += '<param name="bgcolor" value="#ffffff" />';
	vi_deo += '<param name="loop" value="false" />';
	vi_deo += '<embed style="position: absolute; clip: rect('+h+'px, 0px, 0px, '+w+'px);" src="'+video.swf_url+'" quality="high" bgcolor="#ffffff" width="'+(video.flv_url&&video.flashplayer?video.flashplayer.w:w)+'" height="'+(video.flv_url&&video.flashplayer?video.flashplayer.h:h)+'" alt="'+alt+'" name="'+na_me+'" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true" loop="false"'+(video.flv_url?(' FlashVars="var1='+video.flv_url+'"'):'')+'><\/embed>';
	vi_deo += '<\/object><\/div>';
	return vi_deo;
}
function getFAQIeVideo(video,w,h,na_me,alt)
{
	var vi_deo = '<div style=" width: '+w+'px; height: '+h+'px;"><div style="position: absolute; width: '+w+'px; height: '+h+'px;"><object style="" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+(video.flv_url&&video.flashplayer?video.flashplayer.w:w)+'" height="'+(video.flv_url&&video.flashplayer?video.flashplayer.h:h)+'" id="'+na_me+'" align="middle">';
	vi_deo += '<param name="wmode" value="transparent" />';
	vi_deo += '<param name="allowScriptAccess" value="always" />';
	vi_deo += '<param name="movie" value="'+video.swf_url+'"  />';
	if(video.flv_url) vi_deo += '<param name="FlashVars" value="var1='+video.flv_url+'" />';
	vi_deo += '<param name="quality" value="high" />';
	vi_deo += '<param name="bgcolor" value="#ffffff" />';
	vi_deo += '<param name="loop" value="false" />';
	vi_deo += '<embed style="position: absolute; clip: rect('+h+'px, 0px, 0px, '+w+'px);" src="'+video.swf_url+'" quality="high" bgcolor="#ffffff" width="'+(video.flv_url&&video.flashplayer?video.flashplayer.w:w)+'" height="'+(video.flv_url&&video.flashplayer?video.flashplayer.h:h)+'" alt="'+alt+'" name="'+na_me+'" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true" loop="false"'+(video.flv_url?(' FlashVars="var1='+video.flv_url+'"'):'')+'><\/embed>';
	vi_deo += '<\/object><\/div><\/div>';
	return vi_deo;
}

var pa, pa_video, pa_img;
function playResponce(s)
{
	var p=document.getElementById&&!document.all?s.parentNode:s.parentElement;
	while(!p || p.className != "faqpa")
	{
		p=document.getElementById&&!document.all?p.parentNode:p.parentElement;
	}
	if(p){
		if(!pa) pa=$x("panswer");
		var pv = findChild(p,"span","auraltext");
		var v = false;
		var vo = false;
		if(pv && pv.getElementsByTagName("br")[0] && pv.getElementsByTagName("br")[0].className)
			if(vo=eval(pv.getElementsByTagName("br")[0].className)) v = getFAQVideo(vo,205,130,"ansvideo","");
		if(pa && v)
		{
			if(pa_video) stopResponce();
			pa_video = vo;
			var pi = findChild(p,"img","pai");
			if(pi) pa_img = pi;
			if(pi) MM_swapImage(pi.name,"","../images/video_on_faq.gif",1);
			pauseVideo("javaflash"); //stopVideo("javaflash");//disableVideo();
			createStopAudio('ansvideo');
			pa.innerHTML = v + strReplace(strReplace(strReplace(strReplace(getHTMLControl("ansvideo",205,22,true,true,true,true,true,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",vo.ada_anchor);
			videoplaying = 'ansvideo';
		}
	}
}

function stopResponce()
{
	if(!pa) pa=$x("panswer");
	if(pa && pa_video)
	{
		pa.innerHTML = '<img style="margin: 0px;" src="'+pa_video.thumb_on+'" alt="" border="0" align="absmiddle">' + strReplace(strReplace(strReplace(strReplace(getHTMLControl("ansvideo",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",pa_video.ada_anchor);
	}
	if(pa_img) MM_swapImage(pa_img.name,"","../images/video_off_faq.gif",1);
	pa_video = null;
	pa_img = null;
}




function vo_id(){}
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

function fvideo(swf_url,flv_url,flashplayer,ada_anchor,thumb_on,thumb_off,main_video)
{
	this.swf_url = swf_url;
	this.flv_url = flv_url;
	this.flashplayer = flashplayer;
	this.ada_anchor = ada_anchor;
	this.thumb_on = thumb_on;
	this.thumb_off = thumb_off;
	this.main_video = main_video;
}