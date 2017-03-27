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

public partial class asia_lob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
	    Session["href"] = "../ada/bana_lob.aspx";
        Session["tonlyLabel"] = "Global Careers Bank of America in Asia Line of Business, Text Only Version";
    	Session["Ntonly"] = "";
        Session["leftnavswap"] = "Asia";   

    }
}
