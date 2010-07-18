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

public partial class fr_Leftnav : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string sPath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
        System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
        string sRet = oInfo.Name;

        if (sRet.ToLower() == "fr_canada.aspx" || sRet.ToLower() == "ada_fr_canada.aspx")
        {
            subcanada.Style["background"] = "#eaf1f7";

        }

        if (sRet.ToLower() == "fr_canada_contactus.aspx")
        {
            subcontactus.Style["background"] = "#eaf1f7";

        }
        if (sRet.ToLower() == "fr_canada_lob.aspx")
        {


            canadalob.Style["background"] = "#eaf1f7";

        }
        if (sRet.ToLower() == "fr_canada_benefits.aspx")
        {


            canadaben.Style["background"] = "#eaf1f7";


        }
        if (sRet.ToLower() == "fr_canada_culture.aspx")
        {

            canadacul.Style["background"] = "#eaf1f7";


        }
        if (sRet.ToLower() == "fr_canada_staffing.aspx")
        {

            canadasta.Style["background"] = "#eaf1f7";



        }
        if (sRet.ToLower() == "fr_canada_interview_tips.aspx")
        {
            canadainterview.Style["background"] = "#eaf1f7";
        }

    }
}
