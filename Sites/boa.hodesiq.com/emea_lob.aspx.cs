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

public partial class emea_lob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["tonlyLabel"] = "Global Careers Europe Lines of Business, Text Only Version";
        Session["href"] = "../ada/emea_lob.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | Europe | Lines of Business";
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "EMEA region Lines of Business Overview page for the Global Careers site. This page describes BOA's various operational units in banking and other areas, and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
