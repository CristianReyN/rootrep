<%
	Dim areasoftalent,jfamily,stateid,keywords
	areasoftalent = Request("areasoftalent")
		If areasoftalent = "" Then areasoftalent = "0"
	jfamily = Request("jfamily")
	stateid = Request("stateid")
	keywords = Request("keywords")
	
	Dim key_()
		Redim Preserve key_(0)
	Dim value_()
		Redim Preserve value_(0)
	
	Function set_(key,value)
		Dim size_
		size_ = UBound(key_)
		Redim Preserve key_(size_+1)
		Redim Preserve value_(size_+1)
		key_(size_+1) = key
		value_(size_+1) = value
	End Function
	
	Function get_(key)
		Dim values()
		Redim Preserve values(0)
		If key = "-1" Then
			'size_key = UBound(JobFamily)
			'For i=1 To size_key 
			'	size_values = UBound(values)
			'	Redim Preserve values(size_values+1)
			'	values(i) = i
			'Next
		Else
			size_key = UBound(key_)
			For i=1 To size_key 
				If cint(key_(i)) = cint(key) Then
					size_values = UBound(values)
					Redim Preserve values(size_values+1)
					values(size_values+1) = value_(i)
				End If
			Next
		End If
		get_ = values
	End Function
	
	
set_ 1,1
set_ 1,2
set_ 1,3
set_ 1,4
set_ 1,5
set_ 1,6
set_ 1,7
set_ 2,8
set_ 2,9
set_ 3,10
set_ 3,11
set_ 4,12
set_ 4,13
set_ 4,14
set_ 4,15
set_ 5,16
set_ 5,7
set_ 6,17
set_ 6,4
set_ 6,5
set_ 6,6
set_ 2,3
set_ 7,18
set_ 8,19
set_ 8,20
set_ 9,21
set_ 10,20

Dim JobFamily(22)
JobFamily(1)="A-Administration"
JobFamily(2)="X-Corporate Executive"
JobFamily(3)="G-Corporate Workplace"
JobFamily(4)="N-Change Mgmt & Process"
JobFamily(5)="L-Legal"
JobFamily(6)="J-Services"
JobFamily(7)="H-Learning & Org Effectiveness"
JobFamily(8)="B- Relationship Management"
JobFamily(9)="C-Customer Service"
JobFamily(10)="E-Communications"
JobFamily(11)="M-Marketing"
JobFamily(12)="F-Finance"
JobFamily(13)="D-Credit"
JobFamily(14)="I-Investment Banking"
JobFamily(15)="W-Wealth & Investment Mgmt"
JobFamily(16)="P-Humar Resource"
JobFamily(17)="O-Opreations"
JobFamily(18)="K-Risk Evaluation"
JobFamily(19)="S-Sales"
JobFamily(20)="R-Consumer banking"
JobFamily(21)="T-Technology"
JobFamily(22)="V-VA-International Contractor"


	Function getAreasOfTalentOptions()
%>
	<option value="1"<%If areasoftalent="1" Then Response.write " selected"%>>Administration&nbsp;</option>
	<option value="2"<%If areasoftalent="2" Then Response.write " selected"%>>Customer Care&nbsp;</option>
	<option value="3"<%If areasoftalent="3" Then Response.write " selected"%>>Communications&nbsp;</option>
	<option value="4"<%If areasoftalent="4" Then Response.write " selected"%>>Finance&nbsp;</option>
	<option value="5"<%If areasoftalent="5" Then Response.write " selected"%>>Human Resource&nbsp;</option>
	<option value="6"<%If areasoftalent="6" Then Response.write " selected"%>>Opreations&nbsp;</option>
	<option value="7"<%If areasoftalent="7" Then Response.write " selected"%>>Risk Evaluation&nbsp;</option>
	<option value="8"<%If areasoftalent="8" Then Response.write " selected"%>>Sales&nbsp;</option>
	<option value="9"<%If areasoftalent="9" Then Response.write " selected"%>>Technology&nbsp;</option>
	<option value="10"<%If areasoftalent="10" Then Response.write " selected"%>>Consumer Banking&nbsp;</option>
<%
	End Function
	
	
	Function getJobfamiliesOptions()
		Dim size_families
		JobFamilies = get_(areasoftalent)
		size_families = UBound(JobFamilies)
		For j=1 To size_families
%>
	<option value="<%Response.write JobFamilies(j)%>"<%If jfamily=trim(JobFamilies(j)) Then Response.write " selected"%>><%Response.write JobFamily(JobFamilies(j))%>&nbsp;</option>
<%
		Next
	End Function
	
	
	Function getStateOptions()
%>
	<option value="1"<%If stateid="1" Then Response.write " selected"%>>Alabama&nbsp;</option>
	<option value="2"<%If stateid="2" Then Response.write " selected"%>>Alaska&nbsp;</option>
	<option value="3"<%If stateid="3" Then Response.write " selected"%>>Arizona&nbsp;</option>
	<option value="4"<%If stateid="4" Then Response.write " selected"%>>Arkansas&nbsp;</option>
	<option value="5"<%If stateid="5" Then Response.write " selected"%>>California&nbsp;</option>
	<option value="6"<%If stateid="6" Then Response.write " selected"%>>Colorado&nbsp;</option>
	<option value="7"<%If stateid="7" Then Response.write " selected"%>>Connecticut&nbsp;</option>
	<option value="8"<%If stateid="8" Then Response.write " selected"%>>Delaware&nbsp;</option>
	<option value="9"<%If stateid="9" Then Response.write " selected"%>>District of Columbia&nbsp;</option>
	<option value="10"<%If stateid="10" Then Response.write " selected"%>>Florida&nbsp;</option>
	<option value="11"<%If stateid="11" Then Response.write " selected"%>>Georgia&nbsp;</option>
	<option value="12"<%If stateid="12" Then Response.write " selected"%>>Hawaii&nbsp;</option>
	<option value="13"<%If stateid="13" Then Response.write " selected"%>>Idaho&nbsp;</option>
	<option value="14"<%If stateid="14" Then Response.write " selected"%>>Illinois&nbsp;</option>
	<option value="15"<%If stateid="15" Then Response.write " selected"%>>Indiana&nbsp;</option>
	<option value="16"<%If stateid="16" Then Response.write " selected"%>>Iowa&nbsp;</option>
	<option value="17"<%If stateid="17" Then Response.write " selected"%>>Kansas&nbsp;</option>
	<option value="18"<%If stateid="18" Then Response.write " selected"%>>Kentucky&nbsp;</option>
	<option value="19"<%If stateid="19" Then Response.write " selected"%>>Louisiana&nbsp;</option>
	<option value="20"<%If stateid="20" Then Response.write " selected"%>>Maine&nbsp;</option>
	<option value="21"<%If stateid="21" Then Response.write " selected"%>>Maryland&nbsp;</option>
	<option value="22"<%If stateid="22" Then Response.write " selected"%>>Massachusetts&nbsp;</option>
	<option value="23"<%If stateid="23" Then Response.write " selected"%>>Michigan&nbsp;</option>
	<option value="24"<%If stateid="24" Then Response.write " selected"%>>Minnesota&nbsp;</option>
	<option value="25"<%If stateid="25" Then Response.write " selected"%>>Mississippi&nbsp;</option>
	<option value="26"<%If stateid="26" Then Response.write " selected"%>>Missouri&nbsp;</option>
	<option value="27"<%If stateid="27" Then Response.write " selected"%>>Montana&nbsp;</option>
	<option value="28"<%If stateid="28" Then Response.write " selected"%>>Nebraska&nbsp;</option>
	<option value="29"<%If stateid="29" Then Response.write " selected"%>>Nevada&nbsp;</option>
	<option value="30"<%If stateid="30" Then Response.write " selected"%>>New Hampshire&nbsp;</option>
	<option value="31"<%If stateid="31" Then Response.write " selected"%>>New Jersey&nbsp;</option>
	<option value="32"<%If stateid="32" Then Response.write " selected"%>>New Mexico&nbsp;</option>
	<option value="33"<%If stateid="33" Then Response.write " selected"%>>New York&nbsp;</option>
	<option value="34"<%If stateid="34" Then Response.write " selected"%>>North Carolina&nbsp;</option>
	<option value="35"<%If stateid="35" Then Response.write " selected"%>>North Dakota&nbsp;</option>
	<option value="36"<%If stateid="36" Then Response.write " selected"%>>Ohio&nbsp;</option>
	<option value="37"<%If stateid="37" Then Response.write " selected"%>>Oklahoma&nbsp;</option>
	<option value="38"<%If stateid="38" Then Response.write " selected"%>>Oregon&nbsp;</option>
	<option value="39"<%If stateid="39" Then Response.write " selected"%>>Pennsylvania&nbsp;</option>
	<option value="40"<%If stateid="40" Then Response.write " selected"%>>Rhode Island&nbsp;</option>
	<option value="41"<%If stateid="41" Then Response.write " selected"%>>South Carolina&nbsp;</option>
	<option value="42"<%If stateid="42" Then Response.write " selected"%>>South Dakota&nbsp;</option>
	<option value="43"<%If stateid="43" Then Response.write " selected"%>>Tennessee&nbsp;</option>
	<option value="44"<%If stateid="44" Then Response.write " selected"%>>Texas&nbsp;</option>
	<option value="45"<%If stateid="45" Then Response.write " selected"%>>Utah&nbsp;</option>
	<option value="46"<%If stateid="46" Then Response.write " selected"%>>Vermont&nbsp;</option>
	<option value="47"<%If stateid="47" Then Response.write " selected"%>>Virginia&nbsp;</option>
	<option value="48"<%If stateid="48" Then Response.write " selected"%>>Washington&nbsp;</option>
	<option value="49"<%If stateid="49" Then Response.write " selected"%>>West Virginia&nbsp;</option>
	<option value="50"<%If stateid="50" Then Response.write " selected"%>>Wisconsin&nbsp;</option>
	<option value="51"<%If stateid="51" Then Response.write " selected"%>>Wyoming&nbsp;</option>
<%
	End Function
	
	
	Function getStateOptionsAbr()
%>
	<option value="AK"<%If stateid="AK" Then Response.write " selected"%>>Alaska&nbsp;</option>
	<option value="AL"<%If stateid="AL" Then Response.write " selected"%>>Alabama&nbsp;</option>
	<option value="AZ"<%If stateid="AZ" Then Response.write " selected"%>>Arizona&nbsp;</option>
	<option value="AR"<%If stateid="AR" Then Response.write " selected"%>>Arkansas&nbsp;</option>
	<option value="CA"<%If stateid="CA" Then Response.write " selected"%>>California&nbsp;</option>
	<option value="CO"<%If stateid="CO" Then Response.write " selected"%>>Colorado&nbsp;</option>
	<option value="CT"<%If stateid="CT" Then Response.write " selected"%>>Connecticut&nbsp;</option>
	<option value="DE"<%If stateid="DE" Then Response.write " selected"%>>Delaware&nbsp;</option>
	<option value="DC"<%If stateid="DC" Then Response.write " selected"%>>District of Columbia&nbsp;</option>
	<option value="FL"<%If stateid="FL" Then Response.write " selected"%>>Florida&nbsp;</option>
	<option value="GA"<%If stateid="GA" Then Response.write " selected"%>>Georgia&nbsp;</option>
	<option value="HI"<%If stateid="HI" Then Response.write " selected"%>>Hawaii&nbsp;</option>
	<option value="ID"<%If stateid="ID" Then Response.write " selected"%>>Idaho&nbsp;</option>
	<option value="IL"<%If stateid="IL" Then Response.write " selected"%>>Illinois&nbsp;</option>
	<option value="IN"<%If stateid="IN" Then Response.write " selected"%>>Indiana&nbsp;</option>
	<option value="IA"<%If stateid="IA" Then Response.write " selected"%>>Iowa&nbsp;</option>
	<option value="KS"<%If stateid="KS" Then Response.write " selected"%>>Kansas&nbsp;</option>
	<option value="KY"<%If stateid="KY" Then Response.write " selected"%>>Kentucky&nbsp;</option>
	<option value="LA"<%If stateid="LA" Then Response.write " selected"%>>Louisiana&nbsp;</option>
	<option value="ME"<%If stateid="ME" Then Response.write " selected"%>>Maine&nbsp;</option>
	<option value="MD"<%If stateid="MD" Then Response.write " selected"%>>Maryland&nbsp;</option>
	<option value="MA"<%If stateid="MA" Then Response.write " selected"%>>Massachusetts&nbsp;</option>
	<option value="MI"<%If stateid="MI" Then Response.write " selected"%>>Michigan&nbsp;</option>
	<option value="MN"<%If stateid="MN" Then Response.write " selected"%>>Minnesota&nbsp;</option>
	<option value="MS"<%If stateid="MS" Then Response.write " selected"%>>Mississippi&nbsp;</option>
	<option value="MO"<%If stateid="MO" Then Response.write " selected"%>>Missouri&nbsp;</option>
	<option value="MT"<%If stateid="MT" Then Response.write " selected"%>>Montana&nbsp;</option>
	<option value="NE"<%If stateid="NE" Then Response.write " selected"%>>Nebraska&nbsp;</option>
	<option value="NV"<%If stateid="NV" Then Response.write " selected"%>>Nevada&nbsp;</option>
	<option value="NH"<%If stateid="NH" Then Response.write " selected"%>>New Hampshire&nbsp;</option>
	<option value="NJ"<%If stateid="NJ" Then Response.write " selected"%>>New Jersey&nbsp;</option>
	<option value="NM"<%If stateid="NM" Then Response.write " selected"%>>New Mexico&nbsp;</option>
	<option value="NY"<%If stateid="NY" Then Response.write " selected"%>>New York&nbsp;</option>
	<option value="NC"<%If stateid="NC" Then Response.write " selected"%>>North Carolina&nbsp;</option>
	<option value="ND"<%If stateid="ND" Then Response.write " selected"%>>North Dakota&nbsp;</option>
	<option value="OH"<%If stateid="OH" Then Response.write " selected"%>>Ohio&nbsp;</option>
	<option value="OK"<%If stateid="OK" Then Response.write " selected"%>>Oklahoma&nbsp;</option>
	<option value="OR"<%If stateid="OR" Then Response.write " selected"%>>Oregon&nbsp;</option>
	<option value="PA"<%If stateid="PA" Then Response.write " selected"%>>Pennsylvania&nbsp;</option>
	<option value="PR"<%If stateid="PR" Then Response.write " selected"%>>Puerto Rico&nbsp;</option>
	<option value="RI"<%If stateid="RI" Then Response.write " selected"%>>Rhode Island&nbsp;</option>
	<option value="SC"<%If stateid="SC" Then Response.write " selected"%>>South Carolina&nbsp;</option>
	<option value="SD"<%If stateid="SD" Then Response.write " selected"%>>South Dakota&nbsp;</option>
	<option value="TN"<%If stateid="TN" Then Response.write " selected"%>>Tennessee&nbsp;</option>
	<option value="TX"<%If stateid="TX" Then Response.write " selected"%>>Texas&nbsp;</option>
	<option value="UT"<%If stateid="UT" Then Response.write " selected"%>>Utah&nbsp;</option>
	<option value="VT"<%If stateid="VT" Then Response.write " selected"%>>Vermont&nbsp;</option>
	<option value="VA"<%If stateid="VA" Then Response.write " selected"%>>Virginia&nbsp;</option>
	<option value="WA"<%If stateid="WA" Then Response.write " selected"%>>Washington&nbsp;</option>
	<option value="WV"<%If stateid="WV" Then Response.write " selected"%>>West Virginia&nbsp;</option>
	<option value="WI"<%If stateid="WI" Then Response.write " selected"%>>Wisconsin&nbsp;</option>
	<option value="WY"<%If stateid="WY" Then Response.write " selected"%>>Wyoming&nbsp;</option>
<%
	End Function
%>