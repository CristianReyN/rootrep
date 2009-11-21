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

public partial class fr_canada_lob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Carri�res - Secteurs d�activit�, Version texte seulement";
        Session["href"] = "../ada/fr_canada_lob.aspx";
        Page.Title = "Bank of America | Carri�res | Carri�res mondiales | Canada | Secteurs d�activit�";

        Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Survol des Secteurs d�activit� au Canada du site Carri�res mondiales. Cette page d�crit les nombreuses unit�s op�rationnelles des services financiers de la Banque et permet aussi de faire des recherches pour les postes internationaux vacants.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
