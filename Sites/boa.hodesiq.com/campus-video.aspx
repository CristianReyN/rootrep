﻿<%@Page Language="C#" AutoEventWireup="true" CodeFile="campus-video.aspx.cs" MasterPageFile="~/BOAmaster.master" Inherits="campus_video" %>

<asp:content id="Content1" contentplaceholderid="cphmain" runat="server">

	<div id="video" class="vcard">

		<script src="Includes/_swfobject.js"></script>
		<script>swfobject.switchOffAutoHideShow(); swfobject.registerObject("bac-video", "10.0.0", "flash/expressInstall.swf");</script>

		<h1 class="fn"><%=str_Name%></h1>
		<p class="title"><%=str_Title%></p>
		<!-- p class="org"><%= str_Dept%></p -->

		<object id="bac-video" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="493" height="303" tabindex="1">
			<param name="movie" value="<%= str_AssetPath + "player.swf"%>"/>
			<param name="wmode" value="opaque"/> <!-- Note: opaque may cause accessibility issue in some browsers -->
			<param name="menu" value="false"/>
			<param name="base" value="."/>
			<!--[if !IE]>-->
			<object type="application/x-shockwave-flash" data="<%= str_AssetPath + "player.swf"%>" width="493" height="303" tabindex="1">
			<param name="wmode" value="opaque"/>
			<param name="menu" value="false"/>
			<param name="base" value="."/>

			<!--<![endif]-->
			
			    <p style="color: #fff; font-size: 12px; padding: 15px">Your browser currently does not support Flash. You may <a href="http://get.adobe.com/flashplayer/" class="external">install it</a> by visiting Adobe's website.</p>
			    
			    <p style="color: #fff; font-size: 12px; padding: 15px">While you are upgrading, please feel free to read the transcript for <a href="<%=str_TranscriptPath%>" class="transcript"><%=str_Name%></a>.</p>
								
			<!--[if !IE]>-->
			</object>
			<!--<![endif]-->
		</object>

	</div><!--/#video-->

</asp:content>

