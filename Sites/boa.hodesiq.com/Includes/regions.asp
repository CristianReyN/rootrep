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
	
	Dim regions
	
	Function getImage(  i_d, na_me )
		getImage = "../images/overview/region-usa.jpg"
		image = ""
		If isObject(regions) Then
		region_numbers = regions.Keys
			If regions.Count > 0 Then
				For r = 0 To regions.Count-1
					region_number = region_numbers(r)
					Set region = regions.Item(region_number)
					If isObject(region) And region.Exists("countries") And isObject(region.Item("countries")) And region.Exists("image") Then
						country_numbers = region.Item("countries").Keys
						If region.Item("countries").Count > 0 Then
							For c = 0 To region.Item("countries").Count-1
								country_number = country_numbers(c)
								Set country = region.Item("countries").Item(country_number)
								If country.Exists("ID") Then
									If country.Item("ID") = i_d Then image = region.Item("image")
								End If
								If image = "" And country.Exists("name") Then
									If country.Item("name") = na_me Then image = region.Item("image")
								End If
							Next 
						End If
					End If
				Next 
			End If
		End If
		If image <>"" Then getImage = image
	End Function
	
	
	
	
	
Set regions  = Server.CreateObject("Scripting.Dictionary")
	
	
	
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary") 'region ID = 1
		region.add "title", "United States"
		region.add "image", "../images/overview/region-usa.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "1"
				country.add "name", "United States"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "260"
				country.add "name", "Jersey"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
	
	
	
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary") 'region ID = 2
		region.add "title", "Costa Rica"
		region.add "image", "../images/overview/region-costarica.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "5"
				country.add "name", "Anguilla"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "10"
				country.add "name", "Antarctica"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "4"
				country.add "name", "Antigua And Barbuda"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "11"
				country.add "name", "Argentina"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "16"
				country.add "name", "Aruba"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "31"
				country.add "name", "Bahamas"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "19"
				country.add "name", "Barbados"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "36"
				country.add "name", "Belize"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "27"
				country.add "name", "Bermuda"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "29"
				country.add "name", "Bolivia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "30"
				country.add "name", "Brazil"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "124"
				country.add "name", "Cayman Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "44"
				country.add "name", "Chile"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "47"
				country.add "name", "Colombia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "49"
				country.add "name", "Costa Rica"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "51"
				country.add "name", "Cuba"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "59"
				country.add "name", "Dominica"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "60"
				country.add "name", "Dominican Republic"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "62"
				country.add "name", "Ecuador"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "211"
				country.add "name", "El Salvador"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "63"
				country.add "name", "Falkland Islands (malvinas)"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "73"
				country.add "name", "French Guiana"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "79"
				country.add "name", "Grenada"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "87"
				country.add "name", "Guadeloupe"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "92"
				country.add "name", "Guatemala"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "95"
				country.add "name", "Guyana"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "100"
				country.add "name", "Haiti"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "98"
				country.add "name", "Honduras"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "112"
				country.add "name", "Jamaica"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "136"
				country.add "name", "Martinique"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "156"
				country.add "name", "Mexico"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "151"
				country.add "name", "Montserrat"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "8"
				country.add "name", "Netherlands Antilles"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "166"
				country.add "name", "Nicaragua"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "176"
				country.add "name", "Panama"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "188"
				country.add "name", "Paraguay"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "177"
				country.add "name", "Peru"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "163"
				country.add "name", "Pitcairn"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "185"
				country.add "name", "Puerto Rico"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "178"
				country.add "name", "Saint Kitts And Nevis"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "128"
				country.add "name", "Saint Lucia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "175"
				country.add "name", "Saint Vincent And The Grenadines"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "190"
				country.add "name", "South Georgia And The South Sandwich Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "208"
				country.add "name", "Suriname"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "226"
				country.add "name", "Trinidad And Tobago"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "214"
				country.add "name", "Turks And Caicos Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "219"
				country.add "name", "United States Minor Outlying Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "235"
				country.add "name", "Uruguay"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "239"
				country.add "name", "Venezuela"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "240"
				country.add "name", "Virgin Islands (british)"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "241"
				country.add "name", "Virgin Islands (u.s.)"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
	
	
	
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary") 'region ID = 3
		region.add "title", "Canada"
		region.add "image", "../images/overview/region-canada.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "2"
				country.add "name", "Canada"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "203"
				country.add "name", "St. Pierre And Miquelon"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
	
	
	
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary") 'region ID = 4
		region.add "title", "Asia Pacific"
		region.add "image", "../images/overview/region-apac.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "3"
				country.add "name", "Afghanistan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "13"
				country.add "name", "American Samoa"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "15"
				country.add "name", "Australia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "24"
				country.add "name", "Bahrain"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "20"
				country.add "name", "Bangladesh"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "32"
				country.add "name", "Bhutan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "33	Bouvet Island"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "107"
				country.add "name", "British Indian Ocean Territory"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "28"
				country.add "name", "Brunei Darussalam"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "117"
				country.add "name", "Cambodia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "46"
				country.add "name", "China"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "53"
				country.add "name", "Christmas Island"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "38"
				country.add "name", "Cocos (keeling) Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "43"
				country.add "name", "Cook Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "224"
				country.add "name", "East Timor"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "71"
				country.add "name", "Fiji"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "76"
				country.add "name", "French Polynesia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "88"
				country.add "name", "Guam"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "94"
				country.add "name", "Heard And Mc Donald Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "96"
				country.add "name", "Hong Kong"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "105"
				country.add "name", "India"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "102"
				country.add "name", "Indonesia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "109"
				country.add "name", "Iran (islamic Republic Of)"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "108"
				country.add "name", "Iraq"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "114"
				country.add "name", "Japan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "113"
				country.add "name", "Jordan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "118"
				country.add "name", "Kiribati"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "122"
				country.add "name", "Korea"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "259"
				country.add "name", "South Korea"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "106"
				country.add "name", "Korea, Republic Of"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "123	Kuwait"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "116"
				country.add "name", "Kyrgyzstan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "126	Lao People's Democratic Republic"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "257"
				country.add "name", "Macao"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "147"
				country.add "name", "Macau"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "157"
				country.add "name", "Malaysia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "154"
				country.add "name", "Maldives"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "141"
				country.add "name", "Marshall Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "139"
				country.add "name", "Micronesia, Federated States Of"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "146"
				country.add "name", "Mongolia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "145"
				country.add "name", "Myanmar"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "170"
				country.add "name", "Nauru"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "169"
				country.add "name", "Nepal"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "149"
				country.add "name", "New Caledonia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "173"
				country.add "name", "New Zealand"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "172"
				country.add "name", "Niue"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "164"
				country.add "name", "Norfolk Island"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "148"
				country.add "name", "Northern Mariana Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "174"
				country.add "name", "Oman"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "181"
				country.add "name", "Pakistan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "187"
				country.add "name", "Palau"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "179"
				country.add "name", "Papua New Guinea"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "180"
				country.add "name", "Philippines"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "189"
				country.add "name", "Qatar"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "245"
				country.add "name", "Samoa"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "194"
				country.add "name", "Saudi Arabia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "199"
				country.add "name", "Singapore"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "195"
				country.add "name", "Solomon Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "130"
				country.add "name", "Sri Lanka"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "209"
				country.add "name", "Syrian Arab Republic"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "228"
				country.add "name", "Taiwan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "210"
				country.add "name", "Tajikistan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "218"
				country.add "name", "Thailand"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "220"
				country.add "name", "Tokelau"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "223"
				country.add "name", "Tonga"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "221"
				country.add "name", "Turkmenistan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "227"
				country.add "name", "Tuvalu"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "234"
				country.add "name", "United Arab Emirates"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "236"
				country.add "name", "Uzbekistan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "243"
				country.add "name", "Vanuatu"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "233"
				country.add "name", "Viet Nam"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "244"
				country.add "name", "Wallis And Futuna Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "246"
				country.add "name", "Yemen"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
	
	
	
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary") 'region ID = 5
		region.add "title", "Europe, Middle East and Africa"
		region.add "image", "../images/overview/region-emea.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "6"
				country.add "name", "Albania"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "61"
				country.add "name", "Algeria"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "37"
				country.add "name", "Andorra"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "9"
				country.add "name", "Angola"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "7"
				country.add "name", "Armenia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "14"
				country.add "name", "Austria"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "17"
				country.add "name", "Azerbaijan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "35"
				country.add "name", "Belarus"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "21"
				country.add "name", "Belgium"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "26"
				country.add "name", "Benin"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "18"
				country.add "name", "Bosnia And Herzegowina"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "255"
				country.add "name", "Bosnia and Herzegovina"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "34"
				country.add "name", "Botswana"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "23"
				country.add "name", "Bulgaria"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "22"
				country.add "name", "Burkina Faso"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "25"
				country.add "name", "Burundi"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "45"
				country.add "name", "Cameroon"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "52"
				country.add "name", "Cape Verde"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "39"
				country.add "name", "Central African Republic"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "215"
				country.add "name", "Chad"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "119"
				country.add "name", "Comoros"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "40"
				country.add "name", "Congo"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "50"
				country.add "name", "Cote D'ivoire"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "42"
				country.add "name", "Croatia (Hrvatska)"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "54"
				country.add "name", "Cyprus"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "55"
				country.add "name", "Czech Republic"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "58"
				country.add "name", "Denmark"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "57"
				country.add "name", "Djibouti"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "65"
				country.add "name", "Egypt"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "89"
				country.add "name", "Equatorial Guinea"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "67"
				country.add "name", "Eritrea"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "64"
				country.add "name", "Estonia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "69"
				country.add "name", "Ethiopia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "74"
				country.add "name", "Faroe Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "70"
				country.add "name", "Finland"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "75"
				country.add "name", "France"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "72"
				country.add "name", "France, Metropolitan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "216"
				country.add "name", "French Southern Territories"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "77"
				country.add "name", "Gabon"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "85"
				country.add "name", "Gambia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "80"
				country.add "name", "Georgia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "56"
				country.add "name", "Germany"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "82"
				country.add "name", "Ghana"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "83"
				country.add "name", "Gibraltar"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "90"
				country.add "name", "Greece"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "84"
				country.add "name", "Greenland"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "86"
				country.add "name", "Guinea"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "91"
				country.add "name", "Guinea-bissau"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "101"
				country.add "name", "Hungary"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "110"
				country.add "name", "Iceland"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "103"
				country.add "name", "Ireland"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "256"
				country.add "name", "Isle of Man"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "104"
				country.add "name", "Israel"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "111"
				country.add "name", "Italy"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "125"
				country.add "name", "Kazakhstan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "115"
				country.add "name", "Kenya"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "135"
				country.add "name", "Latvia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "127"
				country.add "name", "Lebanon"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "132"
				country.add "name", "Lesotho"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "131"
				country.add "name", "Liberia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "121"
				country.add "name", "Libyan Arab Jamahiriya"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "129"
				country.add "name", "Liechtenstein"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "133"
				country.add "name", "Lithuania"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "134"
				country.add "name", "Luxembourg"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "143"
				country.add "name", "Macedonia, The Former Yugoslav Republic Of"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "140"
				country.add "name", "Madagascar"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "155"
				country.add "name", "Malawi"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "144"
				country.add "name", "Mali"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "152"
				country.add "name", "Malta"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "150"
				country.add "name", "Mauritania"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "153"
				country.add "name", "Mauritius"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "247"
				country.add "name", "Mayotte"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "142"
				country.add "name", "Moldova, Republic Of"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "138"
				country.add "name", "Monaco"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "254"
				country.add "name", "Montenegro"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "137"
				country.add "name", "Morocco"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "158"
				country.add "name", "Mozambique"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "159"
				country.add "name", "Namibia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "167"
				country.add "name", "Netherlands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "162"
				country.add "name", "Niger"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "165"
				country.add "name", "Nigeria"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "168"
				country.add "name", "Norway"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "182"
				country.add "name", "Poland"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "186"
				country.add "name", "Portugal"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "171"
				country.add "name", "Reunion"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "191"
				country.add "name", "Romania"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "192"
				country.add "name", "Russian Federation"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "258"
				country.add "name", "Russia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "193"
				country.add "name", "Rwanda"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "205"
				country.add "name", "San Marino"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "183"
				country.add "name", "Sao Tome And Principe"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "206"
				country.add "name", "Senegal"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "253"
				country.add "name", "Serbia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "196"
				country.add "name", "Seychelles"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "204"
				country.add "name", "Sierra Leone"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "184"
				country.add "name", "Slovakia (slovak Republic)"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "201"
				country.add "name", "Slovenia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "207"
				country.add "name", "Somalia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "249"
				country.add "name", "South Africa"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "68"
				country.add "name", "Spain"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "200"
				country.add "name", "St. Helena"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "197"
				country.add "name", "Sudan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "202"
				country.add "name", "Svalbard And Jan Mayen Islands"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "213"
				country.add "name", "Swaziland"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "198"
				country.add "name", "Sweden"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "41"
				country.add "name", "Switzerland"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "212"
				country.add "name", "Tanzania, United Republic Of"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "217"
				country.add "name", "Togo"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "222"
				country.add "name", "Tunisia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "225"
				country.add "name", "Turkey"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "231"
				country.add "name", "Uganda"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "230"
				country.add "name", "Ukraine"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "232"
				country.add "name", "United Kingdom"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "237"
				country.add "name", "Vatican City State (holy See)"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "66"
				country.add "name", "Western Sahara"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "248"
				country.add "name", "Yugoslavia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "251"
				country.add "name", "Zaire"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "250"
				country.add "name", "Zambia"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "252"
				country.add "name", "Zimbabwe"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
%>