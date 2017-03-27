

var tony_video, chris_video, malcolm_video, guan_video, nathan_video;

tony_video = new fvideo(
					"../Includes/pages/college/Tony.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/camp/video/thumbnails/tony_on.jpg",
					"../Includes/pages/camp/video/thumbnails/tony_off.jpg",
					null,
					null
					);
					
chris_video = new fvideo(
					"../Includes/pages/college/Chris.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/camp/video/thumbnails/chris_on.jpg",
					"../Includes/pages/camp/video/thumbnails/chris_off.jpg",
					null,
					null
					);

var flashplayer_m = new fpvideo("../Includes/pages/rjp/flashplayer_xml20080308.swf",231,131);
malcolm_video = new fvideo(
					flashplayer_m.swf_url,
					"../Includes/pages/camp/video/MALCOLM.xml",
					flashplayer_m,
					"#vt",
					"../Includes/pages/camp/video/thumbnails/malcolm_on.jpg",
					"../Includes/pages/camp/video/thumbnails/malcolm_off.jpg",
					null,
					null
					);

guan_video = new fvideo(
					"../Includes/pages/college/Guan.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/camp/video/thumbnails/guan_on.jpg",
					"../Includes/pages/camp/video/thumbnails/guan_off.jpg",
					null,
					null
					);

nathan_video = new fvideo(
					"../Includes/pages/college/Nathan.swf",
					false,
					null,
					"#vt",
					"../Includes/pages/camp/video/thumbnails/nathan_on.jpg",
					"../Includes/pages/camp/video/thumbnails/nathan_off.jpg",
					null,
					null
					);
					
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
		pauseVideomg("javaflashmg");
		if(action_script) createStopAudio('javaflash');
		videoplaying = 'javaflash';
	}
}
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
			pauseVideomg("javaflashmg");
			createStopAudio('ansvideo');
			pa.innerHTML = v + strReplace(strReplace(strReplace(strReplace(getHTMLControl("ansvideo",205,22,true,true,true,true,true,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",vo.ada_anchor);
			videoplaying = 'ansvideo';
		}
	}
}

var mvmg, vthumbmg, vthumb_offmg;
function playVideomg(video,play,pause,stop,ada,mute,ccoc)
{
	if(!mvmg) mvmg=$x("mainvideomg");
	if(!vthumbmg) vthumbmg=$x("videothumbmg");
	if(!vthumb_offmg) vthumb_offmg=$x("videothumb_offmg");
	if(video && mvmg && vthumbmg && vthumb_offmg)
	{
		mvmg.innerHTML = getVideo(video,205,131,"javaflashmg","") + strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflashmg",205,22,play,pause,stop,ada,mute,ccoc),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",video.ada_anchor);
		mvmg.style.display = "inline";
		vthumbmg.style.display = "none";
		vthumb_offmg.style.display = "none";
		pauseVideo("javaflash");
		pauseVideo("ansvideo");
		if(action_script) createStopAudio('javaflashmg');
		videoplaying = 'javaflashmg';
	}
}
function playVideomgmg(video,play,pause,stop,ada,mute,ccoc)
{
	if(!mvmg) mvmg=$x("mainvideomg");
	if(!vthumbmg) vthumbmg=$x("videothumbmg");
	if(!vthumb_offmg) vthumb_offmg=$x("videothumb_offmg");
	if(video && mvmg && vthumbmg && vthumb_offmg)
	{
		mvmg.innerHTML = getVideo(video,231,131,"javaflashmg","") + strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflashmg",231,22,play,pause,stop,ada,mute,ccoc),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",video.ada_anchor);
		mvmg.style.display = "inline";
		vthumbmg.style.display = "none";
		vthumb_offmg.style.display = "none";
		pauseVideo("javaflash");
		pauseVideo("ansvideo");
		if(action_script) createStopAudio('javaflashmg');
		videoplaying = 'javaflashmg';
	}
}

function pauseVideomg(objname)
{
	if(!mvmg) mvmg=$x("mainvideomg");
	var vo = eval("window.document."+objname);
	if(vo && (objname != "javaflashmg" || mvmg.style.display == "inline"))
	{
		doPassVar(objname,"pause");
		videoplaying = null;
	}
}

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
						pauseVideomg("javaflashmg");
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
						pauseVideomg("javaflashmg");
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
			case 'javaflashmg':
				var sendText = args;
				vo.SetVariable("myVar", sendText);
				switch(sendText)
				{
					case 'play':
						pauseVideo("javaflash");
						pauseVideo("ansvideo");
						createStopAudio('javaflashmg');
						videoplaying = 'javaflashmg';
					break;
					case 'pause':
						if(!videoplaying || videoplaying=='javaflashmg') removeStopAudio();
					break;
					case 'stop':
						if(!videoplaying || videoplaying=='javaflashmg') removeStopAudio();
					break;
					case 'mute':
						if(!videoplaying || videoplaying=='javaflashmg') createStopAudio('javaflashmg');
					break;
					case 'ccoc':
						if(!videoplaying || videoplaying=='javaflashmg') createStopAudio('javaflashmg');
					break;
				}
			break;
			default:
			break;
		}
	}
}
