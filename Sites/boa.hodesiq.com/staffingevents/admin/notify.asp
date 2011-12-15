<%Response.Buffer=true%>
<!--#include file="include/events_global.asp"-->
<!--#include file="include/util_function.asp"-->
<%
SetLocale(1033)
CALL OpenConnection()
myid=Request("vvid")
if myid="" then	Response.Redirect("admin.asp")
	sql="select rEmail from events where active=1 and pevent=" & myid
	set rsdat=server.CreateObject("ADODB.Recordset")
	rsdat.Open sql,cn,adOpenStatic
	if (rsdat.EOF and rsdat.BOF) then  
		Response.Redirect("browse_events.asp")
	end if
	rEmail = trim(rsdat("rEmail"))
	rsdat.Close
	set rsdat=nothing
'end if
CALL closeConnection()	
%>
<HTML>
<HEAD>
<link rel="stylesheet" href="include/styles.css" type="text/css">
<title>Bank of America</title>
<META name="keywords" content="">
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
   
var etype=true;
function PreviewMe(){
	var prv;
	prv=checkMe();
	document.frmCat.action="preview.asp";
	document.frmCat.target ="newp";
	document.frmCat.submit();
}

function validateMe(){
	if (checkMe()){document.frmCat.action="processNotify.asp";document.frmCat.target ="_self";document.frmCat.submit();}
}


function checkMe(){
var f=document.frmCat;
var em="";
var etype=false;
if (f.txtSub.value=="" ){em=em+"\n  - Missing Email Subject";}
if (f.txtEmail.value=="" ){em=em+"\n  - Missing Your email.";}
//else{if (f.txtEmail.value!=f.rEmail.value){em=em+"\n  - Your email does not match the email address on our record.";}}
if (f.txtBody.value){if ((f.txtBody.value.length) > 2000){em=em+"\n  - E-mail body can not be more than 2000 character.";}}else{em=em+"\n  - E-mail body text.";}
if (em){alert("STOP!!\n\nPlease check following :\n--------------------------------------" + em);return false;
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
//-->
</script>
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
<br><form name="frmCat" method="post" action="processNotify.asp">
<a href="admin.asp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A HREF=logout.asp>Logout</A><br><br>
<table width="100%" cellpadding="5" cellspacing="0" border="0" bgcolor="#ffffff">
<tr>
	<td width=150 valign="top" align=right><font class="gryfttxt"><b>Pass</font></td>
	<td valign="top"><font class="gryfttxt"><input type="radio" name=txtPass  value="1" checked> </font></td>
</tr>
<tr>
	<td width=150 valign="top" align=right><font class="gryfttxt"><b>Failed</font></td>
	<td valign="top"><font class="gryfttxt"><input type="radio" name=txtPass  value="0"> </font></td>
</tr>
<tr>
	<td width=150 valign="top"><font class="gryfttxt"><b>Subject line:</font></td>
	<td valign="top"><font class="gryfttxt"><input type="text" name=txtSub maxlength="255" value="" class="evtxt"  size=35></font></td>
</tr>
<tr>
	<td width=150 valign="top"><font class="gryfttxt"><b>Your E-mail Address:</font></td>
	<td valign="top"><font class="gryfttxt"><input name=txtEmail maxlength="255" value="" class="evtxt" id=txtSub1 type=text size=35></font></td>
</tr>
<tr>
	<td width=150 valign="top"><font class="gryfttxt"><b>E-mail Body:</font><br><span class="redevtxt"><br>(2000 characters max)</span></td>
	<td valign="top"><font class="gryfttxt"><textarea class="evtxt"  name=txtBody rows=10 cols=30></textarea></font></td>
</tr>
<tr>
	<td width=150 valign="top"><font class="gryfttxt"></td>
	<td valign="top"><font class="gryfttxt"><input type="button" onclick="javascript: validateMe();" class="evtxt"  value="  Submit  "></font></td>
</tr>
</table><input type="hidden" name="rEmail" value="<%=rEmail%>"><input type="hidden" name="pid" value="<%=myid%>"></form>
</td></tr>


<tr><td colspan="6"><!-- #include file=include/footer.inc --></td></tr>
</table>
<!-- content table ends -->

</td> 
<td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td></tr></table>
</td></tr></table>
</HTML>
