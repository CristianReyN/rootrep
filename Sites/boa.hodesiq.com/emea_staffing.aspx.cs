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

public partial class emea_staffing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["tonlyLabel"] = "Global Careers Europe Staffing, Text Only Version";
        Session["href"] = "../ada/emea_staffing.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | Europe | Staffing";
		Session["Ntonly"] = "";
        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "EMEA Staffing Process Overview page for the Global Careers site. Explains the application process, requirements & possible outcomes, and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
