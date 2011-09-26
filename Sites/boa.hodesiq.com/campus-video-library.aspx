<%@ Page Language="C#"  Title="Bank of America | Careers | Featured Videos" MasterPageFile="~/BOAmaster.master"%>

<asp:content id="Content1" contentplaceholderid="cphmain" runat="server">

<!-- Alek, see Spell before altering UI of this page further. Thanks! -->

<link rel="stylesheet" href="Includes/campus.css"/>
<style>
    a.in-active:hover{outline:0 !important;}
</style>
<!--[if lt IE 9]><link rel="stylesheet" href="Includes/ie-campus.css" /><![endif]-->

<div id="maincontent" class="video-library">

    <h1 class="wai">Campus Video Library</h1>

	<div id="feature-wrapper">

		<div id="featured-videos" class="carousel no-js">

			<h2>Featured Videos</h2>

			<div id="profile-1" class="profile">

				<a href="campus-video.aspx?id=1" class="video-modal"><img src="images/campus/tn-anton.png" alt="Play video for Anton, HR Development Program"/></a>

				<p class="script"><a href="campusrecruiting/video/Anton/transcript.asp" title="View transcript for Anton">View transcript for Anton</a></p>

			</div><!--/.profile-->

			<div id="profile-2" class="profile">

				<a href="campus-video.aspx?id=5" class="video-modal"><img src="images/campus/tn-kaitlyn.png" alt="Play video for Kaitlyn, Global Markets Sales and Trading Analyst Program"/></a>

				<p class="script"><a href="campusrecruiting/video/Kaitlyn/transcript.asp" title="View transcript for Kaitlyn">View transcript for Kaitlyn</a></p>

			</div><!--/.profile-->

			<div id="profile-3" class="profile">

				<a href="campus-video.aspx?id=2" class="video-modal"><img src="images/campus/tn-diversity.png" alt="Play video for Diversity &amp; Inclusion"/></a>

				<p class="script"><a href="campusrecruiting/video/di/transcript.asp" title="View transcript for Diversity &amp; Inclusion">View transcript for Diversity &amp; Inclusion</a></p>

			</div><!--/.profile-->

			<div id="profile-4" class="profile">

				<a href="campus-video.aspx?id=7" class="video-modal"><img src="images/campus/tn-narinder.png" alt="Play video for Narinder, Global Markets Associate Program"/></a>

				<p class="script"><a href="campusrecruiting/video/Narinder/transcript.asp" title="View transcript for Narinder">View transcript for Narinder</a></p>

			</div><!--/.profile-->

			<div id="profile-5" class="profile">

				<a href="campus-video.aspx?id=8" class="video-modal"><img src="images/campus/tn-nichola.png" alt="Play video for Nichola International Corporate Treasury Analyst Program"/></a>

				<p class="script"><a href="campusrecruiting/video/Nichole/transcript.asp" title="View transcript for Nichola">View transcript for Nichola</a></p>

			</div><!--/.profile-->

		</div><!--/#featured-videos-->

	</div><!--/#feature-wrapper-->

	<div id="vl-thumbnails-container">

		<div id="vl-thumbnails-container-bot">

			<h2>Video Library</h2>

			<fieldset id="vl-category">

				<label for="sel_videocategory" id="lbl_videocategory">Select a video category:</label>

				<select id="sel_videocategory" name="sel_videocategory" onchange="getcss('2');">
					<option value="2">Diversity &amp; Inclusion</option>
					<option value="3" selected>Meet Our People</option>
					<option value="4">Our Purpose</option>
				</select>

			</fieldset>  

			<div id="video_select1">

				<p class="video-pages">Videos 1-6 of 12</p>

				<ul class="video-pagination" roll="navigation">
					<li class="previous"><a class="in-active">Previous</a></li>
					<li><a class="in-active">1</a></li>
					<li><a href="javascript:getcss('1');">2</a></li>
					<li class="next"><a href="javascript:getcss('1');">Next</a></li>
				</ul>


				<ul class="video-selections">
					<li class="image-anton">

						<a href="campus-video.aspx?id=1" class="video"><img src="images/campus/tn-anton.png" width="160" height="100" alt="Play video for Anton, HR Development Program" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Anton/transcript.asp" class="transcript" title="View transcript for Anton">View <span class="hiddencontent">Anton's</span> transcript</a></p>

					</li>
					<li class="image-howard">

						<a href="campus-video.aspx?id=3" class="video"><img src="images/campus/tn-howard.png" width="160" height="100" alt="Play video for Howard, Global Markets Sales and Trading Associate Program" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Howard/transcript.asp" class="transcript" title="View transcript for Howard">View <span class="hiddencontent">Howard's</span> transcript</a></p>

					</li>
					<li>

						<a href="campus-video.aspx?id=4" class="video"><img src="images/campus/tn-jarrod.png" width="160" height="100" alt="Play video for Jarrod, Applied Technology Program" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Jarrod/transcript.asp" class="transcript" title="View transcript for Jarrod">View <span class="hiddencontent">Jarrod's</span> transcript</a></p>

					</li>
					<li>

						<a href="campus-video.aspx?id=5" class="video"><img src="images/campus/tn-Kaitlyn.png" width="160" height="100" alt="Play video for Kaitlyn, Global Markets Sales and Trading Analyst Program" /></a> 

						<p class="transcript-link"><a href="campusrecruiting/video/Kaitlyn/transcript.asp" class="transcript" title="View transcript for Kaitlyn">View <span class="hiddencontent">Kaitlyn's</span> transcript</a></p>

					</li>
					<li class="image-Kevin">

						<a href="campus-video.aspx?id=12" class="video"><img src="images/campus/tn-Kevin.png" width="160" height="100" alt="Play video for Kevin, Consumer MBA Program" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Kevin/transcript.asp" class="transcript" title="View transcript for Kevin">View <span class="hiddencontent">Kevin's</span> transcript</a></p>

					</li>
					<li class="image-Leonard">

						<a href="campus-video.aspx?id=6" class="video"><img src="images/campus/tn-Leonard.png" width="160" height="100" alt="Play video for Leonard, Global Treasury Solutions Associate Program" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Leonard/transcript.asp" class="transcript" title="View transcript for Leonard">View <span class="hiddencontent">Leonard's</span> transcript</a></p>

					</li>
				</ul>

				<p class="video-pages">Videos 1-6 of 12</p>

				<ul class="video-pagination" roll="navigation">
					<li class="previous"><a class="in-active">Previous</a></li>
					<li><a class="in-active">1</a></li>
					<li><a href="javascript:getcss('1');">2</a></li>
					<li class="next"><a href="javascript:getcss('1');">Next</a></li>
				</ul>

		
			</div><!--/#video_select1-->

			<div id="video_select2" style="display:none;">

				<p class="video-pages">Videos 7-12 of 12</p>

				<ul class="video-pagination" roll="navigation">
					<li class="previous"><a href="javascript:getcss('0');">Previous</a></li>
					<li><a href="javascript:getcss('0');">1</a></li>    
					<li><a class="in-active">2</a></li>
					<li class="next"><a class="in-active">Next</a></li>
				</ul>

				<ul class="video-selections">
					<li class="image-Narinder">

						<a href="campus-video.aspx?id=7" class="video"><img src="images/campus/tn-Narinder.png" width="160" height="100" alt="Play video for Narinder, Global Markets Associate Program" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Narinder/transcript.asp" class="transcript" title="View transcript for Narinder">View <span class="hiddencontent">Narinder's</span> transcript</a></p>

					</li>
					<li class="image-Nichole">

						<a href="campus-video.aspx?id=8" class="video"><img src="images/campus/tn-nichola.png" width="160" height="100" alt="Play video for Nichola, International Corporate Treasury Analyst Programme" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Nichole/transcript.asp" class="transcript" title="View transcript for Nichola">View <span class="hiddencontent">Nichola's</span> transcript</a></p>

					</li>
					<li class="image-Patricia">

						<a href="campus-video.aspx?id=13" class="video"><img src="images/campus/tn-Patricia.png" width="160" height="100" alt="Play video for Patricia, Global Investment Banking Analyst Program" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Patricia/transcript.asp" class="transcript" title="View transcript for Patricia">View <span class="hiddencontent">Patricia's</span> transcript</a></p>

					</li>
					<li  class="image-Saumya">

						<a href="campus-video.aspx?id=9" class="video"><img src="images/campus/tn-Saumya.png" width="160" height="100" alt="Play video for Saumya, Global Research Associate Programme" /></a> 

						<p class="transcript-link"><a href="campusrecruiting/video/Saumya/transcript.asp" class="transcript" title="View transcript for Saumya">View <span class="hiddencontent">Saumya's</span> transcript</a></p>

					</li>
					<li class="image-Tanvi">

						<a href="campus-video.aspx?id=10" class="video"><img src="images/campus/tn-Tanvi.png" width="160" height="100" alt="Play video for Tanvi, Technology Analyst Programme" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Tanvi/transcript.asp" class="transcript" title="View transcript for Tanvi">View <span class="hiddencontent">Tanvi's</span> transcript</a></p>

					</li>
					<li class="image-Zach">

						<a href="campus-video.aspx?id=11" class="video"><img src="images/campus/tn-Zach.png" width="160" height="100" alt="Play video for Zach, Commercial Banking Real Estate Banking Analyst Program" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/Zach/transcript.asp" class="transcript" title="View transcript for Zach">View <span class="hiddencontent">Zach's</span> transcript</a></p>

					</li>
				</ul>

				<p class="video-pages">Videos 7-12 of 12</p>

				<ul class="video-pagination" roll="navigation">
					<li class="previous"><a href="javascript:getcss('0');">Previous</a></li>
					<li><a href="javascript:getcss('0');">1</a></li>    
					<li><a class="in-active">2</a></li>
					<li class="next"><a class="in-active">Next</a></li>
				</ul>


			</div><!--/#video_select2-->

			<div id="video_select3" style="display:none;"> 

				<ul class="video-selections">
					<li>

						<a href="campus-video.aspx?id=14" class="video"><img src="images/campus/tn-Dallas.png" width="160" height="100" alt="Play video for Dallas, Neighborhood Enterprise Initiative®" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/NEIDallas/nei_dallas_builders.html" class="transcript" title="View transcript for Dallas, Neighborhood Enterprise Initiative®">View transcript <span class="hiddencontent">for Dallas, Neighborhood Enterprise Initiative®</span></a></p>

					</li>
					<li>

						<a href="campus-video.aspx?id=15" class="video"><img src="images/campus/tn-Qualco.png" width="160" height="100" alt="Play video for Qualco Energy Corp, Seattle – Supporting clean renewable energy" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/SeattleQualco/seattle_qualco_energy_transcript.html" class="transcript" title="View transcript for Qualco Energy Corp, Seattle – Supporting clean renewable energy">View transcript <span class="hiddencontent">for Qualco Energy Corp, Seattle – Supporting clean renewable energy</span></a></p>

					</li>
					<li class="image-Queens">

						<a href="campus-video.aspx?id=16" class="video"><img src="images/campus/tn-Queens.png" width="160" height="100" alt="Play video for Queens Theatre in the Park, NYC – Local community economic growth" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/QueensTheater/queens_theatre.html" class="transcript" title="View transcript for Queens Theatre in the Park, NYC – Local community economic growth">View transcript <span class="hiddencontent">for Queens Theatre in the Park, NYC – Local community economic growth</span></a></p>

					</li>
				</ul>

			</div><!--/#video_select3-->

			<div id="video_select4"  style="display:none;">

				<ul class="video-selections">
					<li>

						<a href="campus-video.aspx?id=2" class="video"><img src="images/campus/tn-diversity.png" width="160" height="100" alt="Play video Diversity &amp; Inclusion" /></a>

						<p class="transcript-link"><a href="campusrecruiting/video/di/transcript.asp" class="transcript" title="View transcript for Diversity &amp; Inclusion">View transcript <span class="hiddencontent">for Diversity &amp; Inclusion</span></a></p>

					</li>
				</ul>

			</div><!--/#video_select4-->

		</div><!--/#vl-thumbnails-container-bot-->

	</div><!--/#vl-thumbnails-container-->

</div><!--/.video-library-->

<script src="Includes/_google.js"></script>
<script src="Includes/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="Includes/libs/jquery/plugin/carousel.min.js"></script>
<script src="Includes/libs/jquery/plugin/dialog.min.js"></script>
<!-- script src="Includes/libs/jquery/plugin/keyboard.focus.min.js"></script -->
<script src="Includes/_global.js"></script>

</asp:content>