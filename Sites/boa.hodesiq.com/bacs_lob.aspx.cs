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

public partial class bacs_lob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers BA Continuum Lines of Business, Text Only Version";
        Session["href"] = "../ada/bacs_lob.aspx";
        Page.Title = "Bank of America | Careers | Locations |BA Continuum | Lines of Business";
		
		
		
		Session["Ntonly"] = "";


        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "BA Continuum Lines of Business in Asia overview for Global Careers site. This page describes the non-bank subsidiary's various operational units and allows job search for available international opportunities.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
