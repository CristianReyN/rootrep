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

public partial class fr_canada_benefits : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Carri�res - Avantages, Version texte seulement";
        Session["href"] = "../ada/fr_canada_benefits.aspx";
        Page.Title = "Bank of America | Carri�res | Carri�res mondiales | Canada | Avantages";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Page de survol Avantages au Canada du site Carri�res mondiales. Cette page expose en d�tail les avantages offerts aux employ�s au Canada et permet de faire des recherches pour les postes internationaux vacants.");
        Page.Header.Controls.Add(theMetaTag);

        Session["Ntonly"] = "";
    }
}
