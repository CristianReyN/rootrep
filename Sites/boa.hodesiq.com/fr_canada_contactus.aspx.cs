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

public partial class fr_canada_contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Carrières -  Contactez-nous, Version texte seulement";
        Session["href"] = "../ada/fr_canada_contactus.aspx";
        Page.Title = "Bank of America | Carrières | Carrières globales | Canada | Contactez-nous";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Contact in Canada Overview page for the Global Careers site. This page outlines benefits available to employees in Canada and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);

        Session["Ntonly"] = "";
    }
}
