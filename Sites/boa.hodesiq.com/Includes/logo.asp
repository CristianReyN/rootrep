<%
	Function getLogoImageURL(logo_alt, logo_title)
		getLogoImageURL = "../images/mhd_reg_logo.gif"
		logo_alt = "Bank of America"
		logo_title = "Bank of America"
		page_full = ""
		If mpage <> "" Then page_full = mpage
		If spage <> "" Then page_full = page_full&"-"&spage
		If tpage <> "" Then page_full = page_full&"-"&tpage
		If fpage <> "" Then page_full = page_full&"-"&fpage
		If fvpage <> "" Then page_full = page_full&"-"&fvpage
			select case page_full
				case "lob-lobgbmwm-lobgcib"
					getLogoImageURL = "../images/ba_ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobgcb"
					getLogoImageURL = "../images/ba_ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobgwim"
					getLogoImageURL = "../images/ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobfa"
					getLogoImageURL = "../images/ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobfa-lobfaamericas"
					getLogoImageURL = "../images/ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobfa-lobfaamericasrole"
					getLogoImageURL = "../images/ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobfa-lobfaasia"
					getLogoImageURL = "../images/ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobfa-lobfaasiarole"
					getLogoImageURL = "../images/ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobfa-lobfaemea"
					getLogoImageURL = "../images/ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case "lob-lobgbmwm-lobfa-lobfaemearole"
					getLogoImageURL = "../images/ml_logo.jpg"
					logo_alt = "Merrill Lynch Wealth Management"
					logo_title = "Merrill Lynch Wealth Management"
				case else
					getLogoImageURL = "../images/mhd_reg_logo.gif"
					logo_alt = "Bank of America"
					logo_title = "Bank of America"
			end select
	End Function
%>