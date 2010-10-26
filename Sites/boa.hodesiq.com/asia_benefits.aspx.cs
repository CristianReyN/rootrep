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

public partial class asia_benefits : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
	    Session["href"] = "../ada/bana_benefits.aspx";
	    Page.Title = "Bank of America | Careers | Locations |Bank of America in Asia | Benefits";
        Session["tonlyLabel"] = "Global Careers Bank of America in Asia Benefits, Text Only Version";
        Session["leftnavswap"] = "Asia";
		
		Session["Ntonly"] = "";

        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "Benefits in Canada Overview page for the Global Careers site. This page outlines benefits available to employees in Canada and allows search for open international jobs.");
        Page.Header.Controls.Add(theMetaTag);

        HtmlImage Img = (HtmlImage)Page.Master.FindControl("ImgHeaderLogo");
        Img.Src = "images/BACMER_Signature_BLACK.gif";
        Img.Alt = "Bank of America Merrill Lynch";
    }
}
