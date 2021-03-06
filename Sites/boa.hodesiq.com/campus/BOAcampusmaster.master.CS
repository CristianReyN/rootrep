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

/// <summary>
/// Summary description for BOAmaster
/// </summary>
public partial class BOAmaster : System.Web.UI.MasterPage 
{  
    public bool IsCampusEvents = false;
    public bool IsJobDetails = false;

    string constring = @"file name=D:\data\db\boa.udl";

    protected void Page_Load(object sender, EventArgs e)
    {
        this.ltrlCorremetrixScripts.Text = "";
        string strPageName = "";
        string strContent = "";
        string strMetaKeyWords = "";
        int intPage = 1; // true


        string sPath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
        string querstring = System.Web.HttpContext.Current.Request.Url.Query;
        System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
        string sRet = oInfo.Name + querstring;

        DataTable dt = GetPageNavigationOrder(sRet);

        if (dt.Rows.Count > 0)
        {
            strContent = dt.Rows[0]["PageMetaTags"].ToString();
            strPageName = dt.Rows[0]["PageTitle"].ToString();
            strMetaKeyWords = dt.Rows[0]["PageMetaKeywords"].ToString();
        }

        this.metadescription.Attributes["content"] = strContent;
        this.metakeywords.Attributes["content"] = strMetaKeyWords;
        BuildCorremetrixScripts(strPageName, strContent, intPage);
    }

    protected DataTable GetPageNavigationOrder(string pagename)
    {
        object[] Parameters = new object[1];
        Parameters[0] = pagename;

        DataSet DS;

        DS = OleDbHelper.ExecuteDataset(constring, "p_GetBOAPageNavigationOrder", Parameters);

        return DS.Tables[0];

    }

    protected void BuildCorremetrixScripts(string strPageName, string strContent, int intPage)
    {

        string strScript = "";
      

        strScript = "<!-- BEGIN COREMETRICS SUPPORT -->" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='http://www.bankofamerica.com/coremetrics/v40/eluminate.js'  type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='http://www.bankofamerica.com/coremetrics/cmdatatagutils.js' type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' type='text/javascript'>" + System.Environment.NewLine;
        strScript += "//<!�" + System.Environment.NewLine;
        if (ConfigurationManager.AppSettings["StrAppServerName"] == "PRO" && intPage == 1)
        { strScript += "cmSetProduction();" + System.Environment.NewLine; }
        strScript += "cmCreatePageviewTag('" + strPageName + "', null, null, 'career:jobsearch');" + System.Environment.NewLine; //, false, false, null, false, false, null, null, null
        strScript += "//-->" + System.Environment.NewLine;
        strScript += "</script>" + System.Environment.NewLine;
        strScript += "<!-- END COREMETRICS -->" + System.Environment.NewLine;

        this.ltrlCorremetrixScripts.Text = strScript;
    }
}
