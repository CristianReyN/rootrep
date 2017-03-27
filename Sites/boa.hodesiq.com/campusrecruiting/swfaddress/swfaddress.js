/**
 * SWFAddress 2.1: Deep linking for Flash and Ajax - http://www.asual.com/swfaddress/
 *
 * SWFAddress is (c) 2006-2007 Rostislav Hristov and is released under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 *
 */
if(typeof com=="undefined"){var com={}}if(typeof com.asual=="undefined"){com.asual={}}if(typeof com.asual.util=="undefined"){com.asual.util={}}com.asual.util.Browser=new function(){var J=-1;var I=navigator.userAgent;var H=false,F=false,E=false,D=false,C=false,B=false,A=false;var G=function(L,K){return parseFloat(I.substr(I.indexOf(L)+K))};if(H=/MSIE/.test(I)){J=G("MSIE",4)}if(E=/AppleWebKit/.test(I)){J=G("Safari",7)}if(D=/Opera/.test(I)){J=parseFloat(navigator.appVersion)}if(F=/Camino/.test(I)){J=G("Camino",7)}if(C=/Firefox/.test(I)){J=G("Firefox",8)}if(B=/Netscape/.test(I)){J=G("Netscape",9)}if(A=/Mozilla/.test(I)&&/rv:/.test(I)){J=G("rv:",3)}this.getVersion=function(){return J};this.isIE=function(){return H};this.isSafari=function(){return E};this.isOpera=function(){return D};this.isCamino=function(){return F};this.isFirefox=function(){return C};this.isNetscape=function(){return B};this.isMozilla=function(){return A}};com.asual.util.Events=new function(){var B=[];var A=com.asual.util.Browser;var D="DOMContentLoaded";if(A.isIE()||A.isSafari()){(function(){try{if(A.isIE()||!/loaded|complete/.test(document.readyState)){document.documentElement.doScroll("left")}}catch(F){return setTimeout(arguments.callee,0)}for(var E=0,F;F=B[E];E++){if(F.t==D){F.l.call(null)}}})()}this.addListener=function(G,F,E){B.push({o:G,t:F,l:E});if(!(F==D&&(A.isIE()||A.isSafari()))){if(G.addEventListener){G.addEventListener(F,E,false)}else{if(G.attachEvent){G.attachEvent("on"+F,E)}}}};this.removeListener=function(I,G,E){for(var F=0,H;H=B[F];F++){if(H.o==I&&H.t==G&&H.l==E){B.splice(F,1);break}}if(!(G==D&&(A.isIE()||A.isSafari()))){if(I.removeEventListener){I.removeEventListener(G,E,false)}else{if(I.detachEvent){I.detachEvent("on"+G,E)}}}};var C=function(){for(var F=0,E;E=B[F];F++){if(E.t!=D){com.asual.util.Events.removeListener(E.o,E.t,E.l)}}};this.addListener(window,"unload",C)};SWFAddressEvent=function(C){this.toString=function(){return"[object SWFAddressEvent]"};this.type=C;this.target=[SWFAddress][0];this.value=SWFAddress.getValue();this.path=SWFAddress.getPath();this.pathNames=SWFAddress.getPathNames();this.parameters={};var B=SWFAddress.getParameterNames();for(var D=0,A=B.length;D<A;D++){this.parameters[B[D]]=SWFAddress.getParameter(B[D])}this.parametersNames=B};SWFAddressEvent.INIT="init";SWFAddressEvent.CHANGE="change";SWFAddress=new function(){var _21=com.asual.util.Browser;var _22=com.asual.util.Events;var _23=_21.getVersion();var _24=false;if(_21.isIE()){_24=_23>=6}if(_21.isSafari()){_24=_23>=312}if(_21.isOpera()){_24=_23>=9.02}if(_21.isCamino()){_24=_23>=1}if(_21.isFirefox()){_24=_23>=1}if(_21.isNetscape()){_24=_23>=8}if(_21.isMozilla()){_24=_23>=1.8}var _t=top;var _d=_t.document;var _h=_t.history;var _l=_t.location;var _st=setTimeout;var _2a="function";var _2b="undefined";var _2c="swfaddress";var _2d,_2e,_2f;var _30=_d.title;var _31=_h.length;var _32=false;var _33={};var _34=[];var _35=[];var _36={};_36.history=true;_36.html=false;_36.strict=true;_36.tracker="_trackDefault";if((!_24&&_l.href.indexOf("#")!=-1)||(_21.isSafari()&&_23<412&&_l.href.indexOf("#")!=-1&&_l.search!="")){_d.open();_d.write('<html><head><meta http-equiv="refresh" content="0;url='+_l.href.substr(0,_l.href.indexOf("#"))+'" /></head></html>');_d.close()}var _37=function(){var _38=_l.href.indexOf("#");if(_38!=-1){var _39=unescape(_l.href.substr(_38+1));if(/^[a-z0-9 ,=_&\-\.\?\+\/]*$/i.test(_39)){return _39}else{_l.replace(_l.href.substr(0,_38))}}return""};var _3a=_37();var _3b=function(_3c,_3d){if(_36.strict){_3c=_3d?(_3c.substr(0,1)!="/"?"/"+_3c:_3c):(_3c==""?"/":_3c)}return _3c};var _3e=function(_3f){return(_21.isIE()&&_l.protocol=="file:")?_3a.replace(/\?/,"%3F"):_3f};var _40=function(el){if(el.src&&/swfaddress\.js(\?.*)?$/.test(el.src)){return el}for(var i=0,l=el.childNodes.length,s;i<l;i++){if(s=_40(el.childNodes[i])){return s}}};var _45=function(){if(_21.isIE()&&_d.title!=_30){SWFAddress.setTitle(_30)}};var _46=function(){if(!_32){var _47=_37();if(_21.isIE()){if(_3a!=_47){if(_23<7){_l.reload()}else{SWFAddress.setValue(_47)}}}else{if(_21.isSafari()&&_23<523){if(_31!=_h.length){_31=_h.length;if(typeof _34[_31-1]!=_2b){_3a=_34[_31-1]}_48()}}else{if(_3a!=_47){_3a=_47;_48()}}}_45()}};var _49=function(_4a){if(SWFAddress.hasEventListener(_4a)){SWFAddress.dispatchEvent(new SWFAddressEvent(_4a))}_4a=_4a.substr(0,1).toUpperCase()+_4a.substr(1);if(typeof SWFAddress["on"+_4a]==_2a){SWFAddress["on"+_4a]()}};var _4b=function(){_49("init")};var _4c=function(){_49("change")};var _4d=function(){for(var i=0,id,_50=SWFAddress.getValue(),_51="setSWFAddressValue";id=_35[i];i++){var obj=document.getElementById(id);if(obj){if(obj.parentNode&&typeof obj.parentNode.so!=_2b){obj.parentNode.so.call(_51,_50)}else{if(!(obj&&typeof obj[_51]!=_2b)){var _53=obj.getElementsByTagName("object");var _54=obj.getElementsByTagName("embed");obj=((_53[0]&&typeof _53[0][_51]!=_2b)?_53:((_54[0]&&typeof _54[0][_51]!=_2b)?_54[0]:null))}if(obj){obj[_51](_50)}}}else{if(obj=document[id]){if(typeof obj[_51]!=_2b){obj[_51](_50)}}}}};var _48=function(){_4d();_4c();_st(_55,10)};var _56=function(_57){if(typeof urchinTracker==_2a){urchinTracker(_57)}if(typeof pageTracker!=_2b&&typeof pageTracker._trackPageview==_2a){pageTracker._trackPageview(_57)}};eval("var _trackDefault = "+_56+";");var _55=function(){if(typeof _36.tracker!=_2b&&eval("typeof "+_36.tracker+' != "'+_2b+'"')){var fn=eval(_36.tracker);if(typeof fn==_2a){fn((_l.pathname+(/\/$/.test(_l.pathname)?"":"/")+SWFAddress.getValue()).replace(/\/\//,"/").replace(/^\/$/,""))}}};var _59=function(){var doc=_2d.contentWindow.document;doc.open();doc.write("<script>var "+_2c+' = "'+_37()+'";<\/script>');doc.close()};var _5b=function(){var win=_2d.contentWindow;if(_36.html){var src=win.location.href;_3a=(src.indexOf("?")>-1)?src.substr(src.indexOf("?")+1):""}else{_3a=(typeof win[_2c]!=_2b)?win[_2c]:""}win.document.title=_d.title;if(_3a!=_37()){_48();_l.hash=_3e(_3a)}};var _5e=function(){var _5f='id="'+_2c+'" style="position:absolute;top:-9999px;"';if(_21.isIE()){document.body.appendChild(document.createElement("div")).innerHTML="<iframe "+_5f+' src="'+(_36.html?_2f.replace(/\.js(\?.*)?$/,".html")+"?"+_37():"javascript:false;")+'" width="0" height="0"></iframe>';_2d=document.getElementById(_2c);_st(function(){_22.addListener(_2d,"load",_5b);if(!_36.html&&typeof _2d.contentWindow[_2c]==_2b){_59()}},10)}else{if(_21.isSafari()){if(_23<412){document.body.innerHTML+="<form "+_5f+' method="get"></form>';_2e=document.getElementById(_2c)}if(typeof _l[_2c]==_2b){_l[_2c]={}}if(typeof _l[_2c][_l.pathname]!=_2b){_34=_l[_2c][_l.pathname].split(",")}}else{if(_21.isOpera()&&_35.length==0&&typeof navigator.plugins["Shockwave Flash"]=="object"){document.body.innerHTML+="<embed "+_5f+' src="'+_2f.replace(/\.js(\?.*)?$/,".swf")+'" type="application/x-shockwave-flash" />'}}}_st(_4b,1);_st(_4c,2);_st(_55,10);setInterval(_46,50)};this.onInit=null;this.onChange=null;this.toString=function(){return"[class SWFAddress]"};this.back=function(){_h.back()};this.forward=function(){_h.forward()};this.go=function(_60){_h.go(_60)};this.href=function(url,_62){_62=(typeof _62!=_2b)?_62:"_self";if(_62=="_self"){self.location.href=url}if(_62=="_top"){_l.href=url}if(_62=="_blank"){window.open(url)}else{_t.frames[_62].location.href=url}};this.popup=function(url,_64,_65,_66){var _67=window.open(url,_64,eval(_65));eval(_66)};this.addEventListener=function(_68,_69){if(typeof _33[_68]==_2b){_33[_68]=[]}_33[_68].push(_69)};this.removeEventListener=function(_6a,_6b){if(typeof _33[_6a]!=_2b){for(var i=0,l;l=_33[_6a][i];i++){if(l==_6b){break}}_33[_6a].splice(i,1)}};this.dispatchEvent=function(_6e){if(typeof _33[_6e.type]!=_2b&&_33[_6e.type].length){_6e.target=this;for(var i=0,l;l=_33[_6e.type][i];i++){l(_6e)}return true}return false};this.hasEventListener=function(_71){return(typeof _33[_71]!=_2b&&_33[_71].length>0)};this.getBaseURL=function(){var url=_l.href;if(url.indexOf("#")!=-1){url=url.substr(0,url.indexOf("#"))}if(url.substr(url.length-1)=="/"){url=url.substr(0,url.length-1)}return url};this.getStrict=function(){return _36.strict};this.setStrict=function(_73){_36.strict=_73};this.getHistory=function(){return _36.history};this.setHistory=function(_74){_36.history=_74};this.getTracker=function(){return _36.tracker};this.setTracker=function(_75){_36.tracker=_75};this.getIds=function(){return _35};this.getId=function(_76){return _35[0]};this.setId=function(id){_35[0]=id};this.addId=function(id){this.removeId(id);_35.push(id)};this.removeId=function(id){for(var i=0;i<_35.length;i++){if(id==_35[i]){_35.splice(i,1);break}}};this.getTitle=function(){return _d.title};this.setTitle=function(_7b){if(!_24){return null}if(typeof _7b==_2b){return }if(_7b=="null"){_7b=""}_30=_d.title=_7b;_st(function(){if(_2d&&_2d.contentWindow&&_2d.contentWindow.document&&_2d.contentWindow.title){_2d.contentWindow.document.title=_30}},1000)};this.getStatus=function(){return _t.status};this.setStatus=function(_7c){if(!_24){return null}if(typeof _7c==_2b){return }if(!_21.isSafari()){_7c=_3b((_7c!="null")?_7c:"",true);if(_7c=="/"){_7c=""}if(!(/http(s)?:\/\//.test(_7c))){var _7d=_l.href.indexOf("#");_7c=(_7d==-1?_l.href:_l.href.substr(0,_7d))+"#"+_7c}_t.status=_7c}};this.resetStatus=function(){_t.status=""};this.getValue=function(){if(!_24){return null}return _3b(_3a,false)};this.setValue=function(_7e){if(!_24){return null}if(typeof _7e==_2b){return }if(_7e=="null"){_7e=""}_7e=_3b(_7e,true);if(_7e=="/"){_7e=""}if(_3a==_7e){return }_3a=_7e;_32=true;_48();_34[_h.length]=_3a;if(_21.isSafari()){if(_36.history){_l[_2c][_l.pathname]=_34.toString();_31=_h.length+1;if(_23<412){if(_l.search==""){_2e.action="#"+_3a;_2e.submit()}}else{if(_23<523){var evt=document.createEvent("MouseEvents");evt.initEvent("click",true,true);var _80=document.createElement("a");_80.href="#"+_3a;_80.dispatchEvent(evt)}else{_l.hash="#"+_3a}}}else{_l.replace("#"+_3a)}}else{if(_3a!=_37()){if(_36.history){_l.hash="#"+_3e(_3a)}else{_l.replace("#"+_3a)}}}if(_21.isIE()&&_36.history){if(_36.html){var loc=_2d.contentWindow.location;loc.assign(loc.pathname+"?"+_37())}else{_59()}}if(_21.isSafari()){_st(function(){_32=false},1)}else{_32=false}};this.getPath=function(){var _82=this.getValue();return(_82.indexOf("?")!=-1)?_82.split("?")[0]:_82};this.getPathNames=function(){var _83=SWFAddress.getPath();var _84=_83.split("/");if(_83.substr(0,1)=="/"){_84.splice(0,1)}if(_83.substr(_83.length-1,1)=="/"){_84.splice(_84.length-1,1)}return _84};this.getQueryString=function(){var _85=this.getValue();var _86=_85.indexOf("?");return(_86!=-1&&_86<_85.length)?_85.substr(_86+1):""};this.getParameter=function(_87){var _88=this.getValue();var _89=_88.indexOf("?");if(_89!=-1){_88=_88.substr(_89+1);var _8a=_88.split("&");var p,i=_8a.length;while(i--){p=_8a[i].split("=");if(p[0]==_87){return p[1]}}}return""};this.getParameterNames=function(){var _8d=this.getValue();var _8e=_8d.indexOf("?");var _8f=[];if(_8e!=-1){_8d=_8d.substr(_8e+1);if(_8d!=""&&_8d.indexOf("=")!=-1){var _90=_8d.split("&");var i=0;while(i<_90.length){_8f.push(_90[i].split("=")[0]);i++}}}return _8f};if(_24){for(var i=1;i<_31;i++){_34.push("")}_34.push(_37());if(_21.isIE()&&_l.hash!=_37()){_l.hash="#"+_3e(_37())}try{_2f=String(_40(document).src);var qi=_2f.indexOf("?");if(_2f&&qi>-1){var _94,_95=_2f.substr(qi+1).split("&");for(var i=0,p;p=_95[i];i++){_94=p.split("=");if(/^(history|html|strict)$/.test(_94[0])){_36[_94[0]]=(isNaN(_94[1])?eval(_94[1]):(parseFloat(_94[1])>0))}if(/^tracker$/.test(_94[0])){_36[_94[0]]=_94[1]}}}}catch(e){}if(/file:\/\//.test(_l.href)){_36.html=false}_45();_22.addListener(document,"DOMContentLoaded",_5e)}else{_55()}};new function(){var C,B;var A="undefined";if(typeof swfobject!=A){SWFObject=swfobject}if(typeof FlashObject!=A){SWFObject=FlashObject}if(typeof SWFObject!=A){if(SWFObject.prototype&&SWFObject.prototype.write){C=SWFObject.prototype.write;SWFObject.prototype.write=function(){B=arguments;if(this.getAttribute("version").major<8){this.addVariable("$swfaddress",SWFAddress.getValue());((typeof B[0]=="string")?document.getElementById(B[0]):B[0]).so=this}var D;if(D=C.apply(this,B)){SWFAddress.addId(this.getAttribute("id"))}return D}}else{C=SWFObject.registerObject;SWFObject.registerObject=function(){B=arguments;C.apply(this,B);SWFAddress.addId(B[0])};C=SWFObject.createSWF;SWFObject.createSWF=function(){B=arguments;C.apply(this,B);SWFAddress.addId(B[0].id)};C=SWFObject.embedSWF;SWFObject.embedSWF=function(){B=arguments;C.apply(this,B);SWFAddress.addId(B[8].id)}}}if(typeof UFO!=A){C=UFO.create;UFO.create=function(){B=arguments;C.apply(this,B);SWFAddress.addId(B[0].id)}}if(typeof AC_FL_RunContent!=A){C=AC_FL_RunContent;AC_FL_RunContent=function(){B=arguments;C.apply(this,B);for(var E=0,D=B.length;E<D;E++){if(B[E]=="id"){SWFAddress.addId(B[E+1])}}}}};