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

public partial class canada_lob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers Canada Lines of Business, Text Only Version";
        Session["href"] = "../ada/canada_lob.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | Canada | Lines of Business";
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Lines of Business in Canada Overview for the Global Careers site. This page describes the many operational units of the Bank's financial business and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
