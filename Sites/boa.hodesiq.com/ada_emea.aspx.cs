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

public partial class ada_emea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
	
	Page.Title = "Bank of America | Careers | Locations |Europe, Middle East and Africa, Text Only Version ";
    HtmlMeta theMetaTag = new HtmlMeta();
    theMetaTag.Attributes.Add("name", "Description");
    theMetaTag.Attributes.Add("content", "Careers in Europe, Middle East & Africa (EMEA) Overview page for Global Careers site. Includes the Bank's history and locations in the EMEA region, and allows search for open international jobs.");
    Page.Header.Controls.Add(theMetaTag);

    }
}
