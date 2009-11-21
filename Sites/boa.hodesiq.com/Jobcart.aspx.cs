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

public partial class Jobcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie JobCart1 = new HttpCookie("BOA");
            JobCart1.Values["Boa"] = "Hi";
            JobCart1.Values["JobId"] = "3";
            JobCart1.Secure = false;
            Response.Cookies.Add(JobCart1);
            string s = JobCart1.Values.ToString();

    }
}
