<%
Dim campus_url
Dim isCampus
campus_url = Request.ServerVariables("URL")

isCampus = Instr(campus_url, "campusrecruiting/")
if isCampus > 0 then
    Response.Redirect("http://campus.bankofamerica.com")
end if
 
 %>

<%
Set video_profiles  = Server.CreateObject("Scripting.Dictionary")
Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Anton"
	video_profile.add "videoname", "HR Development Program"
	video_profile.add "videohtml", "video/Anton/index.html"
	video_profile.add "video", "video/Anton/player.swf"
	video_profile.add "popup", "video/Anton/transcript.asp"
	video_profile.add "key", "Anton"
video_profiles.add "Anton", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "DI"
	video_profile.add "videoname", "Diversity & Inclusion"
	video_profile.add "videohtml", "video/DI/index.html"
	video_profile.add "video", "video/DI/player.swf"
	video_profile.add "popup", "video/DI/transcript.asp"
	video_profile.add "key", "DI"
video_profiles.add "DI", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Howard"
	video_profile.add "videoname", "Global Markets Sales and Trading Associate Program"
	video_profile.add "videohtml", "video/Howard/index.html"
	video_profile.add "video", "video/Howard/player.swf"
	video_profile.add "popup", "video/Howard/transcript.asp"
	video_profile.add "key", "Howard"
video_profiles.add "Howard", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Jarrod"
	video_profile.add "videoname", "Applied Technology Program"
	video_profile.add "videohtml", "video/Jarrod/index.html"
	video_profile.add "video", "video/Jarrod/player.swf"
	video_profile.add "popup", "video/Jarrod/transcript.asp"
	video_profile.add "key", "Jarrod"
video_profiles.add "Jarrod", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Kaitlyn"
	video_profile.add "videoname", "Global Markets Sales and Trading Analyst Program"
	video_profile.add "videohtml", "video/Kaitlyn/index.html"
	video_profile.add "video", "video/Kaitlyn/player.swf"
	video_profile.add "popup", "video/Kaitlyn/transcript.asp"
	video_profile.add "key", "Kaitlyn"
video_profiles.add "Kaitlyn", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Kevin"
	video_profile.add "videoname", "Consumer MBA Program"
	video_profile.add "videohtml", "video/Kevin/index.html"
	video_profile.add "video", "video/Kevin/player.swf"
	video_profile.add "popup", "video/Kevin/transcript.asp"
	video_profile.add "key", "Kevin"
video_profiles.add "Kevin", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Leonard"
	video_profile.add "videoname", "Global Treasury Solutions Analyst Program"
	video_profile.add "videohtml", "video/Leonard/index.html"
	video_profile.add "video", "video/Leonard/player.swf"
	video_profile.add "popup", "video/Leonard/transcript.asp"
	video_profile.add "key", "Leonard"
video_profiles.add "Leonard", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Narinder"
	video_profile.add "videoname", "Global Markets Associate Program"
	video_profile.add "videohtml", "video/Narinder/index.html"
	video_profile.add "video", "video/Narinder/player.swf"
	video_profile.add "popup", "video/Narinder/transcript.asp"
	video_profile.add "key", "Narinder"
video_profiles.add "Narinder", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Nichola"
	video_profile.add "videoname", "International Corporate Treasury Analyst Programme"
	video_profile.add "videohtml", "video/Nichole/index.html"
	video_profile.add "video", "video/Nichole/player.swf"
	video_profile.add "popup", "video/Nichole/transcript.asp"
	video_profile.add "key", "Nichole"
video_profiles.add "Nichole", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Patricia"
	video_profile.add "videoname", "Global Investment Banking Analyst Program"
	video_profile.add "videohtml", "video/Patricia/index.html"
	video_profile.add "video", "video/Patricia/player.swf"
	video_profile.add "popup", "video/Patricia/transcript.asp"
	video_profile.add "key", "Patricia"
video_profiles.add "Patricia", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Saumya"
	video_profile.add "videoname", "Global Research Associate Programme"
	video_profile.add "videohtml", "video/Saumya/index.html"
	video_profile.add "video", "video/Saumya/player.swf"
	video_profile.add "popup", "video/Saumya/transcript.asp"
	video_profile.add "key", "Saumya"
video_profiles.add "Saumya", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Tanvi"
	video_profile.add "videoname", "Technology Analyst Programme"
	video_profile.add "videohtml", "video/Tanvi/index.html"
	video_profile.add "video", "video/Tanvi/player.swf"
	video_profile.add "popup", "video/Tanvi/transcript.asp"
	video_profile.add "key", "Tanvi"
video_profiles.add "Tanvi", video_profile

Set video_profile  = Server.CreateObject("Scripting.Dictionary")
	video_profile.add "name", "Zach"
	video_profile.add "videoname", "Commercial Banking Real Estate Banking Analyst Program"
	video_profile.add "videohtml", "video/Zach/index.html"
	video_profile.add "video", "video/Zach/player.swf"
	video_profile.add "popup", "video/Zach/transcript.asp"
	video_profile.add "key", "Zach"
video_profiles.add "Zach", video_profile

Function IncludeTranscript (key)
	select case key
		case "Anton"
%><!-- #include file="../campusrecruiting/video/Anton/transcript.html" --><%
		case "Howard"
%><!-- #include file="../campusrecruiting/video/Howard/transcript.html" --><%
		case "Jarrod"
%><!-- #include file="../campusrecruiting/video/Jarrod/transcript.html" --><%
		case "Kaitlyn"
%><!-- #include file="../campusrecruiting/video/Kaitlyn/transcript.html" --><%
		case "Kevin"
%><!-- #include file="../campusrecruiting/video/Kevin/transcript.html" --><%
		case "Leonard"
%><!-- #include file="../campusrecruiting/video/Leonard/transcript.html" --><%
		case "Narinder"
%><!-- #include file="../campusrecruiting/video/Narinder/transcript.html" --><%
		case "Nichole"
%><!-- #include file="../campusrecruiting/video/Nichole/transcript.html" --><%
		case "Patricia"
%><!-- #include file="../campusrecruiting/video/Patricia/transcript.html" --><%
		case "Saumya"
%><!-- #include file="../campusrecruiting/video/Saumya/transcript.html" --><%
		case "Tanvi"
%><!-- #include file="../campusrecruiting/video/Tanvi/transcript.html" --><%
		case "Zach"
%><!-- #include file="../campusrecruiting/video/Zach/transcript.html" --><%
		case else
	end select
End Function
%>