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

public partial class bacs_culture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers BA Continuum Culture, Text Only Version";
        Session["href"] = "../ada/bacs_culture.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | BA Continuum | Culture";
		
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "BA Continuum Culture in Asia Overview for the Global Careers site. This page details the non-bank subsidiary's culture of excellence, offers testimonials and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);

    }
}
