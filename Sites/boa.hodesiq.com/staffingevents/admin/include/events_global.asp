<%

'**********************************************************
'--		Database constants
'**********************************************************
	Const DBName		= "bankofamerica_events"'"bankofamerica_events" - "bankofamerica_events_prod"
	Const ServerName	= "YA-DELL\SQLEXPRESS"'"bhgsql"
	Const UserName		= "webuser"
	Const Password		= "webuser"
	Const mailto="webmaster@interactive.hodes.com"
	DIM cn
strCompany="Bank of America"
'**********************************************************
'--		Application constants
'**********************************************************
'**********************************************************
'**********************************************************
	Function OpenConnection()
		Dim strConnection
		strConnection = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & UserName & ";Password=" & Password & ";Initial Catalog=" & DBName & ";Data Source=" & ServerName & ";"
		Set cn = OpenConnectionEx(strConnection)
	End Function
'***********************************************************
'***********************************************************
'--		Open specific database connection
'***********************************************************
	Function OpenConnectionEx(strConnection)
		Dim cn_temp_local
		Set cn_temp_local = Server.CreateObject("ADODB.Connection")
		Call cn_temp_local.Open(strConnection)
		Set OpenConnectionEx = cn_temp_local
	End Function
'***********************************************************


'***********************************************************
'--		Close global database connection
'***********************************************************
	Function CloseConnection()
		CloseConnectionEx cn
	End Function

'***********************************************************
	
	Function CloseConnectionEx(cn_temp_local)
		cn_temp_local.Close 
		Set cn_temp_local = Nothing
	End Function
'*************************************************************	
%>