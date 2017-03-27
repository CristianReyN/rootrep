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

public partial class profilerd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string referringUrl = System.IO.Path.GetFileName(Request.UrlReferrer.LocalPath).ToString();
        Response.Write("referring: " + referringUrl);
        //Response.End();

        if (referringUrl == "director.asp" || referringUrl == "manage_your_profile.asp")
        {
            Response.Redirect(HttpUtility.UrlDecode(Request.QueryString.ToString()));
        }
        else { Response.Write("referring page not valid"); Response.End(); }
    }
}
