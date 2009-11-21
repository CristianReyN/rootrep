<!-- #include file="adovbs.inc" -->
<%DIM cnnFile, xlsWriteFileCnn, cnnDB, cmd
	Dim StrFilePath
'**********************************************************
'--		Open Database connection
'**********************************************************
	Function OpenDBConnection()
		Dim strConnection
		strConnection = IQ2udl
		Set cnnDB = OpenConnectionEx(strConnection)
	End Function
'**********************************************************
'--		Open File connection
'**********************************************************
	Function OpenFileConnection()
		Dim strConnection
		strConnection = "Driver={Microsoft Excel Driver (*.xls)};DriverId=790;Dbq=" & mypath & ";DefaultDir=" & mydir & ";"
		Set cnnFile = OpenConnectionEx(strConnection)
	End Function
'**********************************************************
'--		Open File connection
'**********************************************************
	Function OpenFileXLSWriteConnection()
		Dim strConnection
		strConnection = "Driver={Microsoft Excel Driver (*.xls)};DriverId=790;Dbq=" & mypath & ";DefaultDir=" & mydir & ";ReadOnly=0;"
		Set xlsWriteFileCnn = OpenConnectionEx(strConnection)
	End Function
'**********************************************************
'--		Open global connection
'**********************************************************
	Function OpenConnectionEx(strConnection)
		Dim cn_temp_local
		Set cn_temp_local = Server.CreateObject("ADODB.Connection")
		Call cn_temp_local.Open(strConnection)
		Set OpenConnectionEx = cn_temp_local
	End Function
'**********************************************************
'--		Close File connection
'**********************************************************
	Function CloseFileConnection()
		CloseConnectionEx cnnFile
	End Function
'**********************************************************
'--		Close XLS Write File connection
'**********************************************************
	Function CloseFileXLSWriteConnection()
		CloseConnectionEx xlsWriteFileCnn
	End Function
'**********************************************************
'--		Close DB connection
'**********************************************************
	Function CloseDBConnection()
		CloseConnectionEx cnnDB
	End Function
'**********************************************************
'--		Close global connection
'**********************************************************
	Function CloseConnectionEx(cn_temp_local)
		cn_temp_local.Close 
		Set cn_temp_local = Nothing
	End Function
'**********************************************************
'--		Working with Exel
'**********************************************************
	Function ExelWorkSheetExists(rss,name)
		Dim exists
		exists = False
		if not (rss.EOF and rss.BOF) then
			rss.MoveFirst
			If rss.Fields("TABLE_NAME") = name Then
				exists = True
			End If
		End If
		ExelWorkSheetExists = exists
	End Function
	
	Function GetFirstExelWorkSheetname(rss)
		Dim name
		name = ""
		if not (rss.EOF and rss.BOF) then
			rss.MoveFirst
			name = rss.Fields("TABLE_NAME")
		End If
		GetFirstExelWorkSheetname = name
	End Function
	
	Function GetSecondExelWorkSheetname(rss)
		Dim name
		name = ""
		if not (rss.EOF and rss.BOF) then
			rss.MoveFirst
			rss.MoveNext
			name = rss.Fields("TABLE_NAME")
		End If
		GetSecondExelWorkSheetname = name
	End Function
'**********************************************************
'--		Working with recordset
'**********************************************************
	Function FieldExists(rss,name)
		Dim exists
		exists = False
		For each fi_eld In rss.Fields
			If fi_eld.Name = name Then
				exists = True
				Exit For
			End If
		Next
		FieldExists = exists
	End Function
'**********************************************************
'**********************************************************
Dim MO_NTH(12)
MO_NTH(1) = "January"
MO_NTH(2) = "February"
MO_NTH(3) = "March"
MO_NTH(4) = "April"
MO_NTH(5) = "May"
MO_NTH(6) = "June"
MO_NTH(7) = "July"
MO_NTH(8) = "August"
MO_NTH(9) = "September"
MO_NTH(10) = "October"
MO_NTH(11) = "November"
MO_NTH(12) = "December"
Dim WEEK_DAY(7)
WEEK_DAY(1) = "Monday"
WEEK_DAY(2) = "Tuesday"
WEEK_DAY(3) = "Wednesday"
WEEK_DAY(4) = "Thursday"
WEEK_DAY(5) = "Friday"
WEEK_DAY(6) = "Saturday"
WEEK_DAY(7) = "Sunday"
'**********************************************************
'--		Format Date US
	Function FormatDateUS(da_te)
		Dim d(4)
		d(1) = DatePart("yyyy", da_te)
		d(2) = DatePart("m", da_te)
		d(3) = DatePart("d", da_te)
		d(4) = DatePart("w", da_te)
		FormatDateUS = WEEK_DAY(d(4)) & ", " & MO_NTH(d(2)) & " " & d(3) & ", " & d(1)
		'FormatDateUS = MO_NTH(d(2)) & " " & d(3) & " " & d(1)
	End Function
'**********************************************************
%>