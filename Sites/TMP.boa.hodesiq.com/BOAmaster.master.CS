using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for BOAmaster
/// </summary>
public partial class BOAmaster : System.Web.UI.MasterPage 
{
    public string jobsearchColor = "#eaf1f7;";
    public string ceventsColor = "#cadceb;";
    public string breadCrum = " | Job Search";
    public bool IsCampusEvents = false;
    public bool IsJobDetails = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.ltrlCorremetrixScripts.Text = "";
        string strPageName = "";
        string strContent = "";
        int intPage = 1; // true
        if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("jobsearch.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            strContent = "Main page for job search functionality for careers site.";
			strPageName = "Guided Job Search";
        }
        else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("AdvanceSearch.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            strContent = "Search page is more detailed for the user to define their search further choosing language, shift, willingness to travel and shift.";
            strPageName = "Advanced Job Search";
        }
        else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("Jobcart.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            strContent = "Allows users to place specific jobs for storage until they decide to either apply for the position or remove.";
            strPageName = "Job Cart";
        }
        else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("JobDetails.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            strContent = "Page entails detailed description of positions within Bank of America.  Also the user is able to add the job to a job cart, apply, send the job to a friend or return to the job listing.";
            strPageName = "Job Details";
            IsJobDetails = true;
        }
		else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("Tell_a_friend.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
		{
            strContent = "Allows users to send the job to a friend.";
            strPageName = "Tell a Friend";
		}
        else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("CampusEvents.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            jobsearchColor = "#cadceb;";
            ceventsColor = "#eaf1f7;";
            breadCrum = " | Campus Recruiting | Campus Events";
            strContent = "Campus Events Overview page on campus site. Includes a searchable guide (with times, dates and locations) to the Bank's many visits to college and universities in the U.S and internationally.";
            IsCampusEvents = true;
        }
        else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("appl_with_disabilities.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            strContent = "Main page for job search functionality for careers site.";
            breadCrum = " | Job Search | Applicants with Disabilities";
        }
        else if ((Request.ServerVariables["SCRIPT_NAME"].IndexOf("campus-meet-our-people-profile-Gemma.aspx", StringComparison.CurrentCultureIgnoreCase) > 0) || (Request.ServerVariables["SCRIPT_NAME"].IndexOf("campus-meet-our-people-profile-Richard.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)) 
        {
            strContent = "Universal Campus Profile Description page for the Campus Recruiting site. This page displays the background and information about the experiences of a Bank of America Merrill Lynch analyst, associate or intern.";
            breadCrum = " | Campus Recruiting | Meet Our People";
        }
        else
        {
            strContent = "Main page for job search functionality for careers site.";
            strPageName = "Job Search";
            intPage = 0; // false
        }

        BuildCorremetrixScripts(strPageName, strContent, intPage);

        LitCreateSafeButton.Text = @"<link href='Includes/hs_safebutton.css' type='text/css' rel='stylesheet' />
        <script src='Includes/hs_safebutton.js' language='JavaScript' type='text/javascript'></script>
        <script language='JavaScript' type='text/javascript'>
        <!--
        create_safebutton('Search','javascript: submit_search();',0,0,0,0,'Search');
        //-->
        </script>";
    }

    

    protected void BuildCorremetrixScripts(string strPageName, string strContent, int intPage)   
	{

        string strScript = "";
        this.metadescription.Attributes["content"] = strContent;
        this.Page.Title = "Bank of America | Careers | " + strPageName;
        
        strScript = "<!-- BEGIN COREMETRICS SUPPORT -->" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='http://www.bankofamerica.com/coremetrics/v40/eluminate.js'  type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='http://www.bankofamerica.com/coremetrics/cmdatatagutils.js' type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' type='text/javascript'>" + System.Environment.NewLine;
        strScript += "//<!—" + System.Environment.NewLine;
        if (ConfigurationManager.AppSettings["StrAppServerName"] == "PRO" && intPage == 1) 
           {strScript += "cmSetProduction();" + System.Environment.NewLine;}
        strScript += "cmCreatePageviewTag('Career | " + strPageName + "', null, null, 'career:jobsearch');" + System.Environment.NewLine; //, false, false, null, false, false, null, null, null
        strScript += "//-->" + System.Environment.NewLine;
        strScript += "</script>" + System.Environment.NewLine;
        strScript += "<!-- END COREMETRICS -->" + System.Environment.NewLine;

        this.ltrlCorremetrixScripts.Text = strScript;
	}
}
