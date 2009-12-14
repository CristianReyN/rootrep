<%

const adParamInput       = &H0001
const adParamReturnValue = &H0004
const adParamOutput      = 2
const adCmdStoredProc    = &H0004
const adUseClient        = 3
const adInteger		 = 3
const adVarChar = 200

'dim talentid : talentid = Trim(Request.QueryString("talentid"))
'dim familyid : familyid = Trim(Request.QueryString("familyid"))
'dim rowcount : rowcount = Trim(Request.QueryString("rowcount"))
dim globalfamilyids : globalfamilyid = Trim(Request.QueryString("globalfamilyids"))

dim objCon
        set  objCon  = server.CreateObject("ADODB.Connection")
with objCon  
	.CursorLocation = adUseClient
	.Open "file name=D:\data\db\Boa.udl"
end with

Dim objCMD 
Set objCMD=server.CreateObject("ADODB.Command")
set objRS = Server.CreateObject("adodb.recordset")

'response.write ("<table width=""550"" style=""border-width: 1px; border-style: inset; border-color: #111111;"">")

If familyid <> "" or globalfamilyids<> "" Then
    If rowcount <> "" Then
        'familyid scenario		
		With objCMD
		     .CommandType=adCmdStoredProc
		     .CommandText = "P_Hotlist_Family"
		     set .ActiveConnection = objCon     
		     .parameters.append .createparameter("@RETURN_VALUE", adInteger, adParamReturnValue, 0)      
		     .parameters.append .createparameter("@familyid", adInteger, adParamInput, 0, familyid)
		     .parameters.append .createparameter("@globalfamilyids",adVarChar   , adParamInput, 0, globalfamilyids)
		     .parameters.append .createparameter("@rowcount", adInteger, adParamInput, 0, rowcount) 
		  set objRS = .execute()
		end with
    Else
        Response.Write("<tr><td>Parameters Haven't Been Provided.</td></tr>")
    End If
Else
    If talentid <> "" and rowcount <> "" Then
        'talentid scenario
		With objCMD
		     .CommandType=adCmdStoredProc
		     .CommandText = "P_Hotlist_Talent"
		     set .ActiveConnection=objCon
		     .parameters.append .createparameter("@talentid", adInteger, adParamInput, 4, talentid)
		     .parameters.append .createparameter("@rowcount", adInteger, adParamInput, 4, rowcount) 
		  set objRS = .execute()
		end with               
    Else
        Response.Write("<tr><td>Parameters Haven't Been Provided.</td></tr>")
    End If
End If		

'dim sHTML
'sHTML=objrs.GetString(2,rowcount,"</td>","</tr><tr><td>","")
'Response.Write sHTML

if objRS.state = 1 then  
   With objRS		
		do while not .eof		
		   Response.write ("<tr><td><a href=""/JobDetails.aspx?JobID=" & .fields.item("req_id").value & "&areasoftalent=" & talentid & "&jfamily=" & familyid & "&keywords=" & keywords & "&SearchPage=" & SearchPage & """>" & .fields.item("job_title").value & ", " & .fields.item("locations").value & "</a></td></tr>") 		
   		   .moveNext				
		loop			
		.Close			
   end With
end if

'response.write ("</table>")
		
set objRS = nothing
set objCMD = nothing
objCon.close
set objcon = nothing
%>

