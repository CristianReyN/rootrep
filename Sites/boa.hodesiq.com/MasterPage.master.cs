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
    }

    protected DataTable GetPageNavigationOrder(string pagename)
    {
        object[] Parameters = new object[1];
        Parameters[0] = pagename;

        DataSet DS;

        DS = OleDbHelper.ExecuteDataset(constring, "p_GetBOAPageNavigationOrder", Parameters);

        return DS.Tables[0];

    }

   
}
