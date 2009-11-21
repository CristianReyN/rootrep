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
        }
		else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("Tell_a_friend.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
		{
            strContent = "Allows users to send the job to a friend.";
            strPageName = "Tell a Friend";
		}
        else
        {
            strContent = "Main page for job search functionality for careers site.";
            strPageName = "Job Search";
            intPage = 0; // false
        }

        BuildCorremetrixScripts(strPageName, strContent, intPage);
    }

    protected void BuildCorremetrixScripts(string strPageName, string strContent, int intPage)   
	{

        string strScript = "";
        this.metadescription.Attributes["content"] = strContent;
        this.Page.Title = "Bank of America | Career | " + strPageName;
        
        strScript = "<!-- BEGIN COREMETRICS SUPPORT -->" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='coremetrics/v40/eluminate.js'  type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='coremetrics/cmdatatagutils.js' type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' type='text/javascript'>" + System.Environment.NewLine;
        strScript += "<!—" + System.Environment.NewLine;
        if (ConfigurationManager.AppSettings["StrAppServerName"] == "PRO" && intPage == 1) 
           {strScript += "cmSetProduction();" + System.Environment.NewLine;}
        strScript += "cmCreatePageviewTag('Career | " + strPageName + "', null, null, 'career:jobsearch', false, false, null, false, false, null, null, null);" + System.Environment.NewLine;
        strScript += "//-->" + System.Environment.NewLine;
        strScript += "</script>" + System.Environment.NewLine;
        strScript += "<!-- END COREMETRICS -->" + System.Environment.NewLine;

        //this.ltrlCorremetrixScripts.Text = strScript;
	}
}
