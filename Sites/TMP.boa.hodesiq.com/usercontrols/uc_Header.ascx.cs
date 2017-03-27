using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

public partial class usercontrols_uc_Header : System.Web.UI.UserControl
{
    string constring = @"file name=D:\data\db\boa.udl";

    protected void Page_Load(object sender, EventArgs e)
    {
        string sPath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
        string querstring = System.Web.HttpContext.Current.Request.Url.Query;
        System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
        string sRet = oInfo.Name + querstring;       
      
        DataTable dt = GetPageNavigationOrder(sRet);

        if(dt.Rows.Count > 0)
        {

            Page.Title = dt.Rows[0]["PageTitle"].ToString();
            	
         HtmlMeta theMetaTag = new HtmlMeta();
         theMetaTag.Attributes.Add("name", "Description");
         theMetaTag.Attributes.Add("content", dt.Rows[0]["PageMetaTags"].ToString());
         Page.Header.Controls.Add(theMetaTag);

         HtmlImage Img = (HtmlImage)Page.Master.FindControl("ImgHeaderLogo");
         if (Img != null)
         {
             Img.Src = dt.Rows[0]["HeaderImageLogoSource"].ToString();
             Img.Alt = dt.Rows[0]["HeaderImageLogoAltText"].ToString();
         }

        }
    
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
