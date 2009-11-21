using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class emea_europe_card_services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = " Bank of America | Careers | Europe, Middle East and Africa (EMEA)| Europe Card Services";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Europe Card Services main page on the Bank of America Careers site. Provides overview, history, awards and locations for Europe Card Services.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
