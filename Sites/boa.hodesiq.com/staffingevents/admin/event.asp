<%Response.Buffer=true%>
<!--#include file="include/security.asp"-->
<!--#include file="../../Includes/conn.asp"-->
<!--#include file="include/events_func.asp"-->
<%
SetLocale(1033)
pageid="event"
Dim eventStartDate, eventEndDate, chkSchedule, chkPreRegistration, chkActive, time_zone, state_id, country_id, job_type_id, event_type_id, Ev_ent
myid=Request.QueryString("id")
ca_se=Request.QueryString("case")
If ca_se = "" Then ca_se = "add"
If myid="" And ca_se = "edit" Then 
	Response.Redirect("admin.asp")
Else
	eventStartDate=""
	eventEndDate=""
	chkSchedule=""
	chkPreRegistration=""
	chkActive=""
	time_zone=""
	state_id = ""
    country_id = ""
	job_type_id = ""
	event_type_id = ""
	
	Set Ev_ent = Session.Contents
	
	If myid="" Then
		
	Else
		Set cnnEv = OpenConnectionEx(strEventsConnection)
		Set rsEvent = getEvent(myid, "read")
		
		If (rsEvent.EOF and rsEvent.BOF) Then  
			Response.Redirect("browse_events.asp")
		End If
		
		If trim(Session.Contents("err")) = "" Then Set Ev_ent = rsEvent
	End If
	
	if Ev_ent("schedule")="True" Or Ev_ent("schedule")="1" Then chkSchedule=" checked"
	if Ev_ent("preregistration")="True" Or Ev_ent("preregistration")="1" Then chkPreRegistration=" checked"
	if Ev_ent("active")="True" Or Ev_ent("active")="1" Then chkActive=" checked"
	if myid="" Then chkActive=" checked"
	if trim(Ev_ent("event_date")) <> "" Then eventStartDate=FormatDateTime(Ev_ent("event_date"),2)
	if trim(Ev_ent("event_end_date")) <> "" Then eventEndDate=FormatDateTime(Ev_ent("event_end_date"),2)
	if trim(Ev_ent("TimeZone")) <> "" Then time_zone=trim(Ev_ent("TimeZone"))
	if trim(Ev_ent("pstate")) <> "" Then state_id=Ev_ent("pstate")
    if trim(Ev_ent("countryID")) <> "" Then country_id=Ev_ent("countryID")
	if trim(Ev_ent("ppoi")) <> "" Then job_type_id=Ev_ent("ppoi")
	if trim(Ev_ent("etid")) <> "" Then event_type_id=Ev_ent("etid")
	
	success_message = trim(Session.Contents("msg"))
	If success_message <> "" Then
		Session.Contents.Remove("msg")
		success_message_arr = Split(success_message,",")
		For i = 0 To Ubound(success_message_arr)
			success_message_arr(i) = getMsg(success_message_arr(i))
		Next
		success_message = Join(success_message_arr, "<br>")
	End If
	
	error_message = trim(Session.Contents("err"))
	If error_message <> "" Then
		Session.Contents.Remove("err")
		error_message_arr = Split(error_message,",")
		For i = 0 To Ubound(error_message_arr)
			error_message_arr(i) = getErrorMsg(error_message_arr(i))
		Next
		error_message = Join(error_message_arr, "<br>")
	End If
%>
<HTML>
<HEAD>
<SCRIPT src="js/date.rev.js" type=text/javascript></SCRIPT>
<script language="Javascript">
<!--
function IsNumeric(strString)
//  check for valid numeric strings	
{
	var strValidChars = "0123456789.-";
	var strChar;
	var blnResult = true;
	if (strString.length == 0) return false;
//  test strString consists of valid characters listed above
	for (i = 0; i < strString.length && blnResult == true; i++)
	{
		strChar = strString.charAt(i);
		if (strValidChars.indexOf(strChar) == -1)
		{
			blnResult = false;
		}
	}
	return blnResult;
}
   
function PreviewMe()
{
	var prv;
	prv=checkMe();
	if (prv){
		document.frmCat.action="preview_event.asp";
		document.frmCat.target ="_blank";
		document.frmCat.submit();
	}
}
   
function CopyMe()
{
	document.frmCat.todo.value = "Copy";
	document.frmCat.action="process_event.asp";
	document.frmCat.target ="_self";
	document.frmCat.submit();
}

function validateMe()
{
	if (checkMe()){document.frmCat.action="process_event.asp";document.frmCat.target ="_self";document.frmCat.submit();}
}

Calendar_Callback = "setEndDate";
function setEndDate(from_date_input)
{
	var f=document.frmCat;
	if ( from_date_input && from_date_input != f.eventEndDate && f.eventEndDate.value.trim() == "" ) f.eventEndDate.value = f.eventStartDate.value;
}
String.prototype.trim = function()
{
	return this.replace(/^\s+|\s+$/g,"");
}

function checkMe(){
var f=document.frmCat;
var em="";
if (f.ev_title.value=="" ){em=em+"\n  - <%=getErrorMsg(10)%>";}

if (f.country[f.country.selectedIndex].value == "") { em = em + "\n  - <%=getErrorMsg(29)%>"; }
    var x = document.getElementById("country");
    var strCountry = x.options[x.selectedIndex].text;
    var stateDDL = document.getElementById("state");
    if (strCountry == "United States") {
        if (f.state[f.state.selectedIndex].value == "") { em = em + "\n  - <%=getErrorMsg(14)%>"; }
    }

if (f.lob[f.lob.selectedIndex].value=="" ){em=em+"\n  - <%=getErrorMsg(16)%>";}
if (f.eventStartDate.value=="" ){em=em+"\n  - <%=getErrorMsg(11)%>";}
if (f.eventEndDate.value=="" ){em=em+"\n  - <%=getErrorMsg(26)%>";}
if (f.eventStartTime.value=="" ){em=em+"\n  - <%=getErrorMsg(12)%>";}
if (f.eventEndTime.value==""){em=em+"\n  - <%=getErrorMsg(13)%>";}
if (f.evLocation.value=="" ){em=em+"\n  - <%=getErrorMsg(15)%>";}
if (f.ev_desc.value){if ((f.ev_desc.value.length) > 1000){em=em+"\n  - <%=getErrorMsg(22)%>";}}
/*if (f.chkSchedule.checked)
{
	if ( f.rSlot.value=="" ) { em=em+"\n  - <%=getErrorMsg(19)%>"; } else { if( IsNumeric(f.rSlot.value) && parseInt(f.rSlot.value) == f.rSlot.value && f.rSlot.value.indexOf(".") == -1 ){}else{em=em+"\n  - <%=getErrorMsg(20)%>";} }
}*/
//if ( !f.chkSchedule.checked && f.rSlot.value!="" ){em=em+"\n  - <%=getErrorMsg(18)%>";}
if (f.chkPreRegistration.checked && f.EventAddInfo.value==""){em=em+"\n  - <%=getErrorMsg(25)%>";}
//if ( !f.chkPreRegistration.checked && f.EventAddInfo.value!="" ){em=em+"\n  - <%=getErrorMsg(28)%>";}
if (f.tz[f.tz.selectedIndex].value=="" ){em=em+"\n  - <%=getErrorMsg(21)%>";}
if (f.rEmail.value=="" ){em=em+"\n  - <%=getErrorMsg(17)%>";}
if (f.etid.value=="" ){em=em+"\n  - <%=getErrorMsg(23)%>";}
if (f.EventAddress.value=="" ){em=em+"\n  - <%=getErrorMsg(24)%>";}
if (em){alert("<%=error_prefix%>\n--------------------------------------" + em);return false;
}else{return true;}
}

function openAWindow( pageToLoad, winName, width, height, center) {
 	xposition=0; yposition=0;
    if ((parseInt(navigator.appVersion) >= 4 ) && (center)){
        xposition = (screen.width - width) / 2;
        yposition = (screen.height - height) / 2;
    }
    args = "width=" + width + "," 
    + "height=" + height + "," 
    + "location=0," 
    + "menubar=0,"
    + "resizable=1,"
    + "scrollbars=1,"
    + "status=0," 
    + "titlebar=0,"
    + "toolbar=0,"
    + "hotkeys=0,"
    + "screenx=" + xposition + ","  //NN Only
    + "screeny=" + yposition + ","  //NN Only
    + "left=" + xposition + ","     //IE Only
    + "top=" + yposition;           //IE Only
    window.open( pageToLoad,winName,args );

}

function CheckCountry() {
    var x = document.getElementById("country");
    var strCountry = x.options[x.selectedIndex].text;
    var stateDDL = document.getElementById("state");

    if (strCountry == "United States") {
        stateDDL.disabled = false;
    }
    else {
        stateDDL.selectedIndex = 0;
        stateDDL.disabled = true;
    }

}
//-->
</script>
<TITLE>Bank of America : Events</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="include/styles.css" type="text/css">
<META name="keywords" content="">
</HEAD>
<BODY bgcolor="#f6f6f6" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" rightmargin="0" bottommargin="0">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td align="left" valign="top" width="22"><IMG SRC="images/spacer.gif" WIDTH="22" HEIGHT="1" BORDER="0"></td>
<td align="left" valign="top" width="100%">
<table width="705" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
<tr><td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td>
<td width="685">
<!-- content table begins -->
<table width="685" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
<tr><td colspan="6"><!-- #include file=include/top_nav.inc --></td></tr>
<tr><td colspan="6"><IMG SRC="images/spacer.gif" WIDTH="20" HEIGHT="15" BORDER="0"></td></tr>
<tr><td width="20" valign="top" rowspan="2"><IMG SRC="images/spacer.gif" WIDTH="20" HEIGHT="1" BORDER="0"></td>
<td width="75" valign="top" align="left"><IMG SRC="images/spacer.gif" WIDTH="75" HEIGHT="1" BORDER="0"></td>
<td width="10" valign="top"><IMG SRC="images/spacer.gif" WIDTH="10" HEIGHT="1" BORDER="0"></td>
<td width="400" valign="top"><IMG SRC="images/spacer.gif" WIDTH="400" HEIGHT="1" BORDER="0"></td>
<td width="10" valign="top" rowspan="2"><IMG SRC="images/spacer.gif" WIDTH="10" HEIGHT="1" BORDER="0"></td>
<td width="170" valign="top" rowspan="2">
<img src="images/spacer.gif" width="170" height="8" border="0"><br>
</td></tr>
<tr><td valign="top" colspan="3">
<FORM name="frmCat" METHOD="POST" action="process_event.asp" target="_self">
	<input type="hidden" name="todo" value="<% If ca_se = "edit" Then %>Update<% Else %>Save<% End If %>">
	<input type="hidden" name="vvid" value="0">
	<input type="hidden" name="id" value="<%=myid%>">
	<TABLE WIDTH=100% BORDER=0 CELLSPACING=0 CELLPADDING=0>
	<TR VALIGN=TOP ALIGN=LEFT>
		<TD>
			<!--#include file="include/nav.asp"-->
			<br><br>
<% If success_message <> "" Then %>
	<p class="msgtxt"><%=success_message %></p><br>
<% End If %>
<% If error_message <> "" Then %>
	<p class="evtxt"><%=error_prefix&"<br>"&error_message %></p><br>
<% End If %>
			<center>
			<TABLE CELLSPACING=0 CELLPADDING=3 width=100%>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT Colspan=2><% If ca_se = "edit" Then %><p><b><u>Update An Event:</u></b><% Else %><p><b><u>Add a new Event:</u></b> &nbsp;&nbsp;&nbsp;* Indicates required field</p><% End If %></p></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT width=150><p>*Event Title&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input type="Text" name="ev_title" value="<%=trim(Ev_ent("event_title"))%>" maxlength="250" size="60" style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif"></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event Type&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><select name="etid" class="evtxt"><option value="">- Select -</option><%eventTypesOptions(event_type_id)%></select></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Job Area&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><select name="lob" class="evtxt"><option value="">- Select -</option><%jobTypeOptions(job_type_id)%></select></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>Job Description URL. URL from Career's website <strong>(preferred)</strong>, Taleo ATS, or I-Grasp ATS  :<br><span class="redevtxt">(200 characters max)</span></p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input type="Text" name="JobDescriptionURL" value="<%=trim(Ev_ent("JobDescriptionURL"))%>" maxlength="200" size="60" style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif"></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event Start Date&nbsp;:&nbsp;&nbsp;<br>(mm/dd/yyyy)</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input onchange="setEndDate();" type="Text" name="eventStartDate" value="<%=eventStartDate%>" maxlength="15" size="20" style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif"> <a href="javascript:show_calendar('frmCat.eventStartDate');" onmouseover="window.status='Starting Date';return true;" onmouseout="window.status='';return true;"><img src="images/calendar.gif" border="0" alt="Click &amp; select a date" align="top" ></a></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event End Date&nbsp;:&nbsp;&nbsp;<br>(mm/dd/yyyy)</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input type="Text" name="eventEndDate" value="<%=eventEndDate%>" maxlength="15" size="20" style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif"> <a href="javascript:show_calendar('frmCat.eventEndDate');" onmouseover="window.status='Ending Date';return true;" onmouseout="window.status='';return true;"><img src="images/calendar.gif" border="0" alt="Click &amp; select a date" align="top" ></a></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event Start Time&nbsp;:&nbsp;&nbsp;<br>(e.g., 10:00 AM)</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input TYPE="Text" name="eventStartTime" value="<%=trim(Ev_ent("start_time"))%>" size="8" maxlength="15" size="10" style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif"></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event End Time&nbsp;:&nbsp;&nbsp;<br>(e.g., 5:00 PM)</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input TYPE="Text" name="eventEndTime" value="<%=trim(Ev_ent("end_time"))%>" size="8" maxlength="15" size="10" style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif"></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>Time Zone&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><select name=tz  class="evtxt"><option value="">- Select -</option>
													<option value="EDT"<% If time_zone = "EDT" Then %> selected<% End If %>>Eastern</option>
													<option value="CDT"<% If time_zone = "CDT" Then %> selected<% End If %>>Central</option>
													<option value="MDT"<% If time_zone = "MDT" Then %> selected<% End If %>>Mountain</option>
													<option value="PDT"<% If time_zone = "PDT" Then %> selected<% End If %>>Pacific</option>
				</select></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event Address&nbsp;:&nbsp;&nbsp;<br><span class="redevtxt">(200 characters max)</span></p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><textarea name="EventAddress" maxlength="200"  rows="5" cols="40" style="font-size: 9pt; font-family: Arial,verdana,Helvetica,sans-serif"><%=trim(Ev_ent("EventAddress"))%></textarea></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event City&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input type="Text"  name="evLocation" value="<%=trim(Ev_ent("location"))%>" maxlength=400 width=40  size=40 style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif"></TD>
			</TR>
			
            <TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event Country&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><select name="country" id="country" onchange="CheckCountry();" class="evtxt"><option value="" selected> - Select -</option><%countryOptions(country_id)%></select></TD>
			</TR>

            <TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Event State&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><select name="state" id="state" class="evtxt"><option value="" selected> - Select -</option><%statesOptions(state_id)%></select></TD>
			</TR>
            
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT width=180><p>*Check here if pre-registration is required&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input TYPE="checkbox" name="chkPreRegistration" value="1" <%=chkPreRegistration%>></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Additional information, include the pre-registration link if pre-registration is required&nbsp;:&nbsp;&nbsp;<br><span class="redevtxt">(200 characters max)</span></p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><textarea name="EventAddInfo" maxlength="200"  rows="5" cols="40" style="font-size: 9pt; font-family: Arial,verdana,Helvetica,sans-serif;"><%=trim(Ev_ent("EventAddInfo"))%></textarea></TD>
			</TR>
			<!--<p>Direction/ Special Instructions&nbsp;:&nbsp;&nbsp;<br><span class="redevtxt">(1000 characters max)</span></p>-->
			<textarea name="ev_desc" maxlength="1000"  rows="5" cols="40" style="font-size: 9pt; font-family: Arial,verdana,Helvetica,sans-serif; display: none;"><%=trim(Ev_ent("description"))%></textarea>
			<!--<p>*Check if <u>Pre-Scheduling</u> required&nbsp;:&nbsp;&nbsp;</p>-->
			<input type="checkbox" name="chkSchedule" style="display: none;" value="1" <%=chkSchedule%>>
			<!--<p>No of Slots&nbsp;:&nbsp;&nbsp;</p>-->
			<input type="Text"  name="rSlot" value="<%=trim(Ev_ent("rSlot"))%>" maxlength="10" size="10" style="display: none; font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif;">
			<!--<p>Event Budget&nbsp;:&nbsp;&nbsp;<span class="redevtxt"><br>(0,000.00)</span>$ </p>-->
			<input type="Text"  name="rBudget" value="<%=trim(Ev_ent("budget"))%>" maxlength="50" size="20" style="display: none; font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif;">
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT><p>*Your E-mail Address&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT><input type="Text"  name="rEmail" value="<%=trim(Ev_ent("rEmail"))%>" maxlength=150 width=40  size=40 style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif;"></TD>
			</TR>
			<TR>
				<TD VALIGN=TOP ALIGN=LEFT width=180 style="border-top: 1px solid #999999; border-bottom: 1px solid #999999;"><p>Active&nbsp;:&nbsp;&nbsp;</p></TD>
				<TD VALIGN=TOP ALIGN=LEFT style="border-top: 1px solid #999999; border-bottom: 1px solid #999999;"><input type="checkbox" name="chkEventActive" value="1" <%=chkActive%>></TD>
			</TR>
			<TR VALIGN=TOP>
				<TD> &nbsp;</TD>
				<TD align=left><input type="button" value="<% If ca_se = "edit" Then %>Update Event<% Else %>Add Event<% End If %>" onclick="javascript: validateMe();"  class="evtxt" id="button1" name="button1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" Preview Event" onclick="javascript: PreviewMe();"  class="evtxt"  id="button3" name="button3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% If ca_se = "edit" Then %><input type="button" value=" Copy Event" onclick="javascript: CopyMe();"  class="evtxt"  id="button4" name="button4"><% End If %><BR><BR></TD>
			</TR>
			</TABLE>
			</center>
		</TD>
	</TR>
	</TABLE>
</FORM>
</td></tr>
<tr><td colspan="6"><!-- #include file=include/footer.inc --></td></tr>
</table>
<!-- content table ends -->
</td> 
<td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td></tr></table>
</td></tr></table>
</BODY>
</HTML>
<%
End If
Call CloseConnectionEx(cnnEv)
Call RemoveEventSessionVars()
%>