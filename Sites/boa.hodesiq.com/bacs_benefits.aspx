<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false"
    AutoEventWireup="true" CodeFile="bacs_benefits.aspx.cs" Inherits="bacs_benefits"
     %>

<asp:Content ID="Image" ContentPlaceHolderID="Image" runat="Server">
    <img src="images/global-careers-asia-III.jpg" width="578" height="166" alt="Asia Pacific Explore a career with the Bank of Opportunity."
        title="Asia Pacific Explore a career with the Bank of Opportunity." border="0">
 
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="Main" runat="Server">
    <a name="skipmaincontent"></a>
    <h1 class="hidden">
        Global Careers - Continuum Benefits</h1>
    <table summary="Global Careers - Continuum Benefits" width="366" border="0" cellspacing="0"
        cellpadding="0">
        <tr>
            <td width="366" align="left" valign="top">
                <p>
                    Our resource pool is a cauldron of talent � an evolving ethnic network and within
                    this diversity lies our biggest strength. With competency led performance modeling
                    and strong mechanisms to foster peer networks, we understand the power of a committed
                    workforce.</p>
                <p>
                    Our Pay for Performance system underlines our desire for transparency and drives
                    a performance culture across the bank, providing the unique feel of �one company�
                    using one consistent process. Ensuring that our employees have visibility into
                    the vision of the company has proved to be critical in driving operation excellence
                    and the ensuing rewards have been evident. Employees grow internally and having
                    people grow from within remains core to our philosophy. Our Internal Job Posting
                    (IJP) and Employee Referral Program stand testimony to this core belief. In addition
                    to vertical progression which is a pure factor of performance, employees who have been with us for at least one year have opportunities to grow laterally within
                    the organization.
                </p>
                <!-- <h2>Career development</h2>
               <p> We strongly believe in associate development  and associates are rewarded on the basis of their performance and  potential.&nbsp; In addition to vertical  progression, associates who have been with us for at least one year, have the  opportunity to grow laterally within the organization. </p>
              <h2>Opportunities</h2>
              <p>  We follow a rigorous Internal Job Posting  (IJP) process, thereby creating opportunity to grow talent from within the  organization.</p>
              <p>An associate with us is entitled to the  following benefits:</p> -->
                <p>
                    Other tangible benefits of working with us include:</p>
                <ul>
                    <li>life Insurance for self</li><li>medical insurance for self and immediate dependants</li><li>
                        meals-on-the-house</li><li>door-to-door transport</li><li>concierge desk</li><li>gym
                            and recreation rooms</li><li>banking facilities</li><li>travel desk</li><li>medical
                                facilities and doctor-on-call</li></ul>
                <p>
                    We take our employees very seriously and that�s why we are passionate about their
                    growth, putting the right people in the right job, driving the right
                    behavior and doing the right thing. It�s fundamental to our way of working
                    and that�s how we make a difference to employee's career. We call it the �Bank of America�
                    difference.</p>
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
                                    <a href="bacs_lob.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Lines of Business">Lines of business</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="bacs_benefits.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Benefits">Benefits</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="bacs_culture.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
                                        onblur="this.className='ritnavlinks';" title="Culture and Work Environment">Culture
                                        and Work Environment</a></td>
                            </tr>
                            <tr>
                                <td height="26" align="left" valign="middle" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
                                    <a href="bacs_staffing.aspx" target="_self" class="ritnavlinks" onfocus="this.className='ritnavlinks-over';"
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
            cmCreatePageviewTag('career:Tool:Regions;bacs-benefits_reload', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
        }
        else {
            //new
            setCookie(sPage, sPage);
            cmCreatePageviewTag('career:Tool:Regions;bacs-benefits', null, null, 'career:Tool:Regions', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
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
