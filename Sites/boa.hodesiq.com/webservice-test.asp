<%
'WriteHotJobs
'WriteTopEvents
WriteJobDetails

sub WriteJobDetails

    dim message

    'message = "http://ws.stg.hodesiq.com/EventsUsaJobsService/EventsUsaJobsService.asmx/GetHotUSAJobs" 
    message = "http://ws.stg.hodesiq.com/JobSearchService/JobDetails/?h=C722D101-0D08-4346-AC28-175FFC965C27&j=728681&e=91929&q=2667,2668,943,944,946,2733,945,947,949&format="


    Set objRequest = Server.createobject("MSXML2.XMLHTTP")

    With objRequest
    .open "GET", message, False
    .setRequestHeader "Content-Type", "text/xml"
    .send
    End With

    dim strXMl
    strXML = objRequest.responseText

    Dim oXML, oNode, sKey, sValue

    Set oXML = Server.CreateObject("Microsoft.XMLDOM")
    oXML.LoadXML(strXML)

    set ElemProperty = oXML.getElementsByTagName("TopUSAJobs")
    set ElemTitle = oXML.getElementsByTagName("TopUSAJobs/USAJobTitle")
    set ElemLoc = oXML.getElementsByTagName("TopUSAJobs/USAJobLocation")
    set ElemURL = oXML.getElementsByTagName("TopUSAJobs/USAJobURL")

    %>

    <div id="Div1">
			<img src="../images/HotJobs_homebxhdr.jpg" width=287 height=42 alt="" border="0"><br>
			<table width="285" cellpadding="0" cellspacing="0" border="0" class="hjttls">
			<tr><td width="50%">&nbsp;Position</td><td width="50%">Location</td></tr>
			</table>
			<div id="Div2">

<table cellpadding="0" cellspacing="0" style="table-layout:fixed; width:285px;" border="0">
			
            
    <%

    For i=0 To (ElemProperty.length -1) 
	    Response.Write "<tr><td class='hjboxint' width='142'><a href='" & ElemURL.item(i).Text & "' onclick=javascript: _gaq.push(['_trackPageview', '/outbound/apply_attempt']);>" & ElemTitle.item(i).Text & "</a></td> "
        Response.Write "<td width='143' class='hjboxint'>" & ElemLoc.item(i).Text & "</td></tr>"
    next

    %>
    </table>
			</div>	
		</div>
    <%

    Set oXML = Nothing

    With objRequest
    .open "GET", message, False
    .setRequestHeader "Content-Type", "text/xml"
    .send
    End With

end sub

sub WriteHotJobs

    dim message

    message = "http://ws.stg.hodesiq.com/EventsUsaJobsService/EventsUsaJobsService.asmx/GetHotUSAJobs" 
    'message = "http://ws.stg.hodesiq.com/JobSearchService/JobDetails/?h=C722D101-0D08-4346-AC28-175FFC965C27&j=728681&e=91929"


    Set objRequest = Server.createobject("MSXML2.XMLHTTP")

    With objRequest
    .open "GET", message, False
    .setRequestHeader "Content-Type", "text/xml"
    .send
    End With

    dim strXMl
    strXML = objRequest.responseText

    Dim oXML, oNode, sKey, sValue

    Set oXML = Server.CreateObject("Microsoft.XMLDOM")
    oXML.LoadXML(strXML)

    set ElemProperty = oXML.getElementsByTagName("TopUSAJobs")
    set ElemTitle = oXML.getElementsByTagName("TopUSAJobs/USAJobTitle")
    set ElemLoc = oXML.getElementsByTagName("TopUSAJobs/USAJobLocation")
    set ElemURL = oXML.getElementsByTagName("TopUSAJobs/USAJobURL")

    %>

    <div id="HMHotJobs">
			<img src="../images/HotJobs_homebxhdr.jpg" width=287 height=42 alt="" border="0"><br>
			<table width="285" cellpadding="0" cellspacing="0" border="0" class="hjttls">
			<tr><td width="50%">&nbsp;Position</td><td width="50%">Location</td></tr>
			</table>
			<div id="hjbox">

<table cellpadding="0" cellspacing="0" style="table-layout:fixed; width:285px;" border="0">
			
            
    <%

    For i=0 To (ElemProperty.length -1) 
	    Response.Write "<tr><td class='hjboxint' width='142'><a href='" & ElemURL.item(i).Text & "' onclick=javascript: _gaq.push(['_trackPageview', '/outbound/apply_attempt']);>" & ElemTitle.item(i).Text & "</a></td> "
        Response.Write "<td width='143' class='hjboxint'>" & ElemLoc.item(i).Text & "</td></tr>"
    next

    %>
    </table>
			</div>	
		</div>
    <%

    Set oXML = Nothing

    With objRequest
    .open "GET", message, False
    .setRequestHeader "Content-Type", "text/xml"
    .send
    End With

end sub



sub WriteTopEvents
    
    dim message

    message = "http://ws.stg.hodesiq.com/EventsUsaJobsService/EventsUsaJobsService.asmx/GetNextEvents" 

    Set objRequest = Server.createobject("MSXML2.XMLHTTP")

    With objRequest
    .open "GET", message, False
    .setRequestHeader "Content-Type", "text/xml"
    .send
    End With

    dim strXMl
    strXML = objRequest.responseText

    Dim oXML, oNode, sKey, sValue

    Set oXML = Server.CreateObject("Microsoft.XMLDOM")
    oXML.LoadXML(strXML)

    set ElemProperty = oXML.getElementsByTagName("NextEvents")
    set ElemTitle = oXML.getElementsByTagName("NextEvents/EventTitle")
    set ElemVirtual = oXML.getElementsByTagName("NextEvents/isVirtual")
    set ElemLoc = oXML.getElementsByTagName("NextEvents/EventLocation")
    set ElemStartDate = oXML.getElementsByTagName("NextEvents/EventStartDate")
    set ElemEndDate = oXML.getElementsByTagName("NextEvents/EventEndDate")
    set ElemURL = oXML.getElementsByTagName("NextEvents/EventURL")
    %>

    <div id="HMEvents">
			<img src="../images/Events_homebxhdr.jpg" width=287 height=42 alt="Events" border="0"><br>
			<div id="evbox">
			<table width="285" cellpadding="0" cellspacing="0">
			
<%


    For i=0 To (ElemProperty.length -1) 
	    Response.Write "<tr><td class='evboxint'><a href='" & ElemURL.item(i).Text & "' onclick=javascript: _gaq.push(['_trackPageview', '/outbound/apply_attempt']);><b><font style='font-size:12px;'>" & ElemTitle.item(i).Text & "</font></b><br>"
        Response.Write(ElemStartDate.item(i).Text) & " - "
        Response.Write(ElemEndDate.item(i).Text) & "<br>"
        Response.Write(ElemLoc.item(i).Text) & "</a></td></tr>"
        'Response.Write(ElemVirtual.item(i).Text) & "<br>"
        
    next
    %>
    </table>
		</div>	
			</div>
    <%
    Set oXML = Nothing

    end sub
%>


