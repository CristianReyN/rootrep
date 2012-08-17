<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="latin_america_bac_staffing.aspx.cs" Inherits="latin_america_bac_staffing" %>


<asp:Content ID="Image" ContentPlaceHolderID="Image" runat="Server">
    <img src="images/latin_america.jpg" width="578" height="166" alt="Latin America Explore a career with the Bank of Opportunity."
        title="Latin America Explore a career with the Bank of Opportunity." border="0">
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="Main" runat="Server">
    <a name="skipmaincontent"></a>
    <h1 class="hidden">
       BA Continuum in Latin America Staffing Process</h1>
    <table summary="Global Careers - EMEA Staffing" width="366" border="0" cellspacing="0"
        cellpadding="0">
        <tr>
            <td width="366" align="left" valign="top">
            <p>The recruiting team and hiring managers at BA Continuum Costa Rica follow a consistent approach to hiring across the company. While there are some differences in the staffing process depending on which line of business or business unit, the key elements remain the same. </p>
            
                <ol>
                <li>Candidates search and apply for positions matching their skills and interest. </li>
                <li>Recruiter identifies potential candidates from pool of applications. </li>
                <li>Candidates whose skills and experience best fit openings participate in screening interviews by telephone. </li>
                <li>Finalists for positions advance to second round interviews and assessments according to job requirements. </li>
                <li>Successful candidate receives offer contingent on background check. </li>
                   </ol>
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="info" runat="server" ContentPlaceHolderID="Info">
    <table summary="" width="204" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <div style="border: 1px solid #e8e8e9; margin: 1px 0px 1px 0px; padding: 0px 0px 6px 0px;">
                    <h2 class="g" style="margin: 0px 0px 0px 0px;">
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
                                    <a href="latin_america_bac.aspx#LinesOfBusiness" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Lines of Business">Lines of business</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="latin_america_bac_benefits_culture.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Benefits">Benefits</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="latin_america_bac_benefits_culture.aspx#CultureAndWork" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Culture & Work Environment">Culture
                                        & work environment</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left 

top; background-repeat: repeat-x;">
                                    <a href="latin_america_bac_staffing.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
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
    var sPath = window.location.pathname;
    var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
    var isReload = getCookie(sPage);

    if (isReload != null && isReload != "") {
        //reload
        cmCreatePageviewTag('career:Tool:Regions;latin-america-bac-staffing_reload', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
    }
    else {
        //new
        setCookie(sPage, sPage);
        cmCreatePageviewTag('career:Tool:Regions;latin-america-bac-staffing', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
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
    
    //-->
</script>   
</asp:Content>
