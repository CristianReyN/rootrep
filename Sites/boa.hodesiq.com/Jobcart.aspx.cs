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

	private string targetpage = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
		targetpage = ConfigurationManager.AppSettings["targetpage"];

		//write the boa buttons
		boanet_safebutton.writeBOASafeButton("Remove", phRemove, "Remove Selected", Remove_Click, this.Request, "");
        
		//if(ViewState["Cookie"]==null)
        //{

        SearchReturn.NavigateUrl = Request.UrlReferrer.ToString();
        HttpCookie MyCookie = Request.Cookies["JobCartID"];
		if (MyCookie != null)
		{
			JobCartID = MyCookie.Value.ToString();
			Jobs Jobs = new Jobs();
			DataView DW = Jobs.RetrieveJobCart(JobCartID);
			if (DW.Count > 0)
			{
				phRemove.Visible = true;
			}

			grdJobcart.DataSource = DW;
			grdJobcart.DataBind();
		}
		else
		{
			lblNoResults.Visible = true;
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
        HyperLink MyApplyLink = null;
        CheckBox MyCheckBox = null;
        Label MyLabel = null;
        string CountryID = "1";
        string ApplyURL = "";

        // For each DataRow in the GridView, 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DrvRow = (DataRowView)e.Row.DataItem;

            MyHidden = (HiddenField)e.Row.FindControl("JobsID");
            MyHidden.Value = DrvRow["JobsID"].ToString();

            CountryID = DrvRow["CountryID"].ToString();
            string CANADAURL = ConfigurationManager.AppSettings["CanadaApplyURL"].ToString();                        

            if (CountryID == Location.CANADA && CANADAURL != "")
            {                             
                ApplyURL =  HttpUtility.UrlEncode(CANADAURL);
            }
            else if (CountryID == Location.USA)
            {
                ApplyURL = DrvRow["APPLY_ONLINE_URL"].ToString();               
            }
            else
            {
                ApplyURL = DrvRow["APPLY_ONLINE_URL"].ToString();
            }

            ApplyURL = targetpage + "countryid=" + CountryID + "&url=" + HttpUtility.UrlEncode(ApplyURL);
            
            MyApplyLink = (HyperLink)e.Row.FindControl("hlnkApply");
            MyApplyLink.ID = "hlnkApply" + e.Row.RowIndex;
            MyApplyLink.Text = "Apply Now <span class='auraltext'>For `" + DrvRow["JobTitle"].ToString() + "`. If you have any difficulties, refer to the above alternatives. Opens in a new window.</span><span class='hidden'>Apply Now. Link opens a new window</span>";
            //apply process goes trough clients page for hits counting:
            MyApplyLink.NavigateUrl = ApplyURL;          

            MyLabel = (Label)e.Row.FindControl("lblCheckBox");
            MyLabel.ID = "lblCheckBox" + e.Row.RowIndex;
            MyLabel.Text = "<span class='auraltext'>Remove " + DrvRow["JobTitle"].ToString() + "</span>"; //"<script>" + DrvRow["JobTitle"].ToString() + "</script>" + 
            MyLabel.AssociatedControlID = "ChkRemove" + e.Row.RowIndex;

            MyCheckBox = (CheckBox)e.Row.FindControl("ChkRemove");
            MyCheckBox.ID = "ChkRemove" + e.Row.RowIndex;
        }
    }

    
}
