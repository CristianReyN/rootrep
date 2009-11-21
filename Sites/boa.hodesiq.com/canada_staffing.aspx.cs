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

public partial class canada_staffing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Careers Canada Staffing, Text Only Version";
        Session["href"] = "../ada/canada_staffing.aspx";
        Page.Title = "Bank of America | Careers | Global Careers | Canada | Staffing";
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Staffing Process in Canada Overview for the Global Careers site. Includes application process & requirements; diversity, values and community information; and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
