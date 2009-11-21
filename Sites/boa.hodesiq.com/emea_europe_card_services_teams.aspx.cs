using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class emea_europe_card_services_teams : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Bank of America | Careers | Europe, Middle East and Africa (EMEA)| Europe Card Services – Our Teams";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "=“Europe Card Services Teams page on the Bank of America Careers site. Provides overview of Card Services’ values and the variety of positions available within the group.");
        Page.Header.Controls.Add(theMetaTag);

    }
}
