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

public partial class fr_canada_culture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Carrières - Culture, Version texte seulement";
        Session["href"] = "../ada/fr_canada_culture.aspx";
        Page.Title = "Bank of America | Carrières | Carrières mondiales | Canada | Culture ";


        Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Page de Survol Culture au Canada du site Carrières mondiales. Cette page décrit l’environnement de travail et les possibilités de perfectionnement pour les employés de MBNA, et permet de faire des recherches pour les postes internationaux vacants.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
