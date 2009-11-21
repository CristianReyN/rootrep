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

public partial class boaml_culture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
	    Session["href"] = "../ada/bana_culture.aspx";
	    Page.Title = "Bank of America | Careers | Global Careers | Bank of America in Asia | Culture";
        Session["tonlyLabel"] = "Global Careers Bank of America in Asia Culture, Text Only Version";
        Session["leftnavswap"] = "Asia";
        Session["Ntonly"] = "";
        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Business Culture in Asia Overview page of the Global Careers site. This page explains the Bank's unique culture/work environment in Asia, and allows job search for available international opportunities.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
