<%
Function InArray(value, ar_ray) 
	Dim in_array
	in_array = False
	For Each v In ar_ray
		If CStr(v) = CStr(value) Then
			in_array = True
		End If
	Next
	InArray = in_array
End Function


Function CleanTheStringAlphanumeric_(str)
	allowed_chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"
	CleanTheStringAlphanumeric_ = CleanTheStringAlphanumeric(str, allowed_chars)
End Function
Function CleanTheStringAlphanumeric_Space(str)
	allowed_chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_ "
	CleanTheStringAlphanumeric_Space = CleanTheStringAlphanumeric(str, allowed_chars)
End Function
Function CleanTheStringAlphanumeric(str, allowed_chars)
	CleanedString = ""
	For i = 1 to len(str)
		ch = mid(str,i,1)
		If instr(allowed_chars,ch) Then
			CleanedString = CleanedString & ch
		End If
	Next
	CleanTheStringAlphanumeric = CleanedString
End Function
%>