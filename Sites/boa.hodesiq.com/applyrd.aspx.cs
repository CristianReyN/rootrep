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

public partial class applyrd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string referringUrl = System.IO.Path.GetFileName(Request.UrlReferrer.LocalPath).ToString();
        string url = Request.QueryString.ToString();
        string urlDEV = "http%3a%2f%2fbofa.contacthr.com";
        string urlSTG = "https%3a%2f%2fstgbacfhrs100.taleo.net";
        string urlPRO = "https%3a%2f%2fbacfhrs.taleo.net";
        //string urlSTG-Grasp = "http%3a%2f%2fig12.i-grasp.com";
        string urlPROGrasp = "http%3a%2f%2fig12.i-grasp.com";
        string country = Request.QueryString["countryid"];
        

        if (referringUrl == "director.asp")
        {

            if (country == "1")
            {

                //go through whitelist of valid urls
                if (url.Contains(urlDEV))
                {
                    //check for match to the left of the string
                    url = url.Substring(0, urlDEV.Length);
                
                    if (url.Contains(urlDEV))
                    {
                        Response.Redirect(HttpUtility.UrlDecode(Request.QueryString.ToString()));
                    }
                }
                if (url.Contains(urlSTG))
                {
                    //check for match to the left of the string
                    url = url.Substring(0, urlSTG.Length);

                    if (url.Contains(urlSTG))
                    {
                        Response.Redirect(HttpUtility.UrlDecode(Request.QueryString.ToString()));
                    }
                }
                if (url.Contains(urlPRO))
                {
                    //check for match to the left of the string
                    url = url.Substring(0, urlPRO.Length);

                    if (url.Contains(urlPRO))
                    {
                        Response.Redirect(HttpUtility.UrlDecode(Request.QueryString.ToString()));
                    }
                }
                else { Response.Write("404 page not found"); Response.End(); }
            }
            else{
                if (url.Contains(urlPROGrasp))
                {
                    //check for match to the left of the string
                    url = url.Substring(0, urlPROGrasp.Length);

                    if (url.Contains(urlPROGrasp))
                    {
                        Response.Redirect(HttpUtility.UrlDecode(Request.QueryString.ToString()));
                    }
                }
                else { Response.Write("404 page not found"); Response.End(); }

            }
        }
        else { Response.Write("404 page not found"); Response.End(); }
    }
}
