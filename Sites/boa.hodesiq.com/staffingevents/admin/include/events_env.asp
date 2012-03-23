<%
'*************************************************************
'--		DATABASE
'*************************************************************
	Dim ENV_EVENTS, strEventsConnection, cnnEv
	
	If trim(Request.ServerVariables("SERVER_NAME")) = "www.bankofamericacareers.com" _
		OR trim(Request.ServerVariables("SERVER_NAME")) = "boa.hodesiq.com" _
		OR trim(Request.ServerVariables("SERVER_NAME")) = "careers.bankofamerica.com" _
		OR trim(Request.ServerVariables("SERVER_NAME")) = "bankofamerica.com" _
		Then ' production
			ENV_EVENTS = "production"
	ElseIf trim(Request.ServerVariables("SERVER_NAME")) = "lexington.hodes.com" _
		Then 'lexington staging
			ENV_EVENTS = "lexington_staging"
	ElseIf trim(Request.ServerVariables("SERVER_NAME")) = "boa.stg.hodesiq.com" _
		Then 'staging
			ENV_EVENTS = "staging"
	ElseIf trim(Request.ServerVariables("SERVER_NAME")) = "boa.dev.hodesiq.com" _
		Then 'development
			ENV_EVENTS = "development"
 	End If
	
	
	If ENV_EVENTS = "production" Then ' production
		'ServerName = "bhgsql"
		'DBName = "bankofamerica_events"
		'UserName = "webuser"
		'Password = "webuser"
		'strEventsConnection = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & UserName & ";Password=" & Password & ";Initial Catalog=" & DBName & ";Data Source=" & ServerName & ";"
		strEventsConnection = "file name=D:\data\db\boa_events.udl"
	ElseIf ENV_EVENTS = "lexington_staging" Then 'lexington staging
		ServerName = "nyc-bhi-stg"
		DBName = "bankofamerica_events"
		UserName = "webuser"
		Password = "webuser"
		strEventsConnection = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & UserName & ";Password=" & Password & ";Initial Catalog=" & DBName & ";Data Source=" & ServerName & ";"
	ElseIf ENV_EVENTS = "staging" Then 'staging
		'strEventsConnection = "file name=D:\data\web\boa.hodesiq.com\staffingevents\admin\include\boa-evt.udl"
		strEventsConnection = "file name=D:\data\db\boa_events.udl"
	ElseIf ENV_EVENTS = "development" Then 'development
		strEventsConnection = "file name=D:\data\web\boa.hodesiq.com\staffingevents\admin\include\boa-evt.udl"
 	End If
	
%>