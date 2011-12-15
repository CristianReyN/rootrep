<% If pageid <> "home" Then %>
			<a href="admin.asp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% End If %>
<% If pageid <> "search_event" Then %>
			<a href="browse_events.asp">Browse Events</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% End If %>
<% If pageid <> "event" Or myid <> "" Then %>
			<A HREF="event.asp?case=add">Add an Event</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% End If %>
			<a href=logout.asp>Logout</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;