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

public partial class canada : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers Canada, Text Only Version";
        Session["href"] = "../ada/canada.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | Canada";
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Careers in Canada Overview page of the Global Careers site. This page details the MBNA affiliate's role, location and capabilities, and also allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);


    }
}
