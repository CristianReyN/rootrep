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
	Set region  = Server.CreateObject("Scripting.Dictionary")
		region.add "title", "United States"
		region.add "image", "../images/overview/region-usa.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "1"
				country.add "name", "United States"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary")
		region.add "title", "Costa Rica"
		region.add "image", "../images/overview/region-costarica.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "1000"
				country.add "name", "Costa Rica"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary")
		region.add "title", "Canada"
		region.add "image", "../images/overview/region-canada.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "2"
				country.add "name", "Canada"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary")
		region.add "title", "Asia Pacific"
		region.add "image", "../images/overview/region-apac.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID","15"
				country.add "name", "Australia"
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
				country.add "ID", "114"
				country.add "name", "Japan"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "199"
				country.add "name", "Singapore"
			country_number = countries.Count
			countries.add country_number,country
				Set country  = Server.CreateObject("Scripting.Dictionary")
				country.add "ID", "228"
				country.add "name", "Taiwan"
			country_number = countries.Count
			countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
	
	
	Set region  = Server.CreateObject("Scripting.Dictionary")
		region.add "title", "Europe, Middle East and Africa"
		region.add "image", "../images/overview/region-emea.jpg"
			Set countries  = Server.CreateObject("Scripting.Dictionary")
			'	country  = Server.CreateObject("Scripting.Dictionary")
			'	country.add "ID", "1000"
			'	country.add "name", "Canada"
			'country_number = countries.Count
			'countries.add country_number,country
		region.add "countries", countries
	region_number = regions.Count + 1
regions.add region_number, region
%>