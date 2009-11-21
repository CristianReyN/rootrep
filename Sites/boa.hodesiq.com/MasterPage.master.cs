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

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string textOnly = "";
    protected void Page_Load(object sender, EventArgs e)
    { 
        tonly.Visible = true;
        if (Session["href"] != null)
        {
            tonly.HRef = Session["href"].ToString();
            textOnly = Session["tonlyLabel"].ToString();
            tonly.Title = textOnly;
            tonly.InnerText = textOnly;
        }
        if (Session["Ntonly"] != null && Session["Ntonly"].ToString().Equals("N"))
        {
            tonly.Visible = false;
        }
       
           
       
        

    }
}
