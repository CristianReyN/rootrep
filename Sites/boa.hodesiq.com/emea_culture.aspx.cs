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

public partial class emea_culture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["tonlyLabel"] = "Global Careers Europe Culture, Text Only Version";
        Session["href"] = "../ada/emea_culture.aspx";
        Page.Title = "Bank of America | Careers | Locations |Europe | Culture";
		
		
		Session["Ntonly"] = "";
        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "EMEA region Culture Overview page for the Global Careers site. This page describes the unique EMEA wok environment, its core values and diversity; and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
