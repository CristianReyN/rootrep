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
using System.Xml;
using System.Text;

public partial class Jobcart : System.Web.UI.Page
{
    private string JobCartID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(ViewState["Cookie"]==null)
        //{
        string JobSearch;
        //string JobCartID;
        JobSearch = Request.QueryString["SearchPage"];
        if (Request.QueryString["SearchPage"] == "Sp")
        {
            SearchReturn.NavigateUrl = "jobsearch.aspx";
        }
        else if (Request.QueryString["SearchPage"] == "ASP")
        {
            SearchReturn.NavigateUrl = "AdvanceSearch.aspx";
        }
        HttpCookie MyCookie = Request.Cookies["JobCartID"];
        if (MyCookie != null)
        {
            //JobCartID = Request.Cookies["JobCartID"].Value;
            JobCartID = MyCookie.Value.ToString();
            Jobs Jobs = new Jobs();
            DataView DW = Jobs.RetrieveJobCart(JobCartID);
            grdJobcart.DataSource = DW;
            grdJobcart.DataBind();
        }
        /*
        if (Request.QueryString["JobID"] != "" && Request.QueryString["JobID"] != null)
        {
            HttpCookie ObjJobCart = new HttpCookie("BOA");
            ObjJobCart.Values["JobId"] = Request.QueryString["JobID"].ToString();
            ObjJobCart.Secure = false;
            Response.Cookies.Add(ObjJobCart);
            Response.Redirect("jobdetails.aspx?JobID=" + Request.QueryString["JobID"].ToString() + "&SearchPage=" + JobSearch);

        }
        else
        {
            try
            {
                if (Request.Cookies["BOA"].Value != "" && Request.Cookies["BOA"].Value != null)
                {
                    JobId = Request.Cookies["BOA"].Value.Replace("JobId=", "").ToString();
                }
                Jobs Jobs = new Jobs();
                grdJobcart.DataSource = Jobs.JobDetails(JobId);
                grdJobcart.DataBind();
                ViewState["Cookie"] = 2;
            }
            catch
            {
                Jobs Jobs = new Jobs();
                grdJobcart.DataSource = Jobs.JobDetails(JobId);
                grdJobcart.DataBind();
                ViewState["Cookie"] = 2;
            }
        }
         * */
        //}

    }
    protected void Remove_Click(object sender, EventArgs e)
    {
        CheckBox MyCheckBox;
        XmlDocument Document = new XmlDocument();
        XmlElement Root, Element;

        Root = Document.CreateElement("Root");
        Document.AppendChild(Root);

        foreach (GridViewRow Row in grdJobcart.Rows)
        {
            MyCheckBox = (CheckBox)Row.FindControl("ChkRemove" + Row.RowIndex);

            if (MyCheckBox.Checked)
            {
                HiddenField myhidden = (HiddenField)Row.FindControl("JobsID");
                Element = Document.CreateElement("JobCart");
                Element.SetAttribute("JobID", myhidden.Value);
                Root.AppendChild(Element);
            }
        }

        XmlDeclaration declaration = Document.CreateXmlDeclaration("1.0", "utf-8", null);
        declaration.Encoding = "Windows-1252";
        Document.InsertBefore(declaration, Document.DocumentElement);

        Jobs Jobs = new Jobs();
        DataView DW = Jobs.RemoveJobCart(JobCartID.ToString(), Document.OuterXml);

        Root.RemoveAll();
        Document.RemoveAll();

        Response.Redirect("Jobcart.aspx?SearchPage" + Request.QueryString["SearchPage"]);
    }
    protected void grdJobcart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        HiddenField MyHidden = null;
        DataRowView DrvRow = null;
        CheckBox MyCheckBox = null;

        // For each DataRow in the GridView, 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DrvRow = (DataRowView)e.Row.DataItem;

            MyHidden = (HiddenField)e.Row.FindControl("JobsID");
            MyHidden.Value = DrvRow["JobsID"].ToString();

            MyCheckBox = (CheckBox)e.Row.FindControl("ChkRemove");
            MyCheckBox.ID = "ChkRemove" + e.Row.RowIndex;
        }
    }
}
