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
    #region Change History
    // date		    developer	    comments
    // -----------	----------	    ----------
    //  11/27/06    Jonathan Do     (1) grdJobcart_RowDataBound, Remove_Click
    //                              (2) rework Page_Load
    //  12/05/06    Don Nguyen      (1) Made Remove Job Cart button hidden of no jobs in cart
    //                              (1) Fixed Return to Search link
    /// </summary>
    #endregion
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
            JobCartID = MyCookie.Value.ToString();
            Jobs Jobs = new Jobs();
            DataView DW = Jobs.RetrieveJobCart(JobCartID);
            if (DW.Count == 0)
            {
                Remove.Visible = false;
            }
            
            grdJobcart.DataSource = DW;
            grdJobcart.DataBind();

        }
        

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
