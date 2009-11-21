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

public partial class emea_benefits : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["tonlyLabel"] = "Global Careers Europe Benefits, Text Only Version";
        Session["href"] = "../ada/emea_benefits.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | Europe | Benefits";
		
		
		Session["Ntonly"] = "";
        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "EMEA region Benefits Overview page for the Global Careers site. This page details financial, health & lifestyle benefits for the Bank's EMEA employees, and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
