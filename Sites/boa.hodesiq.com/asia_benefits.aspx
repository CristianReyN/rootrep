<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="asia_benefits.aspx.cs" Inherits="asia_benefits" 
    EnableEventValidation="false" %>

<asp:Content ID="Image" ContentPlaceHolderID="Image" runat="Server">
    <img src="images/global-careers-asia_bana_III.jpg" width="578" height="166" alt="Asia Pacific Explore a career with the Bank of Opportunity." />
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="Main" runat="Server">
    <a name="skipmaincontent"></a>
    <h1 class="hidden">
        Global Careers - Asia: Benefits</h1>
    <table width="366" border="0" cellspacing="0" cellpadding="0" summary="Global Careers - Asia: Benefits">
        <tr>
            <td width="366" align="left">
                <p>
                    Bank of America offers a comprehensive benefit package to its associates based on
                    local practices in each country. Our compensation and benefits package has been
                    designed to stay competitive with the market and to attract, retain, motivate and
                    reward associates who commit themselves to excellence. Examples of benefits we offer
                    include:</p>
                <ul>
                    <li>Flexible Benefit Plan (in selected locations)</li>
                    <li>Associate insurance schemes (health, life, disability and accidental)</li>
                    <li>Dental benefit</li>
                    <li>Retirement benefits</li>
                    <li>Comprehensive set of leave benefits (including paternity leave, marriage leave,
                        adoption leave, etc.)</li>
                    <li>Associate loan or interest subsidy programs</li>
                    <li>Periodic health screening</li>
                </ul>
                <p>
                    In addition to strong base compensation and benefits, associates of Bank of America
                    are eligible to participate in our incentive programs, which form important parts
                    of our overall compensation package.</p>
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="info" runat="server" ContentPlaceHolderID="Info">
    <table width="204" border="0" cellspacing="0" cellpadding="0">
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
                                    <a href="asia_lob.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Lines of Business">Lines of business</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="asia_benefits.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Benefits">Benefits</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="asia_culture.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Culture & Work Environment">Culture
                                        & work environment</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="asia_staffing.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
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
        //<!�
        var sPath = window.location.pathname;
        var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
        var isReload = getCookie(sPage);

        if (isReload != null && isReload != "") {
            //reload
            cmCreatePageviewTag('career:Tool:Regions;asia-benefits_reload', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
        }
        else {
            //new
            setCookie(sPage, sPage);
            cmCreatePageviewTag('career:Tool:Regions;asia-benefits', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
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
