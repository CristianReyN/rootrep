<div id="modal-dialog"><div class="w1"><div class="w2"><div class="w3">
	<div id="mdvideo">
		<div class="mdv-top">
			<div class="mdv-head">
				<h3><%=video_profile.Item("name")%></h3>
				<p><%=video_profile.Item("videoname")%><a href="" id="grabfocus" onclick="return false;"> </a></p>
			</div>
			<div class="mdv-info">
				<div class="mdv-close">
					<a href="#" class="modaldialog-close haf" title="Close" id="videoclose"><div><img src="../images/clear.gif" width="18" height="18" alt="Close" title="Close" border="0"></div></a>
				</div>
				<div class="clearall"></div>
			</div>
		</div>
		<div class="clearall"></div>
		<div class="mdv-content">
			<iframe id="imodal" frameborder="0" marginheight="0" marginwidth="0" scrolling="0" width="495" height="305" src="" videosrc="<%=video_profile.Item("videohtml")%>"></iframe><a href="" id="returnfocus" onclick="return false;"> </a>
		</div>
		<div class="clearall"></div>
	</div>
</div></div></div></div>