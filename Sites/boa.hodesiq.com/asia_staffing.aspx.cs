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

public partial class asia_staffing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
	    Session["href"] = "../ada/bana_staffing.aspx";
	    Page.Title = "Bank of America | Careers | Global Careers | Bank of America in Asia | Staffing";
        Session["tonlyLabel"] = "Global Careers Bank of America in Asia Staffing, Text Only Version";
        Session["leftnavswap"] = "Asia";
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Staffing Process in Asia overview for the Global Careers site. This page outlines the application process and expectations, allows job search for available international opportunities and online CV submission.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
