
<%
function getLOBName(pb)
	set rss = server.CreateObject("ADODB.Recordset")
	sqls = "select position from Positionofinterest where ppoi=" & cint(pb)
	'getStateName=""
	rss.Open sqls, cn, adOpenStatic
	if not (rss.EOF and rss.BOF) then
		rss.MoveFirst
		getLOBName=trim(rss("position"))
	end if			
	rss.Close
	set rss = nothing
end function
function getLOBSet(pb)
	set rs = server.CreateObject("ADODB.Recordset")
	'if trim(pb) <> "" then 
	'	sql = "select * from Positionofinterest where active=1 and ppoi=" & pb & " order by sortorder,ppoi"
	'else
		sql = "select * from Positionofinterest where active=1  order by sortorder,ppoi"
	'end if
	rs.Open sql, cn, adOpenStatic
	if not (rs.EOF and rs.BOF) then
		rs.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
		do while not rs.EOF
				Response.Write"<option value=""" & trim(rs("ppoi")) & """"
				if trim(pb) = trim(rs("ppoi")) then Response.Write " Selected"
				Response.Write ">" & trim(rs("position")) & "</option>" & vbCrLf 
			rs.MoveNext
		loop
	end if			
	rs.Close
	set rs = nothing
end function
function getLOB(pb)
	set rs = server.CreateObject("ADODB.Recordset")
	if trim(pb) <> "" then 
		sql = "select * from Positionofinterest where active=1 and ppoi=" & pb & " order by sortorder,ppoi"
	else
		sql = "select * from Positionofinterest where active=1  order by sortorder,ppoi"
	end if
	rs.Open sql, cn, adOpenStatic
	if not (rs.EOF and rs.BOF) then
		rs.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
		do while not rs.EOF
				Response.Write"<option value=""" & trim(rs("ppoi")) & """"
				if trim(pb) = trim(rs("ppoi")) then Response.Write " Selected"
				Response.Write ">" & trim(rs("position")) & "</option>" & vbCrLf 
			rs.MoveNext
		loop
	end if			
	rs.Close
	set rs = nothing
end function
function getStateName(pstate)
	set rss = server.CreateObject("ADODB.Recordset")
	sqls = "select state from state where pstate=" & cint(pstate)
	'getStateName=""
	rss.Open sqls, cn, adOpenStatic
	if not (rss.EOF and rss.BOF) then
		rss.MoveFirst
		getStateName=trim(rss("state"))
	end if			
	rss.Close
	set rss = nothing
end function

function getSchoolName(pschool)
	set rss = server.CreateObject("ADODB.Recordset")
	sqls = "select school from school where pschool=" & cint(pschool)
	'getStateName=""
	rss.Open sqls, cn, adOpenStatic
	if not (rss.EOF and rss.BOF) then
		rss.MoveFirst
		getSchoolName=trim(rss("school"))
	end if			
	rss.Close
	set rss = nothing
end function
function getSchool(cat)
	set rs = server.CreateObject("ADODB.Recordset")
	if trim(cat) = "1" then 
		sql = "select * from school where active=1 order by school"
	else
		sql = "select * from school where active=1 order by category, school"
	end if
	rs.Open sql, cn, adOpenStatic
	if not (rs.EOF and rs.BOF) then
		rs.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
		do while not rs.EOF
			
			select case trim(rs("PSchool"))
			case "1","53" 
				Response.Write("<option value="""""""">" & trim(rs("school")) & "</option>" & vbCrLf) 
			case else
				Response.Write("<option value=""" & trim(rs("pschool")) & """>" & trim(rs("school")) & "</option>" & vbCrLf) 
			end select				
			rs.MoveNext
		loop
	end if			
	rs.Close
	set rs = nothing
end function
function getSchool1(cat)
	set rs = server.CreateObject("ADODB.Recordset")
	if trim(cat) = "1" then 
		sql = "select * from school where active=1 order by school"
	else
		sql = "select * from school where active=1 order by category, school"
	end if
	rs.Open sql, cn, adOpenStatic
	if not (rs.EOF and rs.BOF) then
		rs.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
		do while not rs.EOF
			
			select case trim(rs("PSchool"))
			case "1","53" 
				'Response.Write("<option value="""""""">" & trim(rs("school")) & "</option>" & vbCrLf) 
			case else
				Response.Write("<option value=""" & trim(rs("pschool")) & """>" & trim(rs("school")) & "</option>" & vbCrLf) 
			end select				
			rs.MoveNext
		loop
	end if			
	rs.Close
	set rs = nothing
end function
function getState()
	set rs = server.CreateObject("ADODB.Recordset")
	sql = "select * from state order by longstate"
	rs.Open sql, cn, adOpenStatic
	if not (rs.EOF and rs.BOF) then
		rs.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
		do while not rs.EOF
			Response.Write("<option value=" & chr(34) & rs("PSTATE") & chr(34) & ">" & rs("LONGSTATE") & "</option>" & vbCrLf) 		
			rs.MoveNext
		loop
			
	end if			
	rs.Close
	set rs = nothing
end function

function getDate()
	for i=1 to 31
	Response.Write("<option value=" & i & ">" & i & "</option>" & vbcrlf)
	next
end function

function getMonth()
	set rsS = server.CreateObject("ADODB.Recordset")
	sql = "select * from Month order by pmonth"
	rsS.Open sql, cn, adOpenStatic
	if not (rsS.EOF and rsS.BOF) then
		rsS.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
		while not rsS.EOF
			Response.Write("<option value=" & chr(34) & rsS("pmonth")& chr(34) & ">" & rsS("month")& "</option>")
			rsS.MoveNext
		wend
	end if			
	rsS.Close
	set rsS = nothing
end function

function getYear()
	curyear=year(now())
	startyear=2002
	for i=startyear to (curyear+5)
		Response.Write("<option value=""" & i & """>" & i & "</option>")
	next
end function

function getAlphabet()
for i=97 to 122
	Response.Write("<option value=""" & Ucase(Chr(i)) & """>" & Ucase(Chr(i)) & "</option>" & vbcrlf) 
next
end function
'on error resume next
function getCampusEvents()
	sqldat="select events.pevent,events.campus_title,events.diversity_title,events.start_date,events.end_date,state.state,events.description from events,state where "
	sqldat=sqldat & " events.pstate=state.pstate and events.active=1  and events.show_campus=1 and events.end_date > '" & Now()-1 & "'  "
	sqldat=sqldat & " order by events.sort_group,state.state"
	set rsDat=server.CreateObject ("ADODB.Recordset")
	rsDat.Open sqldat,cn,adOpenStatic
	Response.Write("<table cellpadding=0 cellspacing=0 border=0>")
	Response.Write ("<tr><td width=450><img src=""images/spacer.gif"" width=450 height=20 border=0></td></tr>" & vbcrlf)

	if (rsDat.BOF and rsDat.EOF) then
		Response.Write("<tr><td><B>Sorry, currently we do not have any events.</B></td></tr>") 
		Response.Write ("<tr><td width=450><img src=""images/spacer.gif"" width=450 height=20 border=0></td></tr>" & vbcrlf)

	else
		rsDat.MoveFirst 
		while not rsDat.EOF
			Response.Write ("<tr><td valign=top>")
			if trim(rsDat("campus_title"))<>"" then  
				Response.Write ("<p><b>" & trim(rsDat("campus_title")) & "</b><br>" & vbcrlf)
			else
				Response.Write ("<p><b>" & trim(rsDat("diversity_title")) & "</b><br>" & vbcrlf)
			end if
			Response.Write (left(MonthName(Month(rsDat("start_date"))),3) & "  " & Day(rsDat("start_date")) & " -" & left(MonthName(Month(rsDat("end_date"))),3) & "  " & Day(rsDat("end_date")) & ", " & year(rsDat("end_date")) & ", " & rsDat("state") & "</p>" & vbcrlf)
			Response.Write ("<p>" & replace(trim(rsDat("description")),vbcrlf,"<br>") & "</p><br>" & vbcrlf)
			Response.Write("</td></tr>")
			Response.Write ("<tr><td width=450><img src=""images/spacer.gif"" width=450 height=20 border=0></td></tr>" & vbcrlf)
			rsDat.MoveNext 
		wend 
		
	end if
	rsDat.Close
	set rsDat=nothing
 	Response.Write("</table>")
end function
function getDiversityEvents()
	sqldat="select events.pevent,events.campus_title,events.diversity_title,events.start_date,events.end_date,state.state,events.description from events,state where "
	sqldat=sqldat & " events.pstate=state.pstate and events.active=1  and events.show_diversity=1 and events.end_date > '" & Now()-1 & "'  "
	sqldat=sqldat & " order by events.start_date,state.state"
	set rsDat=server.CreateObject ("ADODB.Recordset")
	rsDat.Open sqldat,cn,adOpenStatic
	Response.Write("<table cellpadding=0 cellspacing=0 border=0>")
	Response.Write ("<tr><td width=450><img src=""images/spacer.gif"" width=450 height=20 border=0></td></tr>" & vbcrlf)

	if (rsDat.BOF and rsDat.EOF) then
		Response.Write("<tr><td><B>Sorry, currently we do not have any events.</B></td></tr>") 
		Response.Write ("<tr><td width=450><img src=""images/spacer.gif"" width=450 height=20 border=0></td></tr>" & vbcrlf)

	else
		rsDat.MoveFirst 
		while not rsDat.EOF
			Response.Write ("<tr><td valign=top>")
			if trim(rsDat("diversity_title"))<>"" then  
				Response.Write ("<p><b>" & trim(rsDat("diversity_title")) & "</b><br>" & vbcrlf)
			else
				Response.Write ("<p><b>" & trim(rsDat("campus_title")) & "</b><br>" & vbcrlf)
			end if
			Response.Write (left(MonthName(Month(rsDat("start_date"))),3) & "  " & Day(rsDat("start_date")) & " -" & left(MonthName(Month(rsDat("end_date"))),3) & "  " & Day(rsDat("end_date")) & ", " & year(rsDat("end_date")) & ", " & rsDat("state") & "</p>" & vbcrlf)
			Response.Write ("<p>" & replace(trim(rsDat("description")),vbcrlf,"<br>") & "</p><br>" & vbcrlf)
			Response.Write("</td></tr>")
			Response.Write ("<tr><td width=450><img src=""images/spacer.gif"" width=450 height=20 border=0></td></tr>" & vbcrlf)
			rsDat.MoveNext 
		wend 
		
	end if
	rsDat.Close
	set rsDat=nothing
 	Response.Write("</table>")
end function

'*************** SET Functions ************************
function setState(stnmbr)
	set rsS = server.CreateObject("ADODB.Recordset")
	sql = "select * from state order by LONGSTATE"
	rsS.Open sql, cn, adOpenStatic
	if not (rsS.EOF and rsS.BOF) then
		rsS.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
		while not rsS.EOF
			if trim(rsS("pstate"))= trim(stnmbr) then s="selected"
			Response.Write("<option value=" & chr(34) & rsS("pstate")& chr(34) & " " & s & ">" & rsS("longstate")& "</option>")
			rsS.MoveNext
			s=""
		wend
	end if			
	rsS.Close
	set rsS = nothing
end function 

function setSchool(cat,stnmbr)
	set rs = server.CreateObject("ADODB.Recordset")
	if trim(cat) = "1" then 
		sql = "select * from school where active=1 order by school"
	else
		sql = "select * from school where active=1 order by category, school"
	end if
	rs.Open sql, cn, adOpenStatic
	if not (rs.EOF and rs.BOF) then
		rs.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
		do while not rs.EOF
			if trim(rs("pschool"))= trim(stnmbr) then s=" selected"
			select case trim(rs("PSchool"))
			case "1","53" 
				Response.Write("<option value="""""""">" & trim(rs("school")) & "</option>" & vbCrLf) 
			case else
				Response.Write("<option value=""" & trim(rs("pschool")) & """  " & s & ">" & trim(rs("school")) & "</option>" & vbCrLf) 
			end select				
			rs.MoveNext
			s=""
		loop
	end if			
	rs.Close
	set rs = nothing
end function 
function setDate(mydt)
	for i=1 to 31
	if cint(mydt)=i then s="selected"
	Response.Write("<option value=" & i & " " & s & ">" & i & "</option>" & vbcrlf)
	s=""
	next
end function

function setMonth(mydt)
	set rsS = server.CreateObject("ADODB.Recordset")
	sql = "select * from Month order by pmonth"
	rsS.Open sql, cn, adOpenStatic
	if not (rsS.EOF and rsS.BOF) then
		rsS.MoveFirst
		rsExist = true
	end if 
	if (rsExist) then
			'Response.Write("<SELECT name=" & chr(34) & "state" & chr(34) & " onClick=" & chr(34) & "document.frmCat.Locale[0].checked=true;" & chr(34) & " onChange=" & chr(34) & "document.frmCat.Locale[0].checked=true;" & chr(34) & ">")
			'Response.Write("<option value=" & chr(34) & "ALL" & chr(34) & " selected>ALL</option>") 		
		while not rsS.EOF
			if trim(rsS("pmonth"))= trim(mydt) then s="selected"
			Response.Write("<option value=" & chr(34) & rsS("pmonth")& chr(34) & " " & s & ">" & rsS("month")& "</option>")
			rsS.MoveNext
			s=""
		wend
	end if			
	rsS.Close
	set rsS = nothing
end function

function setYear(mydt)
	s=""
	curyear=year(now())
	startyear=2002
	
	for i=startyear to (curyear+5)
		if trim(i)= trim(mydt) then s="selected"
		Response.Write("<option value=""" & i & """  " & s &">" & i & "</option>")
		s=""
	next
end function

function setAlphabet(alp)
s=""
for i=97 to 122
if trim(Ucase(Chr(i)))=ucase(trim(alp)) then s=" Selected"
Response.Write("<option value=""" & Ucase(Chr(i)) & """ " & s & ">" & Ucase(Chr(i)) & "</option>") 
s=""
next
end function


%> 

