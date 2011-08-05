<%@ Page Language="C#"  MasterPageFile="~/BOAmaster.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">


	
<!-- body starts here -->



<link rel="stylesheet" href="includes/fitfinder_video.css"/>

  <style type="text/css">
    ul.video-pagination a:link {text-decoration: none !important;}
    ul.video-pagination li a:hover {
	    font-weight:bold;
	    text-decoration: underline !important;
	    } 
	    video-pagination:hover {text-decoration: underline !important;}
    #maincontent a:hover {text-decoration: underline !important;}
  </style>
<script type="text/javascript" language="JavaScript">
    function getcss(intelementID) {
        switch (intelementID) {
            case '0':
                document.getElementById("video_select1").style.display = "block";
                document.getElementById("video_select2").style.display = "none";
                document.getElementById("video_select3").style.display = "none";
                document.getElementById("video_select4").style.display = "none";
                //  alert('0');
                break;
            case '1':
                document.getElementById("video_select1").style.display = "none";
                document.getElementById("video_select2").style.display = "block";
                document.getElementById("video_select3").style.display = "none";
                document.getElementById("video_select4").style.display = "none";
                // alert('1');
                break;
            case '2':
                var str_option = document.getElementById("sel_videocategory").value;
                //document.getElementById("video_select2").style.display="block";

                switch (str_option) {
                    case '2':
                        document.getElementById("video_select1").style.display = "none";
                        document.getElementById("video_select2").style.display = "none";
                        document.getElementById("video_select3").style.display = "none";
                        document.getElementById("video_select4").style.display = "block";
                        // alert(document.getElementById("sel_videocategory").value);
                        break;
                    case '3':
                        document.getElementById("video_select1").style.display = "block";
                        document.getElementById("video_select2").style.display = "none";
                        document.getElementById("video_select3").style.display = "none";
                        document.getElementById("video_select4").style.display = "none";
                        // alert(document.getElementById("sel_videocategory").value);
                        break;
                    case '4':
                        document.getElementById("video_select1").style.display = "none";
                        document.getElementById("video_select2").style.display = "none";
                        document.getElementById("video_select3").style.display = "block";
                        document.getElementById("video_select4").style.display = "none";
                        //  alert(document.getElementById("sel_videocategory").value);
                        break;
                }
        }
    }
</script>


        <a id="skipmaincontent"></a>
        <img alt="" height="4" src="images/clear.gif" width="15" /><br />
        <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
            <tr valign="top">
                <td height="8" valign="top">
                    <img alt="" height="4" src="images/clear.gif" width="100%" /></td>
            </tr>
            <tr valign="top">
				<td width="100%" valign="top">
                    <div>
                        <input type="hidden" name="__VIEWSTATE"  />
                    </div>

                    <div id="maincontent" class="video-library">
	                    <script type="text/javascript" src="Includes/libs/jquery/1.5.2/jquery.min.js"></script>
	                    <script type="text/javascript" src="Includes/libs/jquery/plugin/dialog.min.js"></script>
	                    <script type="text/javascript" src="Includes/_global.js"></script>                     
	                    <div id="feature-wrapper">
                            <div id="featured-videos" class="carousel no-js">
                                <h1>Featured Videos</h1>
                                <div class="profile"> <a href="campus-video.aspx?id=1" class="video-modal">
                                    <img src="images/campus/tn-anton.png" alt="Play video for Anton, HR Development Program"/></a>
	                                <p class="script"><a href="campusrecruiting/video/Anton/transcript.asp">View transcript</a></p>
                                </div>
                                <!--/.profile-->
                                <div class="profile"> <a href="campus-video.aspx?id=5" class="video-modal">
                                    <img src="images/campus/tn-kaitlyn.png" alt="Play video for Kaitlyn, Global Markets Sales and Trading Analyst Program"/></a>
	                                <p class="script"><a href="campusrecruiting/video/Kaitlyn/transcript.asp">View transcript</a></p>
                                </div>
                                <!--/.profile-->
                                <div class="profile"> <a href="campus-video.aspx?id=2" class="video-modal">
                                    <img src="images/campus/tn-diversity.png" alt="Play video for Diversity &amp; Inclusion"/></a>
	                                <p class="script"><a href="campusrecruiting/video/di/transcript.asp">View transcript</a></p>
                                </div>
                                <!--/.profile-->
                                <div class="profile"> <a href="campus-video.aspx?id=7" class="video-modal">
                                    <img src="images/campus/tn-narinder.png" alt="Play video for Narinder, Global Markets Associate Program"/></a>
	                                <p class="script"><a href="campusrecruiting/video/Narinder/transcript.asp">View transcript</a></p>
                                </div>
                                <!--/.profile-->
                                <div class="profile"> <a href="campus-video.aspx?id=8" class="video-modal">
                                    <img src="images/campus/tn-nichole.png" alt="Play video for Nichole, International Corporate Treasury Analyst Program"/></a>
	                                <p class="script"><a href="campusrecruiting/video/Nichole/transcript.asp">View transcript</a></p>
                                </div>
					                    <!--/.profile-->
                            </div>
			                    <!--/#featured-videos-->
	                    </div>
	                    <!--/#feature-wrapper-->

	                    <div id="vl-thumbnails-container">

		                    <div id="vl-thumbnails-container-bot">

			                    <h2>Video Library</h2>
			                    <fieldset id="vl-category">
				                    <label for="sel_videocategory" id="lbl_videocategory" >Select a video category:</label>
					                    <select id="sel_videocategory" name="sel_videocategory" onchange=getcss('2')>
					                        <option value="2">Diversity &amp; Inclusion</option>						                    
						                    <option value="3" selected>Meet Our People</option>						                    
						                    <option value="4">Our Purpose</option>
					                    </select>
			                    </fieldset>  
			                    <div id="video_select1">                  			
			                    <p class="video-pages">Videos 1-6 of 12</p>                    			
			                        <ul class="video-pagination" roll="navigation">
                                        <li class="previous"><a href="#">Previous</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="JavaScript:getcss('1');">2</a></li>
                                        <li><a href="JavaScript:getcss('1');">Next</a></li>
			                        </ul>
                               
			                        <ul class="video-selections">
				                        <li class="image-anton">
					                        <a href="campus-video.aspx?id=1" class="video">
					                        <img src="images/campus/tn-anton.png" width="160" height="100" alt="Play video for Anton, HR Development Program" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Anton/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>				                        
				                        <li class="image-howard">
					                        <a href="campus-video.aspx?id=3" class="video">
					                        <img src="images/campus/tn-howard.png" width="160" height="100" alt="Play video for Howard, Global Markets Sales and Trading Associate Program" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Howard/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
				                        <li>
					                        <a href="campus-video.aspx?id=4" class="video">
					                        <img src="images/campus/tn-jarrod.png" width="160" height="100" alt="Play video for Jarrod, Applied Technology Program" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Jarrod/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
				                        <li>
					                        <a href="campus-video.aspx?id=5" class="video">
					                        <img src="images/campus/tn-Kaitlyn.png" width="160" height="100" alt="Play video for Kaitlyn, Global Markets Sales and Trading Analyst Program" /></a> 
					                        <p class="transcript-link"><a href="campusrecruiting/video/Kaitlyn/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
				                        <li class="image-Kevin">
					                        <a href="campus-video.aspx?id=12" class="video">
					                        <img src="images/campus/tn-Kevin.png" width="160" height="100" alt="Play video for Kevin, Consumer MBA Program" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Kevin/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
				                        <li class="image-Leonard">
					                        <a href="campus-video.aspx?id=6" class="video">
					                        <img src="images/campus/tn-Leonard.png" width="160" height="100" alt="Play video for Leonard, Global Treasury Solutions Associate Program" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Leonard/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>				                        
			                        </ul>
                               
			                        <p class="video-pages">Videos 1-6 of 12</p>                    			
			                        <ul class="video-pagination" roll="navigation">
                                        <li class="previous"><a href="#">Previous</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="JavaScript:getcss('1');">2</a></li>
                                        <li><a href="JavaScript:getcss('1');">Next</a></li>
			                        </ul>
			                     </div>
			                     <div id="video_select2" style="display:none;">
                                    <p class="video-pages">Videos 7-12 of 12</p>                    			
                                    <ul class="video-pagination" roll="navigation">
                                        <li class="previous"><a href="JavaScript:getcss('0');">Previous</a></li>
                                        <li><a href="JavaScript:getcss('0');">1</a></li>                                        
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
			                        <ul class="video-selections">
				                        <li class="image-Narinder">
					                        <a href="campus-video.aspx?id=7" class="video">
					                        <img src="images/campus/tn-Narinder.png" width="160" height="100" alt="Play video for Narinder, Global Markets Associate Program" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Narinder/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>				                        
				                        <li class="image-Nichole">
					                        <a href="campus-video.aspx?id=8" class="video">
					                        <img src="images/campus/tn-Nichole.png" width="160" height="100" alt="Play video for Nichole, International Corporate Treasury Analyst Programme" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Nichole/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
				                        <li class="image-Patricia">
					                        <a href="campus-video.aspx?id=13" class="video">
					                        <img src="images/campus/tn-Patricia.png" width="160" height="100" alt="Play video for Patricia, Global Investment Banking Analyst Program" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Patricia/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
				                        <li  class="image-Saumya">
					                        <a href="campus-video.aspx?id=9" class="video">
					                        <img src="images/campus/tn-Saumya.png" width="160" height="100" alt="Play video for Saumya, Global Research Associate Programme" /></a> 
					                        <p class="transcript-link"><a href="campusrecruiting/video/Saumya/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
				                        <li class="image-Tanvi">
					                        <a href="campus-video.aspx?id=10" class="video">
					                        <img src="images/campus/tn-Tanvi.png" width="160" height="100" alt="Play video for Tanvi, Technology Analyst Programme" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Tanvi/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
				                        <li class="image-Zach">
					                        <a href="campus-video.aspx?id=11" class="video">
					                        <img src="images/campus/tn-Zach.png" width="160" height="100" alt="Play video for Zach, Commercial Banking Real Estate Banking Analyst Program" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/Zac/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
			                        </ul>
                               
                                    <p class="video-pages">Videos 7-12 of 12</p>                    			
                                    <ul class="video-pagination" roll="navigation">
                                        <li class="previous"><a href="JavaScript:getcss('0');">Previous</a></li>
                                        <li><a href="JavaScript:getcss('0');">1</a></li>                                        
                                        <li><a href="#">2</a></li>
                                        <li class="next"><a href="#">Next</a></li>
                                    </ul>
                                </div>
                                
                                 <div id="video_select3" style="display:none;"> 
			                        <ul class="video-selections">
				                        <li>
					                        <a href="campus-video.aspx?id=14" class="video">
					                        <img src="images/campus/tn-Dallas.png" width="160" height="100" alt="Play video for Dallas, Neighborhood Enterprise Initiative®" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/NEIDallas/nei_dallas_builders.html" class="transcript">View transcript</a></p>
				                        </li>
				                        <li>
					                        <a href="campus-video.aspx?id=15" class="video">
					                        <img src="images/campus/tn-Qualco.png" width="160" height="100" alt="Play video for Qualco Energy Corp, Seattle – Supporting clean renewable energy" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/SeattleQualco/seattle_qualco_energy_transcript.html" class="transcript">View transcript</a></p>
				                        </li>
				                        <li class="image-Queens">
					                        <a href="campus-video.aspx?id=16" class="video">
					                        <img src="images/campus/tn-Queens.png" width="160" height="100" alt="Play video for Queens Theatre in the Park, NYC – Local community economic growth" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/QueensTheater/queens_theatre.html" class="transcript">View transcript</a></p>
				                        </li>
			                        </ul>
			                     </div>
                                <div id="video_select4"  style="display:none;">                  			
			                        <ul class="video-selections">
				                         <li>
					                        <a href="campus-video.aspx?id=2" class="video">
					                        <img src="images/campus/tn-diversity.png" width="160" height="100" alt="Play video Diversity &amp; Inclusion" /></a>
					                        <p class="transcript-link"><a href="campusrecruiting/video/di/transcript.asp" class="transcript">View transcript</a></p>
				                        </li>
			                        </ul>
			                     </div>
		                    </div><!--/#vl-thumbnails-container-bot-->
	                    </div><!--/#vl-thumbnails-container-->
                    	
	                    <script type="text/javascript" src="Includes/libs/jquery/plugin/carousel.min.js"></script>
	                    <script type="text/javascript" src="Includes/_google.js"></script>
                    </div><!--/.video-library-->

</form>				</td>
            </tr>
        </table>
        <br />
        <br />
        
<!-- Body end here -->

</asp:Content>