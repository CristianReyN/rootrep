<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false"
    AutoEventWireup="true" CodeFile="canada_culture.aspx.cs" Inherits="canada_culture"
    %>

<asp:Content ID="Image" ContentPlaceHolderID="Image" runat="Server">
    <img src="images/global-careers-canada_IV.jpg" width="578" height="166" alt="Canada Explore a career with the Bank of Opportunity."
        title="Canada Explore a career with the Bank of Opportunity." border="0">
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="Main" runat="Server">
    <a name="skipmaincontent"></a>
    <h1 class="hidden">
        Global Careers - Canada Culture</h1>
    <table summary="Global Careers - Canada Culture" width="366" border="0" cellspacing="0"
        cellpadding="0">
        <tr>
            <td width="366" align="left" valign="top">
                <p>
                    At Bank of America we offer the opportunities to grow and develop your career by
                    providing ongoing education and support.&nbsp; Our associates receive meaningful
                    responsibilities, active coaching from the management team and are recognized for
                    their achievements.&nbsp; We foster an inclusive work environment where everyone
                    is given the same opportunity to succeed and our core values guide us in all that
                    we do.</p>
                <p>
                    Bank of America is a great place to work and build a solid career because we believe
                    in:</p>
                <p>
                    <u>An inclusive and supportive workplace</u>: We respect and value the diversity
                    of backgrounds, experiences and perspectives of our associates and believe it is
                    a significant competitive advantage in serving clients and shareholders worldwide.
                    Diversity is more than the right thing to do, it is how we work and win together.<br />
                    <br />
                    <u>Career and performance development</u>: Helping associates grow professionally
                    is an important part of growing our success as a company. Bank of America rewards
                    associates based on performance and strives to help associates succeed with an array
                    of innovative and competitive learning and leadership programs.
                </p>
                <p>
                    <u>Cross-platform partnership</u>: More than any one capability or area of expertise,
                    it&rsquo;s the unique combination of resources and talents throughout our global
                    company that sets
                    <br />
                    Bank of America apart. We partner within and across lines of business and share
                    a collective responsibility for exceeding our clients&rsquo; expectations every
                    day.&nbsp; Integrated delivery is part of every business plan and reflected in how
                    we serve clients wherever they do business.
                </p>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="info" runat="server" ContentPlaceHolderID="Info">
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
                                    <a href="canada_lob.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Lines of Business">Lines of business</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="canada_benefits.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Benefits">Benefits</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="canada_culture.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Culture & Work Environment">Culture
                                        & work environment</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="canada_staffing.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
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
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="en">
    <div class="franch_btn">
        <a href="fr_canada_culture.aspx" onfocus="this.className='franch_btn-over';"  onblur="this.className='franch_btn-hover';" alt="En Francais" title="En Francais">En Francais</a></div>
<script language='javascript1.1' type='text/javascript'>
    //<!�
    var sPath = window.location.pathname;
    var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
    var isReload = getCookie(sPage);

    if (isReload != null && isReload != "") {
        //reload
        cmCreatePageviewTag('career:Tool:Regions;canada-culture_reload', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
    }
    else {
        //new
        setCookie(sPage, sPage);
        cmCreatePageviewTag('career:Tool:Regions;canada-culture', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
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
