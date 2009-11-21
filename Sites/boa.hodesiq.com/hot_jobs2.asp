<%
        set  objCon  = server.CreateObject("ADODB.Connection")
with objCon  
	.CursorLocation = adUseClient
	.Open "file name=D:\data\db\Boa.udl"
end with

Set objCMD=server.CreateObject("ADODB.Command")
set objRS = Server.CreateObject("adodb.recordset")

If familyid <> "" Then
    If rowcount <> "" Then
        'familyid scenario		
		With objCMD
		     .CommandType=adCmdStoredProc
		     .CommandText = "P_Hotlist_Family"
		     set .ActiveConnection = objCon     
		     .parameters.append .createparameter("@RETURN_VALUE", adInteger, adParamReturnValue, 0)      
		     .parameters.append .createparameter("@familyid", adInteger, adParamInput, 0, familyid)
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

if objRS.state = 1 then  
   With objRS		
		do while not .eof		
		   Response.write ("<tr><td><a href=""/JobDetails.aspx?JobID=" & .fields.item("req_id").value & "&areasoftalent=" & talentid & "&jfamily=" & familyid & "&keywords=" & keywords & "&SearchPage=" & SearchPage & """>" & .fields.item("job_title").value & ", " & .fields.item("locations").value & "</a></td></tr>") 		
   		   .moveNext				
		loop			
		.Close			
   end With
end if

set objRS = nothing
set objCMD = nothing
objCon.close
set objcon = nothing
%>

