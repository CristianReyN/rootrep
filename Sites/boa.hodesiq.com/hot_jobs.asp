
<%
'dim objRS
'dim objCon
'        set  objCon  = server.CreateObject("ADODB.Connection")
'with objCon
'	.CursorLocation = adUseClient
'	.Open "file name=D:\data\db\Boa.udl"
'end with
'
'Dim objCMD 
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
DIM PostData, strStatus, strRetVal, postUrl

PostData = _
"<SearchCriteriaHotOpeninglist xmlns=""http://schemas.datacontract.org/2004/07/JobSearch.Service.Model"">" &_
  "<CategoryIDs>-1</CategoryIDs>" &_
  "<CityIDs>-1</CityIDs>" &_
  "<CountryIDs>-1</CountryIDs>" &_
  "<EmediaID>'91929'</EmediaID>" &_
  "<HiringOrgMask>C722D101-0D08-4346-AC28-175FFC965C27</HiringOrgMask>" &_
  "<IPAddress>'10.150.97.25'</IPAddress>" &_
  "<KeyWords></KeyWords>" &_
  "<OrderByColumn></OrderByColumn>" &_
  "<OrderByDirection></OrderByDirection>" &_
  "<PageIndex>1</PageIndex>" &_
  "<PageSize>1</PageSize>" &_
  "<QandA>" &_
    "<SearchCriteriaQuestion>" &_
      "<AnswerIDs>" &_
        "<SearchCriteriaAnswers>" &_
          "<AnswerID>358827</AnswerID>" &_
        "</SearchCriteriaAnswers>" &_
      "</AnswerIDs>" &_
      "<QuestionID>2667</QuestionID>" &_
    "</SearchCriteriaQuestion>" &_
    "<SearchCriteriaQuestion>" &_
      "<AnswerIDs>" &_
        "<SearchCriteriaAnswers>" &_
          "<AnswerID>358820</AnswerID>" &_
        "</SearchCriteriaAnswers>" &_
      "</AnswerIDs>" &_
      "<QuestionID>2667</QuestionID>" &_
    "</SearchCriteriaQuestion>" &_
    "<SearchCriteriaQuestion>" &_
      "<AnswerIDs>" &_
        "<SearchCriteriaAnswers>" &_
          "<AnswerID>358826</AnswerID>" &_
        "</SearchCriteriaAnswers>" &_
      "</AnswerIDs>" &_
      "<QuestionID>2667</QuestionID>" &_
    "</SearchCriteriaQuestion>" &_
    "<SearchCriteriaQuestion>" &_
      "<AnswerIDs>" &_
        "<SearchCriteriaAnswers>" &_
          "<AnswerID>358825</AnswerID>" &_
        "</SearchCriteriaAnswers>" &_
      "</AnswerIDs>" &_
      "<QuestionID>2667</QuestionID>" &_
    "</SearchCriteriaQuestion>" &_
    "<SearchCriteriaQuestion>" &_
      "<AnswerIDs>" &_
        "<SearchCriteriaAnswers>" &_
          "<AnswerID>258066</AnswerID>" &_
        "</SearchCriteriaAnswers>" &_
      "</AnswerIDs>" &_
      "<QuestionID>2667</QuestionID>" &_
    "</SearchCriteriaQuestion>" &_
    "<SearchCriteriaQuestion>" &_
      "<AnswerIDs>" &_
        "<SearchCriteriaAnswers>" &_
          "<AnswerID>358824</AnswerID>" &_
        "</SearchCriteriaAnswers>" &_
      "</AnswerIDs>" &_
      "<QuestionID>2667</QuestionID>" &_
    "</SearchCriteriaQuestion>" &_
    "<SearchCriteriaQuestion>" &_
      "<AnswerIDs>" &_
        "<SearchCriteriaAnswers>" &_
          "<AnswerID>258281</AnswerID>" &_
        "</SearchCriteriaAnswers>" &_
      "</AnswerIDs>" &_
      "<QuestionID>2667</QuestionID>" &_
    "</SearchCriteriaQuestion>" &_
    "<SearchCriteriaQuestion>" &_
      "<AnswerIDs>" &_
        "<SearchCriteriaAnswers>" &_
          "<AnswerID>258288</AnswerID>" &_
        "</SearchCriteriaAnswers>" &_
      "</AnswerIDs>" &_
      "<QuestionID>2667</QuestionID>" &_
    "</SearchCriteriaQuestion>" &_
  "</QandA>" &_
  "<QuestionIDs>2667</QuestionIDs>" &_
  "<Radius>2147483647</Radius>" &_
  "<RowCount>8</RowCount>" &_
  "<SkipCityStateCountryEscalation>true</SkipCityStateCountryEscalation>" &_
  "<StateIDs>-1</StateIDs>" &_
"</SearchCriteriaHotOpeninglist>"

response.write("req=" & Server.HTMLEncode(PostData) & "<br/>len=" & len(PostData))

postUrl = "http://ws.stg.hodesiq.com/JobSearchService/HotOpeningList/HotOpeningsSearchResults"

Set xmlHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP")
xmlHTTP.open "POST", postUrl, false
xmlHTTP.setRequestHeader "Content-Type", "text/xml; charset=utf-8" 
'xmlHTTP.setRequestHeader "SOAPAction", "http://AvailReceive/AvailRq"
xmlHTTP.send PostData


strStatus = xmlHTTP.Status
strRetval = xmlHTTP.responseText
set xmlHTTP = nothing
response.write("<br/>") 
response.write("status=" & strStatus & "<br/>resp=" & strRetval)
%>



<script type="text/javascript">

    function autoResize(frameId) {
        var newheight;

        if (document.getElementById) {
            newheight = document.getElementById(frameId).contentWindow.document.body.scrollHeight;
        }

        document.getElementById(frameId).height = (newheight) + "px";
    }

</script>

<iframe id="iframe1" name="iframe1" src="../HotJobs/HotJobsList.aspx?HotJobsPageName=<%= HotJobsPageName %>&FamilyId=<%= FamilyId %>&TalentId=<%= TalentId %>" frameborder="0" height="0px" scrolling="no" onload="autoResize('iframe1');"></iframe>

<%
'Response.write "FamilyId=" & FamilyId & "<br>"
'Response.write "TalentId=" & TalentId & "<br>"
%>