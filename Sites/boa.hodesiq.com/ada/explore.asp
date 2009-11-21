<%Response.Buffer=True
On Error Resume Next
If isNull(session.Contents("ada_explore_count")) Or trim(session.Contents("ada_explore_count")) = "" Then
	Const ForReading = 1
	Dim fso, f, ts, scount, count, strPath, strFilePath
	strPath=server.MapPath("/")
	strFilePath = strPath&"\includes\stat\ada\explore"
'Response.write strPath
	Set fso = CreateObject("Scripting.FileSystemObject")
	Set ts = fso.OpenTextFile(strFilePath, ForReading)
	scount = ts.ReadLine
	ts.Close
'Response.write scount
	count = 0
	If scount <> "" Then count = CInt(scount)
	count = count + 1
	
	Set f = fso.CreateTextFile(strFilePath, True)
	f.Write (count) 
	f.Close
	session.Contents("ada_explore_count") = "Yes"
End If
Response.Redirect("career_compass.asp")
%>