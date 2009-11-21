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

public partial class asia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
	    Session["href"] = "../ada/default.aspx";
	    Page.Title = "Bank of America | Careers | Locations |Asia Careers Overview";
        Session["tonlyLabel"] = "Global Careers Asia overview, Text Only Version";
    	Session["Ntonly"] = "";
        Session["leftnavswap"] = "Asia";
        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Careers in Asia overview page of the Global Careers site. From this page you can get more details about employment with Bank of America in Asia and can job search for available international opportunities.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
