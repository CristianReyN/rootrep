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

public partial class fr_bana_staffing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Carrières - Recrutement du personnel, Version texte seulement";
        Session["href"] = "../ada/fr_canada_staffing.aspx";
        Page.Title = "Bank of America | Carrières | Carrières globales | Canada | Recrutement du personnel";

        Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Survol de la Procédure de recrutement du personnel au Canada du site Carrières mondiales. Cette page décrit le processus de demande d’emploi et les exigences; du poste & des renseignements sur la diversité, les valeurs et la communauté; et permet de faire des recherches pour les postes internationaux vacants.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
