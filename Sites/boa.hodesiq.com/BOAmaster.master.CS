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
        if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("jobsearch.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            this.metadescription.Attributes["content"] = "Main page for job search functionality for careers site.";
			this.Page.Title = "Bank of America | Career | Guided Job Search";

            this.ltrlCorremetrixScripts.Text = "<!-- BEGIN COREMETRICS SUPPORT -->" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "<script language='javascript1.1' src='/coremetrics/v40/eluminate.js'  type='text/javascript'></script>" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "<script language='javascript1.1' src='/coremetrics/cmdatatagutils.js' type='text/javascript'></script>" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "<script language='javascript1.1' type='text/javascript'>" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "<!—" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "cmSetProduction();" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "cmCreatePageviewTag('Career | Guided Job Search', null, null, 'career:jobsearch');" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "//-->" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "</script>" + System.Environment.NewLine;
            this.ltrlCorremetrixScripts.Text += "<!-- END COREMETRICS -->" + System.Environment.NewLine;
        }
        else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("AdvanceSearch.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            this.metadescription.Attributes["content"] = "Search page is more detailed for the user to define their search further choosing language, shift, willingness to travel and shift.";
			this.Page.Title = "Bank of America | Career | Advanced Job Search";
        }
        else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("Jobcart.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            this.metadescription.Attributes["content"] = "Allows users to place specific jobs for storage until they decide to either apply for the position or remove.";
			this.Page.Title = "Bank of America | Career | Job Cart";
        }
        else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("JobDetails.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            this.metadescription.Attributes["content"] = "Page entails detailed description of positions within Bank of America.  Also the user is able to add the job to a job cart, apply, send the job to a friend or return to the job listing.";
			this.Page.Title = "Bank of America | Career | Job Details";
        }
		else if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("Tell_a_friend.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
		{
			this.metadescription.Attributes["content"] = "Allows users to send the job to a friend.";
			this.Page.Title = "Bank of America | Career | Tell a Friend";
		}
        else
        {
            this.metadescription.Attributes["content"] = "Main page for job search functionality for careers site.";
			this.Page.Title = "Bank of America | Career | Job Search";
        }
    }
}
