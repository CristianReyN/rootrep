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

public partial class canada_culture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers Canada Culture, Text Only Version";
        Session["href"] = "../ada/canada_culture.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | Canada | Culture";
		
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Culture in Canada Overview page for the Global Careers site. This page describes the work environment and development opportunities for MBNA employees, and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);

    }
}
