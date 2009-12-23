<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false"
    AutoEventWireup="true" CodeFile="emea.aspx.cs" Inherits="emea" Title="Bank of America | Careers | Locations |Canada | Staffing" %>

<asp:Content ID="Image" ContentPlaceHolderID="Image" runat="Server">

    <img src="images/global-careers-emea_I.jpg" width="578" height="166" alt="Explore a career with the Bank of Opportunity."
        title="Explore a career with the Bank of Opportunity." border="0" />
    <div class="hidden">
        Explore a career with the Bank of Opportunity.</div>
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
            document.getElementById('topimg1').src = "images/Europe_04_bacs.gif";
            document.getElementById('topimg2').src = "images/MEA_03_bacs.gif";           
        }
        if (img == 'topimg2') {
            document.getElementById('topimg1').src = "images/Europe_03_bacs.gif";
            document.getElementById('topimg2').src = "images/MEA_04_bacs.gif";
        }

    }
//--></script>


    <a name="skipmaincontent"></a>
    <h1 class="hidden">
        Global Careers - EMEA</h1>    

    <table summary="Global Careers - EMEA" width="366" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="366" align="left" valign="top">
                          <p>
                   Bank of America operates a network of offices in 22 countries in Europe, the Middle East and Africa (EMEA). The company's regional footprint covers five time zones, multiple legal and regulatory jurisdictions and employs over 14,000 associates in offices in Belgium, France, Greece, Germany, Ireland, Italy, Luxembourg, the Netherlands, Portugal, Spain and the UK, in addition to a strong Emerging Markets presence. The company is a long&#8211;established participant in the European markets having maintained a presence in the region since 1922.
                </p>
                <p>
                   Today, the company offers an integrated and comprehensive set of products and services across all businesses, serving the needs of individual, corporate, institutional and government clients, by combining the best of local knowledge and international expertise.
                    <br />
                </p>
                <p>Bank of America&#8217;s Credit Card business (Card Services), has been operating in Europe since 1993, and has offices in the UK, Ireland and Spain. With over seven million customers, Bank of America Europe Card Services is the largest credit card lender in the region.</p>
                <p>As in other markets where it operates, Bank of America&#8217;s business and support units are divided into independent but interrelated units.</p>                
                <div id="retuntomap"> </div>
                <p> <a href="ada_emea.aspx#mapstart" class="ada2adalink" onfocus="this.className='ada2adalink-over';"
                        onblur="this.className='ada2adalink';" title="View locations as text">View locations
                    as text</a></p></br></td>
                </tr>
    </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="map">

<style type="text/css"><!--

div#map_title_MEA {font-size:12px; font-weight:normal; }
div#map_view_MEA {background-image:url(images/BOA_GC_AMAP.jpg);width:349px;height:272px;position:relative;}
div#map_view_MEA   a.bullet {padding:0px; margin:0px; display:block; overflow : hidden; border:0px;background-repeat:no-repeat; position:absolute;}
div#map_view_MEA   a.bullet {width:11px; height:11px; background-image:url(images/BOA_bullet_normal.gif); }
div#map_view_MEA   a.bullet:hover{background-image:url(images/BOA_bullet_hover.gif);}

div#map_title_EUROPE { font-size:12px; font-weight:normal; }
div#map_view_EUROPE {background-image:url(images/BOA_GC_EMAP.jpg);width:349px;height:272px;position:relative;}
div#map_view_EUROPE  a.bullet {padding:0px; margin:0px; display:block; overflow : hidden; border:0px;background-repeat:no-repeat; position:absolute;}
div#map_view_EUROPE a.bullet {width:11px; height:11px; background-image:url(images/BOA_bullet_normal.gif); }
div#map_view_EUROPE  a.bullet:hover{background-image:url(images/BOA_bullet_hover.gif);}


div#map_details_MEA *{padding:0px; margin:0px; border:0px; font-family:Arial, sans-serif; font-size:12px; font-weight:normal; }
div#map_details_MEA div{ display:none;}
div#map_details_MEA div h1{ padding:15px 0px 15px 0px; font-size:14px}
div#map_details_MEA div h2{ font-size:12px;font-weight:bold;}
div#map_details_MEA div p { font-size:12px;}


div#map_details_EUROPE *{padding:0px; margin:0px; border:0px; font-family:Arial, sans-serif; font-size:12px; font-weight:normal; }
div#map_details_EUROPE div{ display:none;}
div#map_details_EUROPE div h1{ padding:15px 0px 15px 0px; font-size:14px}
div#map_details_EUROPE div h2{ font-size:12px;font-weight:bold;}
div#map_details_EUROPE div p { font-size:12px;}
--></style>
    <table summary=""   cellspacing="0" cellpadding="0">
        <tr>
            <td  align="left" valign="top">
                <table width="361" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="150" height="27" align="left" valign="top"><a href="#A4" id="A4" style="outline: none"> <img src="images/Europe_04_bacs.gif" alt="Europe" title="Europe"
                                    name="topimg1" width="150" height="27" id="topimg1" onclick="SwapDiv('DivOne','topimg1')"
                                    border="0" /></a></td>
                        <td width="150" height="27" align="left" valign="top"><a href="#A4" id="A5" style="outline: none"> <img src="images/MEA_03_bacs.gif" alt="Middle East and Africa" title="Middle East and Africa"
                                    name="topimg2" width="150" height="27" id="topimg2" onclick="SwapDiv('DivTwo','topimg2')"
                                    border="0" /></a></td> 
                                    <td width="62" height="27" align="left" valign="top"><img src="images/asia_corner_05.gif" width="62" height="27" alt="" /></td>                       
                    </tr></table></td></tr></table>
                     <table summary=""   cellspacing="0" cellpadding="0">
                        <tr>      <td width="6" align="left" valign="top">
                                       <img src="images/emea_gcib_05.gif" width="6" height="300" alt=""></td>
                                   <td  align="center" valign="top">
                                        <div style="margin:0px 0px 0px 0.5px">
                                            <div id="DivOne">  
                                             <div id="map_title_EUROPE" align="left">&nbsp;&nbsp;Europe</div>
                                             <div id="map_view_EUROPE"><a id="loc36" title="United Kingdom-Isle of Man" class="bullet" href="#" onmouseout="javascript:hide('loc36_info');" onmouseover="javascript:show('loc36_info');" style="left:70.5px;top:57.5px;"></a><a id="loc29" title="Ireland-Carrick on Shannon" class="bullet" href="#" onmouseout="javascript:hide('loc29_info');" onmouseover="javascript:show('loc29_info');" style="left:48.5px;top:62.5px;"></a><a id="loc30" title="United Kingdom-Chester" class="bullet" href="#" onmouseout="javascript:hide('loc30_info');" onmouseover="javascript:show('loc30_info');" style="left:72.5px;top:70.5px;"></a><a id="loc1" title="Ireland-Dublin" class="bullet" href="#" onmouseout="javascript:hide('loc1_info');" onmouseover="javascript:show('loc1_info');" style="left:59.5px;top:71.5px;"></a><a id="loc13" title="Poland-Warsaw" class="bullet" href="#" onmouseout="javascript:hide('loc13_info');" onmouseover="javascript:show('loc13_info');" style="left:220.5px;top:80.5px;"></a><a id="loc3" title="The Netherlands-Amsterdam" class="bullet" href="#" onmouseout="javascript:hide('loc3_info');" onmouseover="javascript:show('loc3_info');" style="left:142.5px;top:83.5px;"></a><a id="loc15" title="Russia-Moscow" class="bullet" href="#" onmouseout="javascript:hide('loc15_info');" onmouseover="javascript:show('loc15_info');" style="left:312.5px;top:83.5px;"></a><a id="loc34" title="United Kingdom-Camberley" class="bullet" href="#" onmouseout="javascript:hide('loc34_info');" onmouseover="javascript:show('loc34_info');" style="left:93.5px;top:88.5px;"></a><a id="loc33" title="United Kingdom-London" class="bullet" href="#" onmouseout="javascript:hide('loc33_info');" onmouseover="javascript:show('loc33_info');" style="left:98.5px;top:88.5px;"></a><a id="loc31" title="United Kingdom-Bromley" class="bullet" href="#" onmouseout="javascript:hide('loc31_info');" onmouseover="javascript:show('loc31_info');" style="left:104.5px;top:96.5px;"></a><a id="loc32" title="United Kingdom-Croydon" class="bullet" href="#" onmouseout="javascript:hide('loc32_info');" onmouseover="javascript:show('loc32_info');" style="left:97.5px;top:97.5px;"></a><a id="loc6" title="Belgium-Antwerp" class="bullet" href="#" onmouseout="javascript:hide('loc6_info');" onmouseover="javascript:show('loc6_info');" style="left:138.5px;top:98.5px;"></a><a id="loc7" title="Germany-Frankfurt" class="bullet" href="#" onmouseout="javascript:hide('loc7_info');" onmouseover="javascript:show('loc7_info');" style="left:163.5px;top:100.5px;"></a><a id="loc4" title="Belgium-Brussels" class="bullet" href="#" onmouseout="javascript:hide('loc4_info');" onmouseover="javascript:show('loc4_info');" style="left:142.5px;top:102.5px;"></a><a id="loc11" title="Luxembourg-Luxembourg" class="bullet" href="#" onmouseout="javascript:hide('loc11_info');" onmouseover="javascript:show('loc11_info');" style="left:152.5px;top:110.5px;"></a><a id="loc2" title="France-Paris" class="bullet" href="#" onmouseout="javascript:hide('loc2_info');" onmouseover="javascript:show('loc2_info');" style="left:124.5px;top:114.5px;"></a><a id="loc35" title="United Kingdom-Channel Islands" class="bullet" href="#" onmouseout="javascript:hide('loc35_info');" onmouseover="javascript:show('loc35_info');" style="left:84.5px;top:115.5px;"></a><a id="loc17" title="Switzerland-Zurich" class="bullet" href="#" onmouseout="javascript:hide('loc17_info');" onmouseover="javascript:show('loc17_info');" style="left:170.5px;top:121.5px;"></a><a id="loc16" title="Switzerland-Geneva" class="bullet" href="#" onmouseout="javascript:hide('loc16_info');" onmouseover="javascript:show('loc16_info');" style="left:161.5px;top:145.5px;"></a><a id="loc9" title="Italy-Milan" class="bullet" href="#" onmouseout="javascript:hide('loc9_info');" onmouseover="javascript:show('loc9_info');" style="left:183.5px;top:162.5px;"></a><a id="loc12" title="Monaco-Monte Carlo" class="bullet" href="#" onmouseout="javascript:hide('loc12_info');" onmouseover="javascript:show('loc12_info');" style="left:159.5px;top:170.5px;"></a><a id="loc10" title="Italy-Rome" class="bullet" href="#" onmouseout="javascript:hide('loc10_info');" onmouseover="javascript:show('loc10_info');" style="left:190.5px;top:189.5px;"></a><a id="loc18" title="Spain-Madrid" class="bullet" href="#" onmouseout="javascript:hide('loc18_info');" onmouseover="javascript:show('loc18_info');" style="left:77.5px;top:207.5px;"></a><a id="loc14" title="Portugal-Lisbon" class="bullet" href="#" onmouseout="javascript:hide('loc14_info');" onmouseover="javascript:show('loc14_info');" style="left:38.5px;top:219.5px;"></a><a id="loc8" title="Greece-Athens" class="bullet" href="#" onmouseout="javascript:hide('loc8_info');" onmouseover="javascript:show('loc8_info');" style="left:277.5px;top:227.5px;"></a></div>
                                             
                                        </div>
                                        <div id="DivTwo" style="display: none">
                                         <div id="map_title_MEA" align="left">&nbsp;&nbsp;Middle East and Africa</div>
                                         <div id="map_view_MEA"><a id="loc19" title="Turkey-Istanbul" class="bullet" href="#" onmouseout="javascript:hide('loc19_info');" onmouseover="javascript:show('loc19_info');" style="left:134.5px;top:1.5px;"></a><a id="loc21" title="Lebannon-Beirut" class="bullet" href="#" onmouseout="javascript:hide('loc21_info');" onmouseover="javascript:show('loc21_info');" style="left:158.5px;top:31.5px;"></a><a id="loc22" title="Israel-Tel Aviv" class="bullet" href="#" onmouseout="javascript:hide('loc22_info');" onmouseover="javascript:show('loc22_info');" style="left:156.5px;top:36.5px;"></a><a id="loc23" title="Bahrain-Manama" class="bullet" href="#" onmouseout="javascript:hide('loc23_info');" onmouseover="javascript:show('loc23_info');" style="left:204.5px;top:58.5px;"></a><a id="loc20" title="United Arab Emirates-Dubai" class="bullet" href="#" onmouseout="javascript:hide('loc20_info');" onmouseover="javascript:show('loc20_info');" style="left:219.5px;top:61.5px;"></a><a id="loc24" title="Saudi Arabia-Riyadh" class="bullet" href="#" onmouseout="javascript:hide('loc24_info');" onmouseover="javascript:show('loc24_info');" style="left:184.5px;top:66.5px;"></a><a id="loc25" title="South Africa-Johannesburg" class="bullet" href="#" onmouseout="javascript:hide('loc25_info');" onmouseover="javascript:show('loc25_info');" style="left:130.5px;top:230.5px;"></a></div>
                                         
                                    </div>
                               </div></td> 
                                  <td width="6" align="left" valign="top">
                                                    <img src="images/emea_gcib_07.gif" width="6" height="300" alt=""></td>
                        </tr></table>
                    <table width="361"  border="0" cellpadding="0" cellspacing="0"><tr>
                              <td width="361" height ="128" align="left" valign="top" bgcolor="#FFFFFF" class="address"
                                    style="background-image: url(images/bottom_bg_map.gif); background-position: left top;
                                    background-repeat: no-repeat;">
                             <div style="margin:0px 0px 0px 10px">
                                <div id="map_details_EUROPE" align="left">
                                    <div id="loc36_info">
                                            <h1 class="black">United Kingdom</h1>
                                            <h2 class="bold">Isle of Man</h2>
                                           <p>Belgravia House<BR>34/44 Circular Road<BR>Douglas, Isle of Man IM1 1QW</p></div>
                                    <div id="loc29_info">
                                            <h1 class="black">Ireland</h1>
                                            <h2 class="bold">Carrick on Shannon</h2>
                                            <p>Bank of America<BR>Dublin Road<BR>Carrick on Shannon<BR>Co. Leitrim</p></div>
                                     <div id="loc30_info">
                                        <h1 class="black">United Kingdom</h1>
                                        <h2 class="bold">Chester</h2>
                                        <p>Bank of America<BR>Chester Business Park<BR>Chester, CH4 9FB</p></div>
                                     <div id="loc1_info"><h1 class="black">Ireland</h1>
                                        <h2 class="bold">Dublin</h2>
                                        <p>Harcourt Building, 3rd Floor<BR>Harcourt Street<BR>Dublin 2<BR><BR> Treasury Building<BR>Lower Grand Canal Street<BR>Dublin 2<BR><BR> Central Park Block D<BR>Leopardstown<BR>Dublin 18<BR><BR> Carrick on Shannon and Dublin (Card Services)<BR>Bank of America<BR>Dublin Road<BR>Carrick on Shannon<BR>Co. Leitrim</p></div>
                                     <div id="loc13_info">
                                        <h1 class="black">Poland</h1>
                                        <h2 class="bold">Warsaw</h2><p>Al. Jerozolimskie 65/79<BR>Office no: 1309<BR>Warsaw, 00-697</p></div>
                                     <div id="loc3_info">
                                        <h1 class="black">The Netherlands</h1>
                                        <h2 class="bold">Amsterdam</h2>
                                        <p>Rembrandt Tower<BR>27th Floor<BR>No.1 Amstelplein<BR>Amsterdam, 1096 HA<BR><BR> Herengracht 469<BR>1017 BS Amsterdam<BR>Nederland<BR>Post address:<BR>Postbus 1638<BR>1000 BP Amsterdam</p></div>
                                     <div id="loc15_info">
                                            <h1 class="black">Russia</h1>
                                            <h2 class="bold">Moscow
                                            </h2><p>Znamenka Street, 7<BR>Building 3<BR>Moscow, 119019<BR>Russia</p></div>
                                     <div id="loc34_info">
                                            <h1 class="black">United Kingdom</h1>
                                            <h2 class="bold">Camberley</h2>
                                            <p>Yorktown Business Park<BR>BStanhope Road<BR>Camberley, GU153BW</p></div>
                                    <div id="loc33_info">
                                            <h1 class="black">United Kingdom</h1>
                                            <h2 class="bold">London</h2>
                                            <p>2 King Edward Street<BR>London, EC1A 1HQ<BR><BR>5 Canada Square<BR>London E14 5AQ<BR><BR>20 Farringdon Road<BR>London, EC1<BR><BR>Seal House<BR>1 Swan Lane<BR>London, EC4<BR><BR>88 Wood Street<BR>London, EC2 <BR><BR>Warwick Court<BR>London, EC4</p></div>
                                    <div id="loc31_info">
                                            <h1 class="black">United Kingdom</h1>
                                            <h2 class="bold">Bromley</h2>
                                            <p>26 Elmfield Road<BR>Bromley, BR1 1WA</p></div>
                                    <div id="loc32_info">
                                            <h1 class="black">United Kingdom</h1>
                                            <h2 class="bold">Croydon</h2>
                                            <p>41 Cherry Orchard Road<BR>Croydon, CR9 6BY</p></div>
                                    <div id="loc6_info">
                                            <h1 class="black">Belgium</h1>
                                            <h2 class="bold">Antwerp</h2>
                                            <p>Marsh House<BR>Uitbreidingstraat 180/6<BR>B-2600 Antwerp<BR><BR></p></div>
                                    <div id="loc7_info">
                                            <h1 class="black">Germany</h1>
                                            <h2 class="bold">Frankfurt</h2>
                                            <p>An der Welle 5<BR>D-60322, Frankfurt<BR><BR>Main Tower<BR>Neue Mainzer Strasse 52<BR>Frankfurt, 60311 </p></div>
                                    <div id="loc4_info">
                                            <h1 class="black">Belgium</h1>
                                            <h2 class="bold">Brussels</h2>
                                            <p>Global Wealth Management<BR>273, avenue de Tervueren<BR>Brussels, B-1150</p></div>
                                    <div id="loc11_info">
                                        <h1 class="black">Luxembourg</h1>
                                        <h2 class="bold">Luxembourg</h2>
                                        <p>4, Rue Albert Borschette<BR>L-1246<BR>Luxembourg</p></div>
                                    <div id="loc2_info">
                                          <h1 class="black">France</h1>
                                          <h2 class="bold">Paris</h2>
                                          <p>52 rue Francois 1er<BR>75008, Paris<BR><BR>112 Avenue Kleber<BR>2nd Floor<BR>BP 2002-16<BR>Paris, 75116</p></div>
                                     <div id="loc35_info">
                                        <h1 class="black">United Kingdom</h1>
                                        <h2 class="bold">Channel Islands</h2><p>Forum House<BR>Grenville Street<BR>St Helier, Jersey<BR>Channel Islands, JE1 1JE</p></div>
                                     <div id="loc17_info">
                                        <h1 class="black">Switzerland</h1>
                                        <h2 class="bold">Zurich</h2><p>Stockerhof<BR>Stockerstrasse 23<BR>Zurich, 8039</p></div>
                                     <div id="loc16_info">
                                        <h1 class="black">Switzerland</h1>
                                        <h2 class="bold">Geneva</h2><p>13 Route de Florissant<BR>PO Box 3070<BR>Geneva, 1211</p></div>
                                     <div id="loc9_info">
                                        <h1 class="black">Italy</h1>
                                        <h2 class="bold">Milan</h2><p>5th Floor<BR>Corso Matteotti 10<BR>Milan, 20121<BR><BR> Via Manzoni, 5<BR>Milan, 20121</p></div>
                                     <div id="loc12_info">
                                        <h1 class="black">Monaco</h1>
                                        <h2 class="bold">Monte Carlo</h2><p>Le Prince de Galles<BR>3-5 Avenue de Citronniers<BR>BP163<BR>Monte Carlo, 98003</p></div>
                                    <div id="loc10_info">
                                        <h1 class="black">Italy</h1>
                                        <h2 class="bold">Rome</h2><p>Palazzo Borghese<BR>Largo Fontanella di Borghese, 19<BR>Rome, 00186</p></div>
                                    <div id="loc18_info" >
                                        <h1 class="black">Spain</h1>
                                        <h2 class="bold">Madrid</h2>
                                         <p>3A Planta<BR>Paweo De La Castellana 35<BR>Madrid, 28046<BR><BR> Edificio Torre Picasso<BR>Floors 39 & 40<BR>Plaza Pablo Ruiz Picasso 1<BR>Madrid, 28020<BR><BR> Bank of America (Card Services)<BR>C/ Jose Echegaray<BR>628230 Las Rozas</p></div>
                                   <div id="loc14_info">
                                        <h1 class="black">Portugal</h1>
                                        <h2 class="bold">Lisbon</h2>
                                        <p>Edificio Duarte Pacheco 26<BR>Av. Engenheiro Duarte Pacheco, 26 6 Piso A<BR>Lisbon, 1070-110</p></div>
                                   <div id="loc8_info">
                                        <h1 class="black">Greece</h1>
                                        <h2 class="bold">Athens</h2>
                                        <p>35 Panepistimiou Avenue<BR>105 64 Athens</p></div>
                              </div>
                                        
                              <div id="map_details_MEA" align="left">
                                    <div id="loc19_info">
                                        <h1 class="black">Turkey</h1>
                                        <h2 class="bold">Istanbul</h2>
                                        <p>Kanyon Office Block<BR>11th Floor, Buyukdere Street<BR>34394 Levent<BR>Istanbul</p></div>
                                    <div id="loc21_info">
                                        <h1 class="black">Lebannon</h1>
                                        <h2 class="bold">Beirut</h2>
                                        <p>Maarad Street<BR>Atrium Building<BR>4th Floor<BR>Beirut Central Business District</p></div>
                                    <div id="loc22_info">
                                        <h1 class="black">Israel</h1>
                                        <h2 class="bold">Tel Aviv</h2>
                                        <p>1 Azrieli Centre<BR>37th Floor, Round Tower<BR>132 Petach Tikvah Road<BR>Tel Aviv, 67021</p></div>
                                    <div id="loc23_info">
                                        <h1 class="black">Bahrain</h1>
                                        <h2 class="bold">Manama</h2>
                                        <p>Bahrain Middle East Bank Building,<BR>Diplomatic Area<BR>Manama, Bahrain</p></div>
                                    <div id="loc20_info">
                                        <h1 class="black">United Arab Emirates</h1>
                                        <h2 class="bold">Dubai</h2>
                                        <p>Dubai International Financial Centre:<br>5th Floor, The Gate<br>East Wing<br>P.O. Box 3911<br>Dubai, United Arab Emirates<br><br>Bur Dubai office:<br>6th Floor, Business Centre<br>Khalid Bin Al Waleed St<br>P.O. Box 3911<br>Dubai, United Arab Emirates<br></p></div>
                                    <div id="loc24_info">
                                        <h1 class="black">Saudi Arabia</h1>
                                        <h2 class="bold">Riyadh</h2>
                                        <p>Kingdom Tower - 20th Floor<BR>Olaya Street<BR>Riyadh</p></div>
                                    <div id="loc25_info">
                                        <h1 class="black">South Africa</h1>
                                        <h2 class="bold">Johannesburg</h2>
                                        <p>138 West Street<BR>Sandown<BR>Sandton<BR>Johannesburg, 2120</p></div></div></div>
                            </td></tr></table>
                            </asp:Content>
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
                                <td height="26" align="left" valign="middle" style="background-image: url(../images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="emea_lob.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Lines of Business">Lines of business</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(../images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="emea_benefits.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Benefits">Benefits</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(../images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="emea_culture.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Culture & Work Environment">Culture
                                        & work environment</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(../images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="emea_staffing.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Staffing Process">Staffing process</a></td>
                            </tr>
                            <tr>
                                <td height="1" align="center" valign="middle" style="border-top: #e5e5e5 1px Dashed;">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
