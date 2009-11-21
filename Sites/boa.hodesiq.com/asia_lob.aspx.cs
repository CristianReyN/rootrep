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
        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Lines of Business in Asia overview page of the Global Careers site. This page provides details of the Bank's specific business concentrations and allows job search for available international opportunities.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
