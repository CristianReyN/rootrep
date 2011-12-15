<%Response.Buffer=true%>
<!--#include file="include/events_global.asp"-->
<!--#include file="include/util_function.asp"-->

<%
	SetLocale(1033)
	call openConnection
	'recF=trim(request("recF"))
	'on Error Resume next
	strSub=trim(request("txtSub"))
	strEmail=trim(request("txtEmail"))
	rEmail=trim(request("rEmail"))
	strBody=trim(request("txtBody"))
	pass=trim(request("txtPass"))
	pevent=trim(request("pid"))
	n=trim(request("txtPass"))
	select case n
		case "1"
			sql="Select distinct(Email) from vEmail where pass_fail=1 and pevent=" & pevent & " order by email"
		case "0"
			sql="Select distinct(Email) from vEmail where pass_fail=0  and pevent=" & pevent & " order by email"
	end select
	'Response.Write n
	if trim(sql) <> "" then 
		set rs = server.CreateObject("ADODB.Recordset")
		rs.Open sql,cn,3
		if not (rs.EOF and rs.BOF) then
			Set objMail = Server.CreateObject("CDO.Message")
			while not rs.EOF 
				objMail.From=strEmail
				objMail.To=trim(rs("email"))
				objMail.Subject=strSub 
				objMail.TEXTBody = strBody & vbcrlf '&  trim(rs("email"))
				objMail.Send
				rs.MoveNext
			wend
				' Following notifies the submitter
				objMail.From=strEmail
				objMail.To=strEmail
				objMail.cc=rEmail
				objMail.Subject=strSub '& "  Submission "
				objMail.TEXTBody = strBody
				objMail.Send
				
			Set objMail=Nothing
		end if			
		rs.Close
		set rs = nothing
		
		cn.execute "update schedule set  EmailNotification=1,DateNotified='" & now() & "', Notifiedby='" & strEmail & "' where pevent=" & pevent
			'*******************************************
			em=0 '"Success!! Your request has been processed"
			Response.Redirect("msg.asp?emNo=1&em=" & em)
	else
			em = 1 '"Sorry!! There was an error.  Please go back and try again."
			Response.Redirect("msg.asp?emNo=1&em=" & em)
	end if	

call closeConnection()
%>

