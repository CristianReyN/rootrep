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

public partial class fr_canada_interview_tips : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Carri�res - Canada, Version texte seulement";
        Session["href"] = "../ada/fr_canada.aspx";
        Page.Title = "Bank of America | Carri�res | Carri�res mondiales | Canada | Conseils pour les entrevues";


        Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Page de survol Carri�res au Canada du site Carri�res mondiales. Cette page expose en d�tail le r�le, l�emplacement et les capacit�s de l�affili�e MBNA et permet aussi de faire des recherches pour les postes internationaux vacants.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
