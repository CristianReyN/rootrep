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

public partial class canada_benefits : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers Canada  Benefits, Text Only Version";
        Session["href"] = "../ada/canada_benefits.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | Canada | Benefits";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Benefits in Canada Overview page for the Global Careers site. This page outlines benefits available to employees in Canada and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);

		Session["Ntonly"] = "";
    }
}
