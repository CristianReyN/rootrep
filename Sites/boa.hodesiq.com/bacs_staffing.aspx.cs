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

public partial class bacs_staffing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers BA Continuum Staffing, Text Only Version";
        Session["href"] = "../ada/bacs_staffing.aspx";
        Page.Title = "Bank of America | Careers | Locations |BA Continuum | Staffing";
		
		
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "BA Continuum in Asia Staffing Overview for the Global Careers site. This page outlines the candidate selection process, application requirements, FAQs and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);

    }
}
