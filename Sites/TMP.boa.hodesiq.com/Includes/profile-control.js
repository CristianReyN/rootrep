// Adding a second video has become an issue, so TMP has opted to rebuild the current video functionality rather 
// than attempt to alter the current single player script, which has proven difficult to modify for various reasons.
// (Hardcoded ID's, no comments, etc.)

// Control functions

var videoplaying

function doPassVar(objname,args) {

var vo = eval("window.document."+objname);

if(vo) {

	switch(objname) {

		case objname:

			var sendText = args;
			vo.SetVariable("myVar", sendText);

			switch(sendText) {

				case 'play':

					createStopAudio(objname);
					videoplaying = objname;
					break;

				case 'pause':

					removeStopAudio();
					break;

				case 'stop':

					removeStopAudio();
					break;

				case 'mute':

					createStopAudio(objname);
					break;

				case 'ccoc':

					createStopAudio(objname);
					break;

			}

			break;
			default:
			break;

		}

	}

}

// Player functions

function createStopAudio(objname) {

	removeStopAudio();

	if(document.body.firstChild) {

		var new_a = document.getElementById("stopaudio");
		if(!new_a) new_a = document.createElement("a");
		new_a.href = "JavaScript: if(window.doPassVar) doPassVar('"+objname+"','mute');";
		new_a.innerHTML = "Stop Audio";
		new_a.title = "Stop Audio";
		new_a.id = "stopaudio";
		new_a.className = "hlink";

		if(!document.getElementById("stopaudio")) 

			document.body.insertBefore(new_a,document.body.firstChild);

	} else if (document.all) {

		if(!document.getElementById("stopaudio"))

			document.body.insertAdjacentHTML("afterBegin",'<div id="stopaudio"></div>');
			document.getElementById("stopaudio").innerHTML = '<a href="javascript: if(window.doPassVar) doPassVar(\''+objname+'\',\'mute\');" class="hlink"'+' title="'+'Stop Audio'+'">'+'Stop Audio'+'<\/a>';
			document.getElementById("stopaudio").style.display = "inline";

	}

}

function removeStopAudio() {

	if(document.body.firstChild && document.body.firstChild.id == "stopaudio") {

		document.body.removeChild(document.body.firstChild);

	} else if (document.all) {

		if(document.getElementById("stopaudio")) {

			document.getElementById("stopaudio").innerHTML = '';
			document.getElementById("stopaudio").style.display = "none";

		}

	}

	videoplaying = null;

}

function stopVideo(objname) {

	if(!mv) mv=$x(video_id);

	var vo = eval("window.document."+objname);

	if(vo && (objname != video_id || mv.style.display == "inline")) {

		doPassVar(objname,"stop");
		videoplaying = null;

	}

}

function pauseVideo(objname) {

	if(!mv) mv=$x(video_id);

	var vo = eval("window.document."+objname);

	if(vo && (objname != video_id || mv.style.display == "inline")) {

		doPassVar(objname,"pause");
		videoplaying = null;

	}

}