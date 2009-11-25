<%
	Function getLogoImageURL()
		getLogoImageURL = "../images/mhd_reg_logo.gif"
		page_full = ""
		If mpage <> "" Then page_full = mpage
		If spage <> "" Then page_full = page_full&"-"&spage
		If tpage <> "" Then page_full = page_full&"-"&tpage
		If fpage <> "" Then page_full = page_full&"-"&fpage
		If fvpage <> "" Then page_full = page_full&"-"&fvpage
			select case page_full
				case "lob-lobgbmwm-lobgcib"
					getLogoImageURL = "../images/ba_ml_logo.jpg"
				case "lob-lobgbmwm-lobgcb"
					getLogoImageURL = "../images/ba_ml_logo.jpg"
				case "lob-lobgbmwm-lobgwim"
					getLogoImageURL = "../images/ml_logo.jpg"
				case "lob-lobgbmwm-lobfa"
					getLogoImageURL = "../images/ml_logo.jpg"
				case "lob-lobgbmwm-lobfa-lobfaamericas"
					getLogoImageURL = "../images/ml_logo.jpg"
				case "lob-lobgbmwm-lobfa-lobfaamericasrole"
					getLogoImageURL = "../images/ml_logo.jpg"
				case "lob-lobgbmwm-lobfa-lobfaasia"
					getLogoImageURL = "../images/ml_logo.jpg"
				case "lob-lobgbmwm-lobfa-lobfaasiarole"
					getLogoImageURL = "../images/ml_logo.jpg"
				case "lob-lobgbmwm-lobfa-lobfaemea"
					getLogoImageURL = "../images/ml_logo.jpg"
				case "lob-lobgbmwm-lobfa-lobfaemearole"
					getLogoImageURL = "../images/ml_logo.jpg"
				case else
					getLogoImageURL = "../images/mhd_reg_logo.gif"
			end select
	End Function
%>