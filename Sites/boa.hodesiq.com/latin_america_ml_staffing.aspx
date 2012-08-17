<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="latin_america_ml_staffing.aspx.cs" Inherits="latin_america_ml_staffing" %>


<asp:Content ID="Image" ContentPlaceHolderID="Image" runat="Server">
    <img src="images/latin_america.jpg" width="578" height="166" alt="Latin America Explore a career with the Bank of Opportunity."
        title="Latin America Explore a career with the Bank of Opportunity." border="0">
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="Main" runat="Server">
    <a name="skipmaincontent"></a>
    <h1 class="hidden">
        Bank of America Merrill Lynch in Latin America Staffing Process</h1>
    <table summary="Global Careers - EMEA Staffing" width="366" border="0" cellspacing="0"
        cellpadding="0">
        <tr>
            <td width="366" align="left" valign="top">
                <ol>
                    <li>Candidates should search and apply for the positions in which they are interested, possess the skills, and match the minimum requirements for the job.  </li>
                    <li>The recruiting team will review all applications and contact those who best suit the role. 
                    </li>
                    <li>The assessment and selection process varies between lines of business.  One of the recruitment team will make the process clear to the candidate. </li>
                    <li>All candidates will be required to present proof of identification, address and eligibility to work in the European Economic Area during the assessment and selection process.  Only original documents will be accepted.  </li>
                    <li>If an offer is extended, background checks must be initiated for all external hires or rehires prior to start date. This includes a criminal record bureau check, education checks, credit history check, fraud database check and references. Applicants being hired to support certain lines of business may also be required to complete additional compliance checks prior to the start date. </li>
                    <li>If no suitable vacancy is available at the point of application, applicants details will be kept on file for review against future opportunities.</li></ol>
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
    var sPath = window.location.pathname;
    var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
    var isReload = getCookie(sPage);

    if (isReload != null && isReload != "") {
        //reload
        cmCreatePageviewTag('career:Tool:Regions;latin-america-ml-staffing_reload', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
    }
    else {
        //new
        setCookie(sPage, sPage);
        cmCreatePageviewTag('career:Tool:Regions;latin-america-ml-staffing', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
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
