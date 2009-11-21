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
        switch (Request.ServerVariables["SCRIPT_NAME"])
        {
            case "jobsearch.aspx":
                this.metadescription.Attributes["content"] = "Main page for job search functionality for careers site.";
                 break;
             case "AdvanceSearch.aspx":
                 this.metadescription.Attributes["content"] = "Search page is more detailed for the user to define their search further choosing language, shift, willingness to travel and shift.";
                break;
            case "Jobcart.aspx":
                this.metadescription.Attributes["content"] = "Allows users to place specific jobs for storage until they decide to either apply for the position or remove.";
                break;
            case "JobDetails.aspx":
                this.metadescription.Attributes["content"] = "Page entails detailed description of positions within Bank of America.  Also the user is able to add the job to a job cart, apply, send the job to a friend or return to the job listing.";
                break;
            default: 
                this.metadescription.Attributes["content"] = "Some Random Text";
                break;
        }
    }
}
