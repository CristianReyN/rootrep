using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class uc_LeftNavigation : System.Web.UI.UserControl
{
    string CLASSFLYOUT = "\"g\"";
    string CLASS = "\"sbtxt\"";

    string ONFOCUSFLYOUT = "\"this.className='g-over';\"";
    string ONFOCUS = "\"this.className='sbtxt-over';\"";


    string ONBLURFLYOUT = "\"this.className='g';\"";
    string ONBLUR = "\"this.className = 'sbtxt';\"";

    string HTML = "";
    string[] arrLevel;
    string constring = @"file name=D:\data\db\boa.udl";
    string SelectedBackgroundColor = " style=\"background: #eaf1f7;\" ";


    protected void Page_Load(object sender, EventArgs e)
    {
        string sPath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
        System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
        string sRet = oInfo.Name;

        string PageNavigationOrder = "1-0-0-0";

        DataTable dt = GetPageNavigationOrder(sRet);

        if (dt != null && dt.Rows.Count > 0)
        {
            PageNavigationOrder = dt.Rows[0]["NavigationOrder"].ToString();
        }

        arrLevel = PageNavigationOrder.Split('-');

        HTML = "<div id='lnav'>";

        GenerateNavigationBarLevel1();

        LblLeftNav.Text = HTML + "</div>";
    }


    protected void GenerateNavigationBarLevel1()
    {
        int CurrentLevel = 1;

        string CurrentPageOrder = arrLevel[CurrentLevel - 1].ToString();
        string NextPageOrder = arrLevel[CurrentLevel].ToString();

        DataView dv = GetNavigationLinks(CurrentLevel, "1").Tables[0].DefaultView;

        HTML = HTML + "<ul class='home'>";

        foreach (DataRow dr in dv.Table.Rows)
        {
            string CurrentOrder = dr["CurrentOrderNumber"].ToString();
            string href = "\"" + dr["href"].ToString() + "\"";
            string InnerDIV = "<div style=\"padding-left: 10px;\">";
            string title = dr["title"].ToString();

            string aref = "<a href=" + href + " class=" + CLASSFLYOUT +
                           @"onfocus=" + ONFOCUSFLYOUT + "onblur=" + ONBLURFLYOUT +
                           @">" + title + "</a>";

            if (CurrentOrder == CurrentPageOrder)
            {
                if (NextPageOrder == "0")
                {
                    HTML = HTML + "<li" + SelectedBackgroundColor + ">" + InnerDIV + aref + "</div></li>";
                }
                else
                {
                    HTML = HTML + "<li>" + InnerDIV + aref + "</div></li>";
                }
                GenerateNavigationBarLevel2(CurrentOrder);
            }
            else
            {
                HTML = HTML + "<li>" + InnerDIV + aref + "";
                GenerateNavigationFlyoutLevel2(CurrentOrder);
                HTML = HTML + " </div></li>";
            }

        }

        HTML = HTML + "</ul>";
    }

    protected void GenerateNavigationFlyoutLevel2(string ParentOrder)
    {
        int CurrentLevel = 2;

        string CurrentPageOrder = arrLevel[CurrentLevel - 1].ToString();
        string NextPageOrder = arrLevel[CurrentLevel].ToString();

        DataView dv = GetNavigationLinks(CurrentLevel, ParentOrder).Tables[0].DefaultView;

        if (dv != null && dv.Table.Rows.Count > 0)
        {

            HTML = HTML + "<ul class='leftnav_sub'>";

            foreach (DataRow dr in dv.Table.Rows)
            {
                string CurrentOrder = dr["CurrentOrderNumber"].ToString();
                string href = "\"" + dr["href"].ToString() + "\"";
                string InnerDIV = "<div style=\"padding-left: 15px;\">";
                string title = dr["title"].ToString();
                string aref = "<a href=" + href + " class=" + CLASS +
                             @"onfocus=" + ONFOCUS +
                           @" onblur=" + ONBLUR +
                           @">" + title + " </a>";

                HTML = HTML + "<li>" + InnerDIV + aref + "</div></li>";
            }

            HTML = HTML + "</ul>";
        }

    }

    protected void GenerateNavigationBarLevel2(string ParentOrder)
    {
        int CurrentLevel = 2;

        string CurrentPageOrder = arrLevel[CurrentLevel - 1].ToString();
        string NextPageOrder = arrLevel[CurrentLevel].ToString();

        DataView dv = GetNavigationLinks(CurrentLevel, ParentOrder).Tables[0].DefaultView;

        foreach (DataRow dr in dv.Table.Rows)
        {
            string CurrentOrder = dr["CurrentOrderNumber"].ToString();
            string href = "\"" + dr["href"].ToString() + "\"";
            string InnerDIV = "<div style=\"padding-left: 20px;\">";
            string title = dr["title"].ToString();
            string aref = "<a href=" + href + " class=" + CLASS +
                        @"onfocus=" + ONFOCUS + " onblur=" + ONBLUR + ">" + title +
                        @"</a>";

            if (NextPageOrder == "0" && CurrentOrder == CurrentPageOrder)
            {
                HTML = HTML + "<li" + SelectedBackgroundColor + "class='tertiary'>" + InnerDIV + aref + "</div></li>";
            }
            else
            {
                HTML = HTML + "<li  class='tertiary'>" + InnerDIV + aref + "</div></li>";
            }

            if (CurrentOrder == CurrentPageOrder)
            {
                GenerateNavigationBarLevel3(CurrentOrder);
            }


        }

    }


    protected void GenerateNavigationBarLevel3(string ParentOrder)
    {
        int CurrentLevel = 3;

        string CurrentPageOrder = arrLevel[CurrentLevel - 1].ToString();
        string NextPageOrder = arrLevel[CurrentLevel].ToString();

        DataView dv = GetNavigationLinks(CurrentLevel, ParentOrder).Tables[0].DefaultView;

        foreach (DataRow dr in dv.Table.Rows)
        {
            string CurrentOrder = dr["CurrentOrderNumber"].ToString();
            string href = "\"" + dr["href"].ToString() + "\"";
            string InnerDIV = "<div style=\"padding-left: 30px;\">";
            string title = dr["title"].ToString();
            string aref = "<a href=" + href + " class=" + CLASS +
                        @"onfocus=" + ONFOCUS + " onblur=" + ONBLUR + ">" + title +
                        @"</a>";

            if (NextPageOrder == "0" && CurrentOrder == CurrentPageOrder)
            {
                HTML = HTML + "<li" + SelectedBackgroundColor + "class='tertiary'>" + InnerDIV + aref + "</div></li>";
            }
            else
            {
                HTML = HTML + "<li  class='tertiary'>" + InnerDIV + aref + "</div></li>";
            }

            if (CurrentOrder == CurrentPageOrder)
            {
                GenerateNavigationBarLevel4(CurrentOrder);
            }


        }

    }


    protected void GenerateNavigationBarLevel4(string ParentOrder)
    {
        int CurrentLevel = 4;

        DataView dv = GetNavigationLinks(CurrentLevel, ParentOrder).Tables[0].DefaultView;

        string CurrentPageOrder = arrLevel[CurrentLevel - 1].ToString();

        foreach (DataRow dr in dv.Table.Rows)
        {
            string CurrentOrder = dr["CurrentOrderNumber"].ToString();
            string href = "\"" + dr["href"].ToString() + "\"";
            string InnerDIV = "<div style=\"padding-left: 40px;\">";
            string title = dr["title"].ToString();
            string aref = "<a href=" + href + " class=" + CLASS +
              @"onfocus=" + ONFOCUS + " onblur=" + ONBLUR + ">" + title +
              @"</a>";


            if (CurrentPageOrder == CurrentOrder)
            {
                HTML = HTML + "<li" + SelectedBackgroundColor + "class='tertiary'>" + InnerDIV + aref + "</div></li>";
            }
            else
            {
                HTML = HTML + "<li class='tertiary'>" + InnerDIV + aref + "</div></li>";
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


    protected DataSet GetNavigationLinks(int level, string ParentOrder)
    {

        object[] Parameters = new object[2];
        Parameters[0] = level;
        Parameters[1] = ParentOrder;

        DataSet DS;

        DS = OleDbHelper.ExecuteDataset(constring, "p_SelectBOANavigationOrder", Parameters);

        return DS;
    }
}
