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
        if (Request.ServerVariables["SCRIPT_NAME"].IndexOf("jobsearch.aspx", StringComparison.CurrentCultureIgnoreCase) > 0)
        {
            this.metadescription.Attributes["content"] = "Main page for job search functionality for careers site.";
			this.Page.Title = "Bank of America | Career | Basic Job Search";
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
        else
        {
            this.metadescription.Attributes["content"] = "Main page for job search functionality for careers site.";
			this.Page.Title = "Bank of America | Career | Job Search";
        }
    }
}
