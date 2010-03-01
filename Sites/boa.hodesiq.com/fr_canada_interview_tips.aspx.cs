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
        Session["tonlyLabel"] = "Global Carrières - Canada, Version texte seulement";
        Session["href"] = "../ada/fr_canada.aspx";
        Page.Title = "Bank of America | Carrières | Carrières mondiales | Canada | Conseils pour les entrevues";


        Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Page de survol Carrières au Canada du site Carrières mondiales. Cette page expose en détail le rôle, l’emplacement et les capacités de l’affiliée MBNA et permet aussi de faire des recherches pour les postes internationaux vacants.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
