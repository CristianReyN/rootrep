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

public partial class emea_staffing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["tonlyLabel"] = "Global Careers Europe Staffing, Text Only Version";
        Session["href"] = "../ada/emea_staffing.aspx";
		Session["Ntonly"] = "";

    }
}
