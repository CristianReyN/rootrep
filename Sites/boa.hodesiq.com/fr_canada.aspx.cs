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

public partial class fr_canada : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["tonlyLabel"] = "Global Carrières - Canada, Version texte seulement";
        Session["href"] = "../ada/fr_canada.aspx";         
       

        Session["Ntonly"] = "";
    }
}
