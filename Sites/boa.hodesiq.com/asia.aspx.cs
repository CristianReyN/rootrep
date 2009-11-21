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
	Session["href"] = "../ada/asia.aspx";
	Page.Title = "Bank of America | Careers | Locations |Asia";
    Session["tonlyLabel"] = "Global Careers Bank of America in Asia, Text Only Version";
	
 Session["leftnavswap"] = "Asia";
 Session["Ntonly"] = "";
 HtmlMeta theMetaTag = new HtmlMeta();
 theMetaTag.Attributes.Add("name", "Description");
 theMetaTag.Attributes.Add("content", "Careers in Asia detail page of the Global Careers site. From this page, you can learn details of Bank of America's various banking platforms and search for available international opportunities.");
 Page.Header.Controls.Add(theMetaTag);
    }
}
