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

public partial class ada_bacs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Bank of America | Careers | Global Careers | BA Continuum, Text Only Version";
        HtmlMeta theMetaTag = new HtmlMeta();
        theMetaTag.Attributes.Add("name", "Description");
        theMetaTag.Attributes.Add("content", "BA Continuum in Asia Overview page of the Global Careers site. This page describes the non-bank subsidiary's role and capabilities, and allows job search for available international opportunities.");
        Page.Header.Controls.Add(theMetaTag);
    }
}
