<%
'
'
' set  objCon  = server.CreateObject("ADODB.Connection")
'with objCon
'	.CursorLocation = adUseClient
'	.Open "file name=D:\data\db\Boa.udl"
'end with
'
'
'Set objCMD=server.CreateObject("ADODB.Command")
'set objRS = Server.CreateObject("adodb.recordset")
'
''response.write ("<table width=""550"" style=""border-width: 1px; border-style: inset; border-color: #111111;"">")
'
'If familyid <> "" Then
'    If rowcount <> "" Then
'        'familyid scenario
'		With objCMD
'		     .CommandType=adCmdStoredProc
'		     .CommandText = "P_Hotlist_Family"
'		     set .ActiveConnection = objCon     
'		     .parameters.append .createparameter("@RETURN_VALUE", adInteger, adParamReturnValue, 0)      
'		     .parameters.append .createparameter("@familyid", adInteger, adParamInput, 0, familyid)		     
'		     .parameters.append .createparameter("@rowcount", adInteger, adParamInput, 0, rowcount)
'		     .parameters.append .createparameter("@globaljobsfamilyids", adVarchar, adParamInput, 255, globaljobsfamilyids) 
'		  set objRS = .execute()
'		end with
'    Else
'        Response.Write("<tr><td>Parameters Haven't Been Provided.</td></tr>")
'    End If
'Else
'    If talentid <> "" and rowcount <> "" Then
'        'talentid scenario
'		With objCMD
'		     .CommandType=adCmdStoredProc
'		     .CommandText = "P_Hotlist_Talent"
'		     set .ActiveConnection=objCon
'		     .parameters.append .createparameter("@talentid", adInteger, adParamInput,0, talentid)			     			     
'		     .parameters.append .createparameter("@rowcount", adInteger, adParamInput, 0, rowcount) 
'		     .parameters.append .createparameter("@globaljobsfamilyids", adVarchar, adParamInput, 255, globaljobsfamilyids)
'		     
'		  set objRS = .execute()
'		end with
'    Else
'        Response.Write("<tr><td>Parameters Haven't Been Provided.</td></tr>")
'    End If
'End If
'
'
'if objRS.state = 1 then  
'   With objRS
'		do while not .eof
'		   Response.write ("<tr><td><a class='ip' href=""../JobDetails.aspx?JobID=" & .fields.item("req_id").value & "&CountryID=" & .fields.item("countryid").value & "&LocationID=" & .fields.item("locationid").value & "&FeedName=" & .fields.item("feedname").value & "&areasoftalent=" & talentid & "&jfamily=" & familyid & "&keywords=" & keywords & "&SearchPage=" & SearchPage & """>" & .fields.item("job_title").value & ", " & .fields.item("locations").value & "</a></td></tr>")
'   		   .moveNext
'		loop
'		.Close
'   end With
'end if
'
''response.write ("</table>")
'
'set objRS = nothing
'set objCMD = nothing
'objCon.close
'set objcon = nothing
%>

<%
set xmlDoc=server.CreateObject("MSXML2.DOMDocument.3.0")
set xmlappSettings=server.CreateObject("MSXML2.DOMDocument.3.0")
set xmladd=server.CreateObject("MSXML2.DOMDocument.3.0")
xmlDoc.async="false"
xmlDoc.load(server.MapPath ("..\web.config"))

set xmlappSettings = xmldoc.GetElementsByTagName("appSettings").Item(0) 
set xmladd = xmlappSettings.GetElementsByTagName("add")

dim strHiringOrgID, strEmediaID, iCustomQID, strAnswer

for each x in xmladd 
    if  x.getAttribute("key") = "hiringOrgID" then
        strHiringOrgID = x.getAttribute("value")  
    end if
    if  x.getAttribute("key") = "emediaID" then
        strEmediaID = x.getAttribute("value")  
    end if
    if  x.getAttribute("key") = "hotjobsQID" then
        iCustomQID = x.getAttribute("value")  
    end if
   
next

'Response.write "<br>strHiringOrgID=" & strHiringOrgID
'Response.write "<br>strEmediaID=" & strEmediaID
'Response.write "<br>iCustomQID=" & iCustomQID

%>
<%
dim objRS
dim objCon
        set  objCon  = server.CreateObject("ADODB.Connection")
with objCon
	.CursorLocation = adUseClient
	.Open "file name=D:\data\db\iq2.udl"
end with

Dim objCMD 
Set objCMD=server.CreateObject("ADODB.Command")
set objRS = Server.CreateObject("adodb.recordset")

'response.write ("<table width=""350"" style=""border-width: 0px; border-style: inset; border-color: #111111;"">")
'response.write("<div>")

If familyid <> "" Then
    If rowcount <> "" Then
        'familyid scenario
		With objCMD
		     .CommandType=adCmdStoredProc
		     .CommandText = "p_cs_Hot_Jobs_Custom"
		     set .ActiveConnection = objCon     
		     '.parameters.append .createparameter("@RETURN_VALUE", adInteger, adParamReturnValue, 0)      
		     .parameters.append .createparameter("@HorgID", adInteger, adParamInput, 0, strHiringOrgID)		     
		     .parameters.append .createparameter("@EmediaID", adInteger, adParamInput, 0, strEmediaID)
             .parameters.append .createparameter("@x", adInteger, adParamInput, 0, 8)
             .parameters.append .createparameter("@CustomQuestionID", adInteger, adParamInput, 0, iCustomQID)
		     .parameters.append .createparameter("@Answer", adVarchar, adParamInput, 255, HotJobsPageName) 
		  set objRS = .execute()
		end with
    Else
        Response.Write("<tr><td>Parameters Haven't Been Provided.</td></tr>")
    End If
'Else
    'If talentid <> "" and rowcount <> "" Then
'        'talentid scenario
'		With objCMD
'		     .CommandType=adCmdStoredProc
'		     .CommandText = "P_Hotlist_Talent"
'		     set .ActiveConnection=objCon
'		     .parameters.append .createparameter("@talentid", adInteger, adParamInput,0, talentid)			     			     
'		     .parameters.append .createparameter("@rowcount", adInteger, adParamInput, 0, rowcount) 
'		     .parameters.append .createparameter("@globaljobsfamilyids", adVarchar, adParamInput, 255, globaljobsfamilyids)
'		     
'		  set objRS = .execute()
'		end with
'    Else
'        Response.Write("<tr><td>Parameters Haven't Been Provided.</td></tr>")
'    End If
End If


if objRS.state = 1 then  
   With objRS
		do while not .eof
		   Response.write ("<tr><td><a class='ip' href=""../JobDetails.aspx?JobID=" & .fields.item("requisition_id").value & """>" & .fields.item("title").value & "</a></td></tr>")
           'Response.write ("<a class='ip' href=""../JobDetails.aspx?JobID=" & .fields.item("requisition_id").value & """>" & .fields.item("title").value & "</a><br><br>")
   		   .moveNext
		loop
		.Close
   end With
end if

response.write ("</table>")

set objRS = nothing
set objCMD = nothing
objCon.close
set objcon = nothing
%>




<%
'Response.write "FamilyId=" & FamilyId & "<br>"
'Response.write "TalentId=" & TalentId & "<br>"
%>