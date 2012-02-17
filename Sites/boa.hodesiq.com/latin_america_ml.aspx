<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="latin_america_ml.aspx.cs" Inherits="latin_america_ml" %>


<asp:Content ID="Image" ContentPlaceHolderID="Image" runat="Server">

    <img src="images/latin_america.jpg" width="578" height="166" alt="Latin America Explore a career with the Bank of Opportunity."
        title="Latin America Explore a career with the Bank of Opportunity." border="0" />
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="Main" runat="Server">
<script type="text/javascript"><!--
    function show(var_map_details) {
        var el = document.getElementById(var_map_details);
        el.style.visibility = "visible"; el.style.display = "block";
    }
    function hide(var_map_details) {
        var el = document.getElementById(var_map_details);
        el.style.visibility = "hidden"; el.style.display = "none";
    }
    function SwapDiv(divid, img) {   
        document.getElementById('DivOne').style.display = 'none';
        document.getElementById('DivTwo').style.display = 'none';
        document.getElementById(divid).style.display = 'inline';
        if (img == 'topimg1') {
            document.getElementById('topimg1').src = "images/asia_03_bacs.gif";
            document.getElementById('topimg2').src = "images/latam1_00_bacs.jpg";
        }
        if (img == 'topimg2') {
            document.getElementById('topimg1').src = "images/asia1_03_bacs.gif";
            document.getElementById('topimg2').src = "images/latam_00_bacs.jpg";
        }

    }
//--></script>
    <a name="skipmaincontent"></a>
    <h1 class="hidden">
        Bank of America Merrill Lynch in Latin America Overview</h1>    

    <table summary="Global Careers - EMEA" width="366" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="366" align="left" valign="top">
                          <p>
                   Bank of America operates a network of offices in 8 countries in Latin America (LATAM).  The company's regional footprint covers four time zones, multiple legal and regulatory jurisdictions and employs over 2500 associates in offices in Argentina, Brazil, Chile, Colombia, Costa Rica, Mexico, Panama and Uruguay, in addition to a strong Emerging Markets presence. The company is a long–established participant in the Latin American markets having maintained a presence in the region since 1954. 
                </p>
                <p>
                  Today, the company offers an integrated and comprehensive set of products and services across all businesses, serving the needs of individual, corporate, institutional and government clients, by combining the best of local knowledge and international expertise. 
                    <br />
                </p>
                <p>As in other markets where it operates, Bank of America’s business and support units are divided into independent but interrelated units.</p>
                
                <div id="retuntomap"> </div>
                <p> <a href="ada_latin_america_ml.aspx#mapstart" class="ada2adalink" onfocus="this.className='ada2adalink-over';"
                        onblur="this.className='ada2adalink';" title="View locations as text">View locations
                    as text</a></p></td>
                </tr>
    </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="map">

<style type="text/css">
 div#map_title_MEA {font-size:12px; font-weight:normal; }
div#map_view_MEA {background-image:url(images/boa_latam_map_BAC_02_new.jpg);width:349px;height:272px;position:relative;}
div#map_view_MEA   a.bullet {padding:0px; margin:0px; display:block; overflow : hidden; border:0px;background-repeat:no-repeat; position:absolute;}
div#map_view_MEA   a.bullet {width:11px; height:11px; background-image:url(images/BOA_bullet_normal.gif); }
div#map_view_MEA   a.bullet:hover{background-image:url(images/BOA_bullet_hover.gif);}
div#map_view_MEA   a.bullet:focus{background-image:url(images/BOA_bullet_hover.gif); outline:none;}




div#map_title_EUROPE { font-size:12px; font-weight:normal; }
div#map_view_EUROPE {background-image:url(images/boa_latam_map_BAC_02_new.jpg);width:349px;height:272px;position:relative;}
div#map_view_EUROPE  a.bullet {padding:0px; margin:0px; display:block; overflow : hidden; border:0px;background-repeat:no-repeat; position:absolute;}
div#map_view_EUROPE a.bullet {width:11px; height:11px; background-image:url(images/BOA_bullet_normal.gif); }
div#map_view_EUROPE  a.bullet:hover{background-image:url(images/BOA_bullet_hover.gif);}
div#map_view_MEA   a.bullet:focus{background-image:url(images/BOA_bullet_hover.gif); outline:none;}


div#map_details_MEA *{padding:0px; margin:0px; border:0px; font-family:Arial, sans-serif; font-size:12px; font-weight:normal; }
div#map_details_MEA div{ display:none;}
div#map_details_MEA div h1{ padding:15px 0px 15px 0px; font-family: Verdana, Helvetica, sans-serif;font-size: 1.0em;line-height: 1.4em; /*1.2em;*/font-weight: normal;color:Black;background-color: transparent;}
div#map_details_MEA div h2{ font-size: 0.9em;font-weight:bold;}
div#map_details_MEA div p { font-family: Verdana, Helvetica, sans-serif;font-size: 0.9em;line-height: 1.4em; /*1.2em;*/font-weight: normal;color: #333333;background-color: transparent;}


div#map_details_EUROPE *{padding:0px; margin:0px; border:0px; font-family:Arial, sans-serif; font-size:12px; font-weight:normal; }
div#map_details_EUROPE div{ display:none;}
div#map_details_EUROPE div h1{ padding:15px 0px 15px 0px; font-family: Verdana, Helvetica, sans-serif;font-size: 1.0em;line-height: 1.4em; /*1.2em;*/font-weight: normal;color:Black; background-color: transparent;}
div#map_details_EUROPE div h2{ font-size: 0.9em;font-weight:bold;}
div#map_details_EUROPE div p { font-family: Verdana, Helvetica, sans-serif;font-size: 0.9em;line-height: 1.4em; /*1.2em;*/font-weight: normal;color: #333333;background-color: transparent;}
</style>
    <table summary=""          cellspacing="0" cellpadding="0">
        <tr>
            <td  align="left" valign="top">
                <table width="370" height="27" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="150" height="27" align="center" valign="top"><a href="#A4" id="A4" style="outline: none" onkeypress="CheckKey(event, 'DivOne','topimg1');"> <img src="images/asia_03_bacs.gif" alt="Bank of America Merrill Lynch" title="Bank of America Merrill Lynch"
                                    name="topimg1" width="150" height="27" id="topimg1" onclick="SwapDiv('DivOne','topimg1')"
                                    border="0" /></a></td>
                        <td width="150" height="27" align="center" valign="top"><a href="#A4" id="A5" style="outline: none"  onkeypress="CheckKey(event, 'DivTwo','topimg2');"> <img src="images/latam1_00_bacs.jpg" alt="BA Continuum" title="BA Continuum"
                                    name="topimg2" width="150" height="27" id="topimg2" onclick="SwapDiv('DivTwo','topimg2')"
                                    border="0" /></a></td> 
                                    <td width="100" height="27" align="left" valign="top"><img src="images/asia_corner_05.gif" width="70px" height="27" alt="" /></td>                       
                    </tr></table></td></tr></table>
          <table width="300" height="27" border="0" cellpadding="0" cellspacing="0">
         <tr> <td>
     

          <div id="DivOne">  
              <div  style="background-image:url('images/clr.gif'); background-position:left; background-repeat: repeat-y; width:370;">
	          <div style="background-image:url('images/clr.gif'); background-position:right; background-repeat:repeat-y;">
		      <div style="background-image:url('images/clr.gif'); background-position:bottom; background-repeat: repeat-x;">
			  <div style="background-image:url('images/cbl.gif'); background-position:bottom left; background-repeat:no-repeat;">
			  <div style="background-image:url('images/cbr.gif'); background-position:bottom right; background-repeat:no-repeat; padding:10px;">
                <div id="map_title_EUROPE">&nbsp;&nbsp;Latin America</div>
                <div id="map_view_EUROPE">
                <a  id="loc15" title="Mexico-Tlaquepaque" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc15_info');" onmouseover="javascript:this.focus();show('loc15_info');" onfocus="javascript:show('loc15_info');" onblur="javascript:hide('loc15_info');" style="left:99px;top:29px;"></a>
                <a id="loc36" title="Mexico-Mexico City" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc36_info');" onmouseover="javascript:this.focus();show('loc36_info');" onfocus="javascript:show('loc36_info');" onblur="javascript:hide('loc36_info');" style="left:107.5px;top:33px;"></a>
                <a id="loc29" title="Panama-Panama City" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc29_info');" onmouseover="javascript:this.focus();show('loc29_info');" onfocus="javascript:show('loc29_info');" onblur="javascript:hide('loc29_info');" style="left:161.5px;top:62.5px;"></a>
                <a id="loc30" title="Colombia-Bogota" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc30_info');" onmouseover="javascript:this.focus();show('loc30_info');" onfocus="javascript:show('loc30_info');" onblur="javascript:hide('loc30_info');" style="left:176.5px;top:73.5px;"></a>
                <a id="loc1" title="Brazil-Sao Paulo" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc1_info');" onmouseover="javascript:this.focus();show('loc1_info');" onfocus="javascript:show('loc1_info');" onblur="javascript:hide('loc1_info');" style="left:248.5px;top:147px;"></a>
                <a id="loc13" title="Uruguay-Montevideo" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc13_info');" onmouseover="javascript:this.focus();show('loc13_info');" onfocus="javascript:show('loc13_info');" onblur="javascript:hide('loc13_info');" style="left:223.5px;top:181.5px;"></a>
                <a id="loc3" title="Chile-Las Condes" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc3_info');" onmouseover="javascript:this.focus();show('loc3_info');" onfocus="javascript:show('loc3_info');" onblur="javascript:hide('loc3_info');" style="left:182.5px;top:186.5px;"></a>
                </div>
                <div id="map_details_EUROPE">
                <div id="loc15_info"><h1>Mexico</h1><h2>Tlaquepaque</h2><p>Centro Corporativo Intermex<BR>Periferico SUR #7999 - E<BR>Tlaquepaque 45601, Mexico</p></div>
                <div id="loc36_info"><h1>Mexico</h1><h2>Mexico City</h2><p>Piso 22<BR>Paseo de la Reforma 265<BR>Mexico City 06500 DF, Mexico</p></div>
                <div id="loc29_info"><h1>Panama</h1><h2>Panama City</h2><p>Torres de las Americas Building Ste B-1702<BR>Boulevard Punta Pacifica<BR>Panama City, Panama</p></div>
                <div id="loc30_info"><h1>Colombia</h1><h2>Bogota</h2><p>Torre Samsung Building Ste 1506<BR>Carrara 7 Number 113-43<BR>Bogota, Colombia</p></div>
                <div id="loc1_info"><h1>Brazil</h1><h2>Sao Paulo</h2><p>Faria Lima Financial Center (FLFC)<BR>Av Brigadeiro Faria Lima 3400 – 18º andar<BR>Itaim Bibi; São Paulo – SP 04538-132, Brazil<BR><BR> International Plaza II<BR>Av Juscelino Kubitschek, 1327 – 9º andar<BR>São Paulo – SP 04543-011, Brazil</p></div>
                <div id="loc13_info"><h1>Uruguay</h1><h2>Montevideo</h2><p>Montevideo, Ruta 8km<BR>17,500, Zonamerica<BR>Montevideo, Uruguay</p></div>
                <div id="loc3_info"><h1>Chile</h1><h2>Las Condes</h2><p>Apoquindo 3500, 9th floor<BR>Las Condes, Santiago, Chile<BR><BR>Apoquindo 3500, 2nd floor<BR>Las Condes, Santiago, Chile<BR><BR>Sanchez Fontecilla 310, 10th floor<BR>Las Condes, Santiago, Chile</p></div>
                </div>
                 </div></div></div></div></div></div>    
                   <div id="DivTwo"   style="display: none">
                    <div  style="background-image:url('images/clr.gif'); background-position:left; background-repeat: repeat-y; width:370;">
	                <div style="background-image:url('images/clr.gif'); background-position:right; background-repeat:repeat-y;">
		            <div style="background-image:url('images/clr.gif'); background-position:bottom; background-repeat: repeat-x;">
			        <div style="background-image:url('images/cbl.gif'); background-position:bottom left; background-repeat:no-repeat;">
				    <div style="background-image:url('images/cbr.gif'); background-position:bottom right; background-repeat:no-repeat; padding:10px;">
                    <div id="map_title_MEA">&nbsp;&nbsp;Mexico and Costa Rica</div>
                   <div id="map_view_MEA">
                   <!--<a id="loc19" title="Turkey-Istanbul" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc19_info');" onmouseover="javascript:this.focus();show('loc19_info');" onfocus="javascript:show('loc19_info');" onblur="javascript:hide('loc19_info');" style="left:134.5px;top:1.5px;"></a>
                   <a id="loc21" title="Lebannon-Beirut" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc21_info');" onmouseover="javascript:this.focus();show('loc21_info');" onfocus="javascript:show('loc21_info');" onblur="javascript:hide('loc21_info');" style="left:158.5px;top:31.5px;"></a>
                   <a id="loc22" title="Israel-Tel Aviv" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc22_info');" onmouseover="javascript:this.focus();show('loc22_info');" onfocus="javascript:show('loc22_info');" onblur="javascript:hide('loc22_info');" style="left:156.5px;top:36.5px;"></a><a id="loc23" title="Bahrain-Manama" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc23_info');" onmouseover="javascript:this.focus();show('loc23_info');" onfocus="javascript:show('loc23_info');" onblur="javascript:hide('loc23_info');" style="left:204.5px;top:58.5px;"></a><a id="loc20" title="United Arab Emirates-Dubai" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc20_info');" onmouseover="javascript:this.focus();show('loc20_info');" onfocus="javascript:show('loc20_info');" onblur="javascript:hide('loc20_info');" style="left:219.5px;top:61.5px;"></a><a id="loc24" title="Saudi Arabia-Riyadh" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc24_info');" onmouseover="javascript:this.focus();show('loc24_info');" onfocus="javascript:show('loc24_info');" onblur="javascript:hide('loc24_info');" style="left:184.5px;top:66.5px;"></a><a id="loc25" title="South Africa-Johannesburg" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc25_info');" onmouseover="javascript:this.focus();show('loc25_info');" onfocus="javascript:show('loc25_info');" onblur="javascript:hide('loc25_info');" style="left:130.5px;top:230.5px;"></a>-->
                   
                   <a id="loc19" title="Mexico-Tlaquepaque" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc19_info');" onmouseover="javascript:this.focus();show('loc19_info');" onfocus="javascript:show('loc19_info');" onblur="javascript:hide('loc19_info');" style="left:98.5px;top:29px;"></a>
                   <a id="loc21" title="Costa Rica-San Jose" class="bullet" href="#A2" onmouseout="javascript:this.blur();hide('loc21_info');" onmouseover="javascript:this.focus();show('loc21_info');" onfocus="javascript:show('loc21_info');" onblur="javascript:hide('loc21_info');" style="left:149.5px;top:59.5px;"></a>
                   
                   </div>

            <div id="map_details_MEA">
            <div id="loc19_info"><h1>Mexico</h1><h2>Tlaquepaque</h2><p>BA Continuum Mexico S.C<BR>Centro Corporativo Intermex<BR>Periferico SUR #7999 - E<BR>Tlaquepaque 45601, Mexico</p></div>
            <div id="loc21_info"><h1>Costa Rica</h1><h2>San Jose</h2><p>BA Continuum Costa Rica Ltda.<BR>Calle Blancos, Parque Empresarial del Este, Edificio B-4<BR>Del Servicentro Calle Blancos, 100 mts Norte<BR>San Jose, Costa Rica</p></div>
            <!--<div id="loc22_info"><h1>Israel</h1><h2>Tel Aviv</h2><p>1 Azrieli Centre<BR>37th Floor, Round Tower<BR>132 Petach Tikvah Road<BR>Tel Aviv, 67021</p></div><div id="loc23_info"><h1>Bahrain</h1><h2>Manama</h2><p>Bahrain Middle East Bank Building,<BR>Diplomatic Area<BR>Manama, Bahrain</p></div><div id="loc20_info"><h1>United Arab Emirates</h1><h2>Dubai</h2><p>Dubai International Financial Centre:<br>5th Floor, The Gate<br>East Wing<br>P.O. Box 3911<br>Dubai, United Arab Emirates<br><br>Bur Dubai office:<br>6th Floor, Business Centre<br>Khalid Bin Al Waleed St<br>P.O. Box 3911<br>Dubai, United Arab Emirates<br></p></div><div id="loc24_info"><h1>Saudi Arabia</h1><h2>Riyadh</h2><p>Kingdom Tower - 20th Floor<BR>Olaya Street<BR>Riyadh</p></div><div id="loc25_info"><h1>South Africa</h1><h2>Johannesburg</h2><p>138 West Street<BR>Sandown<BR>Sandton<BR>Johannesburg, 2120</p></div>-->
            </div>

                    </div></div></div></div></div></td></tr>
                </table></asp:Content>
<asp:Content ID="Info" runat="server" ContentPlaceHolderID="Info">
    <table summary="" width="204" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <div style="border: 1px solid #e8e8e9; margin: 1px 0px 1px 0px; padding: 0px 0px 6px 0px;">
                    <h2 class="g-bold" style="margin: 0px 0px 0px 0px;">
                       Related Information</h2>
                    <div style="padding: 0px 0px 0px 4px;">
                        <table summary="" width="190" border="0" cellspacing="0" cellpadding="0" align="top">
                            <tr>
                                <td height="10" align="left" valign="middle">
                                </td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="latin_america_ml_lob.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Lines of Business">Lines of business</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="latin_america_ml_benefits_culture.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Benefits">Benefits</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="latin_america_ml_benefits_culture.aspx#CultureAndWork" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Culture & Work Environment">Culture
                                        & work environment</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="latin_america_ml_staffing.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Staffing Process">Staffing process</a></td>
                            </tr>
                            <tr>
                                <td height="7" align="center" valign="middle" style="border-top: #e5e5e5 1px Dashed; background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;"></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
    </table>
<script language='javascript1.1' type='text/javascript'>
    //<!—
    var isReload = getCookie("isReloadLAML");
    if (isReload != null && isReload != "") {
        //reload
        cmCreatePageviewTag('career:Tool:Regions;latin-america-ml_reload', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
    }
    else {
        //new
        setCookie("isReloadLAML", "isReloadLAML");
        cmCreatePageviewTag('career:Tool:Regions;latin-america-ml', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
    }

    function setCookie(c_name, value) {
        document.cookie = c_name + "=" + value;
    }

    function getCookie(c_name) {
        var i, x, y, ARRcookies = document.cookie.split(";");
        for (i = 0; i < ARRcookies.length; i++) {
            x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
            y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
            x = x.replace(/^\s+|\s+$/g, "");
            if (x == c_name) {
                return unescape(y);
            }
        }
    }

    //For selecting tabs when enter key is pressed
    function CheckKey(evt, div, img) {
        evt = (evt) ? evt : ((window.event) ? window.event : "")
        if (evt) {
            // process event here
            if (evt.keyCode == 13 || evt.which == 13) {
                SwapDiv(div, img)
            }
        }
    }
    //-->
</script>  
</asp:Content>


