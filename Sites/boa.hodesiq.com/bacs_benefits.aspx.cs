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

public partial class bacs_benefits : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers BA Continuum Benefits, Text Only Version";
        Session["href"] = "../ada/bacs_benefits.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | BA Continuum | Benefits";
		
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "BA Continuum Benefits in Asia Overview for the Global Careers site. This page outlines development and benefits available at the non-bank subsidiary and allows search for international jobs.");
        Page.Header.Controls.Add(theMetaTag);



    }
}
