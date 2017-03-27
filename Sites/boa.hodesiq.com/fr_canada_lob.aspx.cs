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
        Session["tonlyLabel"] = "Global Carrières - Secteurs d’activité, Version texte seulement";
        Session["href"] = "../ada/fr_canada_lob.aspx";       

        Session["Ntonly"] = "";

    }
}
