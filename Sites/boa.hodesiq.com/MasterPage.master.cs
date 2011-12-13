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

    string constring = @"file name=D:\data\db\boa.udl";

    protected void Page_Load(object sender, EventArgs e)
    {      
        string strPageName = "";
        string strContent = "";
        string strMetaKeyWords = "";
 
        string sPath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
        string querstring = System.Web.HttpContext.Current.Request.Url.Query;
        System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
        string sRet = oInfo.Name + querstring;

        this.ltrlCorremetrixScripts.Text = "";

        int intPage = 1; // true

        DataTable dt = GetPageNavigationOrder(sRet);

        if (dt.Rows.Count > 0)
        {
            strContent = dt.Rows[0]["PageMetaTags"].ToString();
            strPageName = dt.Rows[0]["PageTitle"].ToString();
            strMetaKeyWords = dt.Rows[0]["PageMetaKeywords"].ToString();
        }


        Page.Title = strPageName;
        this.metadescription.Attributes["content"] = strContent;
        this.metakeywords.Attributes["content"] = strMetaKeyWords;

        BuildCorremetrixScripts(intPage, strPageName);
    }

    protected DataTable GetPageNavigationOrder(string pagename)
    {
        object[] Parameters = new object[1];
        Parameters[0] = pagename;

        DataSet DS;

        DS = OleDbHelper.ExecuteDataset(constring, "p_GetBOAPageNavigationOrder", Parameters);

        return DS.Tables[0];

    }

    protected void BuildCorremetrixScripts(int intPage, string strPageName)
    {

        string strScript = "";

        strScript = "<!-- BEGIN COREMETRICS SUPPORT -->" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='https://www.bankofamerica.com/pa/global-assets/external/coremetrics/hp/eluminate.js'  type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='https://www.bankofamerica.com/pa/global-assets/external/coremetrics/hp/cmdatatagutils.js' type='text/javascript'></script>" + System.Environment.NewLine;

        //string url = Request.ServerVariables["URL"];
        //url = url.Remove(0, url.LastIndexOf("/") + 1);

        strScript += "<script language='javascript1.1' src='includes/jquery-1.6.2.min.js' type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='includes/CoremetricsLinkGen.js' type='text/javascript'></script>" + System.Environment.NewLine;


        strScript += "<script language='javascript1.1' type='text/javascript'>" + System.Environment.NewLine;
        strScript += "//<!—" + System.Environment.NewLine;
        if (ConfigurationManager.AppSettings["StrAppServerName"] == "PRO" && intPage == 1)
        { strScript += "cmSetProduction();" + System.Environment.NewLine; }
        else
        {
            strScript += "cmSetStaging();" + System.Environment.NewLine;

        }
        //strScript += "cmCreatePageviewTag('" +strPageName + "', null, null, 'career:jobsearch');" + System.Environment.NewLine; //, false, false, null, false, false, null, null, null
        //strScript += "//-->" + System.Environment.NewLine;
        strScript += "</script>" + System.Environment.NewLine;
        strScript += "<!-- END COREMETRICS -->" + System.Environment.NewLine;

        this.ltrlCorremetrixScripts.Text = strScript;

    }
   
}
