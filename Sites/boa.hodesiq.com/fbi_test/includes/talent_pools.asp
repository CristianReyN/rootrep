<%
dim d
Set d = Server.CreateObject("Scripting.Dictionary")

sub CreateTalentPools()

    Dim i

    Const dictKey  = 1
    Const dictItem = 2

    d.Add "1", "Fingerprint, Security & Police Officer"
    d.Add "2", "Intelligence and Intelligence Analyst"
    d.Add "3", "Social Services, Psychology & Counseling"
    d.Add "4", "Human Resources  & Human Resources  Management"
    d.Add "5", "General Administration, Clerical, Offices Services"
    d.Add "6", "Accounting, Budgeting & Financial  Management"
    d.Add "7", "Medical Services & Public Health"
    d.Add "8", "Engineering, Electronics & Architecture"
    d.Add "9", "General Legal, Paralegal & Kindred"
    d.Add "10", "Foreign Languages & Language Services"
    d.Add "11", "Public Affairs, Technical Writing, and Creative Industry"
    d.Add "12", "Business, Procurement, Acquisition & Industry Administration"
    d.Add "13", "Sciences (Physical, Chemistry, Physics, Metallurgy)"
    d.Add "14", "Cyber, Computer Science, Mathematics & Statistics"
    d.Add "15", "Education and Instructional Training"
    d.Add "16", "Special Agent (Investigation and Enforcement)"
    d.Add "17", "Surveillance and Investigation"
    d.Add "18", "Information Technology & Information Systems Security"
    d.Add "19", "General Maintenance and Operations"
    d.Add "20", "Transportation Maintenance & Mobile Equipment Operation and Maintenance"
  
end sub


sub processStep1
    
    CreateTalentPools()

    'get answers
    dim f1, f2, f3, f4, f5
    f1 = Request.Form("f1")
    f2 = Request.Form("f1")
    f3 = Request.Form("f1")
    f4 = Request.Form("f1")
    f5 = Request.Form("f1")

    if f1 = "No" then
        if d.Exists("1") then d.Remove("1")
        if d.Exists("16") then d.Remove("16")
        if d.Exists("17") then d.Remove("17")
        if d.Exists("2") then d.Remove("2")      
    end if

    if f2 = "No" then
        if d.Exists("5") then d.Remove("5")
        if d.Exists("6") then d.Remove("6")
        if d.Exists("14") then d.Remove("14")
        if d.Exists("12") then d.Remove("12")
    end if

    if f3 = "No" then
        if d.Exists("1") then d.Remove("1")
        if d.Exists("16") then d.Remove("16")
        if d.Exists("17") then d.Remove("17")
        if d.Exists("8") then d.Remove("8")
    end if

    if f4 = "No" then
        if d.Exists("8") then d.Remove("8")
        if d.Exists("19") then d.Remove("19")
        if d.Exists("20") then d.Remove("20")
    end if

    if f5 = "No" then
        if d.Exists("2") then d.Remove("2")
        if d.Exists("14") then d.Remove("14")
        if d.Exists("13") then d.Remove("13")
        if d.Exists("16") then d.Remove("16")
        if d.Exists("17") then d.Remove("17")
        if d.Exists("12") then d.Remove("12")
    end if

    propagateAnswers(1)
    
end sub

sub processStep2
    'get answers
    dim f6, f7, f8, f9, f10
    
    f6 = Request.Form("f6")
    f7 = Request.Form("f7")
    f8 = Request.Form("f8")
    f9 = Request.Form("f9")
    f10 = Request.Form("f10")

    RebuildDictionary

    if f6 = "No" then
        if d.Exists("14") then d.Remove("14")
        if d.Exists("18") then d.Remove("18")
    end if

    if f7 = "No" then
        if d.Exists("5") then d.Remove("5")
        if d.Exists("9") then d.Remove("9")
        if d.Exists("12") then d.Remove("12")
    end if

    if f8 = "No" then
        if d.Exists("4") then d.Remove("4")
        if d.Exists("5") then d.Remove("5")
        if d.Exists("7") then d.Remove("7")
        if d.Exists("3") then d.Remove("3")
    end if

    if f9 = "No" then
        if d.Exists("11") then d.Remove("11")
        if d.Exists("4") then d.Remove("4")
        if d.Exists("5") then d.Remove("5")
    end if

    if f10 = "no" then
        if d.Exists("1") then d.Remove("1")
        if d.Exists("16") then d.Remove("16")
    end if

    propagateAnswers(2)
    
end sub

sub RebuildDictionary

    strSessionDict = Session("Step1Answers")
    'Response.Write "strSessionDict = " & strSessionDict & "<br>"

    dim arrDict1, arrDict2

    arrDict1 = Split(strSessionDict,"~")
    'Response.Write "ubound(arrDict1)=" & ubound(arrDict1) & "<br>"
    for x = 0 to (ubound(arrDict1))
        arrDict2 = Split(arrDict1(x), "=")
        d.Add arrDict2(0), arrDict2(1)
        'Response.Write "(" & x & ") RebuildDictionary adding: " & d(arrDict2(0)) & "<br>"
    next  

end sub

function propagateAnswers(strStep)

    dim strAnswers

    For Each i In d
        strAnswers = strAnswers & i & "=" & d(i) & "~"
    Next

    'remove trailing ~ from string
    strAnswers = Left(strAnswers, Len(strAnswers)-1)

    if strStep = 1 then
        Session("Step1Answers") = strAnswers
    else
        Session("Step2Answers") = strAnswers
    end if
    'Response.Write "strAnswers= " & strAnswers

    propagateAnswers = true

end function

sub PrintResults

    'get answers
    dim f11a, f11b, f11c
    
    f11a = Request.Form("f11a")
    f11b = Request.Form("f11b")
    f11c = Request.Form("f11c")

    'write out these top three 
    dim arrF11a, arrF11b, arrFllc

    arrF11a = Split(f11a, "=")
    arrF11b = Split(f11b, "=")
    arrF11c = Split(f11c, "=")

    Response.Write "<a href='https://fbi2.hodesiq.com/jobdetail.aspx?emid=12311&catid=" & arrF11a(0) &"'>" & arrF11a(1) & "</a><br />"
    Response.Write "<a href='https://fbi2.hodesiq.com/jobdetail.aspx?emid=12311&catid=" & arrF11b(0) &"'>" & arrF11b(1) & "</a><br />"
    Response.Write "<a href='https://fbi2.hodesiq.com/jobdetail.aspx?emid=12311&catid=" & arrF11c(0) &"'>" & arrF11c(1) & "</a><br />"

    strSessionDict = Session("Step2Answers")
    'Response.Write strSessionDict
    dim arrDict1, arrDict2

    arrDict1 = Split(strSessionDict,"~")

    'for x = 0 to (ubound(arrDict1))
    for x = 0 to 2
        arrDict2 = Split(arrDict1(x), "=")
        'Response.Write arrDict2(0) & "===" & arrDict2(1) & "<br>" 
        'd.Add arrDict2(0), arrDict2(1)
        Response.Write "<a href='https://fbi2.hodesiq.com/jobdetail.aspx?emid=12311&catid=" & arrDict2(0) &"'>" & arrDict2(1) & "</a><br />"
    next  

end sub

sub CreateDropDowns

    strSessionDict = Session("Step1Answers")

    dim arrDict1, arrDict2
    dim strOptions

    arrDict1 = Split(strSessionDict,"~")

    for x = 0 to (ubound(arrDict1))
        arrDict2 = Split(arrDict1(x), "=")
        strOptions = strOptions + "<option value='" & arrDict2(0) & "=" & arrDict2(1) & "'>" & arrDict2(1) & "</option>"
    next  

    Response.Write "<select id='f11a' name='f11a'>" & strOptions & "</select><br>"
    Response.Write "<select id='f11b' name='f11b'>" & strOptions & "</select><br>"
    Response.Write "<select id='f11c' name='f11c'>" & strOptions & "</select><br>"

end sub

%>
<%
  Function SortDictionary(objDict,intSort)
    Dim strDict()
    Dim objKey
    Dim strKey,strItem
    Dim X,Y,Z
    Z = objDict.Count
    If Z > 1 Then
      ReDim strDict(Z,2)
      X = 0
      For Each objKey In objDict
          strDict(X,dictKey)  = CStr(objKey)
          strDict(X,dictItem) = CStr(objDict(objKey))
          X = X + 1
      Next
      For X = 0 to (Z - 2)
        For Y = X to (Z - 1)
          If StrComp(strDict(X,intSort),strDict(Y,intSort),vbTextCompare) > 0 Then
              strKey  = strDict(X,dictKey)
              strItem = strDict(X,dictItem)
              strDict(X,dictKey)  = strDict(Y,dictKey)
              strDict(X,dictItem) = strDict(Y,dictItem)
              strDict(Y,dictKey)  = strKey
              strDict(Y,dictItem) = strItem
          End If
        Next
      Next
      objDict.RemoveAll
      For X = 0 to (Z - 1)
        objDict.Add strDict(X,dictKey), strDict(X,dictItem)
      Next
    End If
  End Function
%>