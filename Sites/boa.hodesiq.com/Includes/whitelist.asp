<%
	Dim whitelist_chars, whitelist_char, whitelist_pattern, no_after_chars, chars_to_replace
	
	whitelist_chars = Array( "_", "-", ".", ",", ":", ";", "?", "!", "~", "`", "@", "$", "%", "^", "*", "(", ")", "{", "}", "[", "]", "/", "\", "|" )
	whitelist_pattern = ""
	For Each whitelist_char in whitelist_chars
		whitelist_pattern = whitelist_pattern & "\" & whitelist_char
	Next
	whitelist_pattern = "^[0-9a-zA-Z " & whitelist_pattern & "]+$"
	
	no_after_chars = Array("&", "#", "<", ">", "'", """")
	
	Set chars_to_replace  = Server.CreateObject("Scripting.Dictionary")
		chars_to_replace.add "+", " "
	
	Function ClearKeywords ( keyword_str )
		Set regEx = New RegExp
			regEx.IgnoreCase = True
			regEx.Global = True
		'Check whitelist
		regEx.Pattern = whitelist_pattern
		If RegEx.Test(str) = False Then
			'Strip HTML Tags
			regEx.Pattern = "<[^>]+>"
			keyword_str = regEx.Replace(keyword_str, "")
			'Remove all after char
			For Each no_after_char In no_after_chars
				regEx.Pattern = no_after_char
				
				Set nocharmatches = regEx.Execute(keyword_str)
				If nocharmatches.Count > 0 Then
					For Each nocharmatched in nocharmatches
						keyword_str = Left( keyword_str, nocharmatched.FirstIndex )
					Next
				End If
			Next
			'Replace chars
			If chars_to_replace.Count > 0 Then
				replace_chars = chars_to_replace.Keys
				For r = 0 To chars_to_replace.Count-1
					replace_char = replace_chars(r)
					replacement_char = chars_to_replace.Item(replace_char)
					keyword_str = Replace(keyword_str, replace_char, replacement_char)
				Next
			End If
		End If
		ClearKeywords = keyword_str
		Set regEx = nothing
	End Function
%>