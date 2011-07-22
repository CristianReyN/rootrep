<div id="modal-dialog"><div class="w1"><div class="w2"><div class="w3">
	
	<div id="mdvideo">
		<div class="mdv-top">
			<div class="mdv-head">
				<h3><%=video_profile.Item("name")%></h3>
				<p><%=video_profile.Item("videoname")%></p>
			</div>
			<div class="mdv-info">
				<div class="mdv-close">
					<a href="#" class="modaldialog-close"></a>
				</div>
				<div class="clearall"></div>
			</div>
		</div>
		<div class="clearall"></div>
		<div class="mdv-content">
			<iframe frameborder="0" marginheight="0" marginwidth="0" scrolling="0" width="495" height="305" src="<%=video_profile.Item("videohtml")%>"></iframe>
		</div>
		<div class="clearall"></div>
	</div>
	
	
	<div id="mdtrans">
		<div class="mdv-top">
			<div class="mdv-head">
				<p><%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%></p>
			</div>
			<div class="mdv-close">
				<a href="#" class="modaldialog-close">close window</a>
			</div>
		</div>
		<div class="clearall"></div>
		<div class="mdv-line"></div>
		<div class="mdv-content">
		<% IncludeTranscript(video_profile.Item("key")) %>
		</div>
	</div>




</div></div></div></div>