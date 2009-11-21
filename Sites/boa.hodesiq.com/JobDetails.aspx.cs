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

public partial class JobDetails : System.Web.UI.Page
{
    #region Change History
    // date		    developer	    comments
    // -----------	----------	    ----------
    //  11/27/06    Jonathan Do     (1) added LnkAddJobCart_OnClick
    //  12/05/06    Don Nguyen      (2) added Remove Job Cart links and functionality
    /// </summary>
    #endregion
    private string ApplyURL = string.Empty;
    private string strJobID = string.Empty;
    private string JobCartID = "";

    protected void Page_Load(object sender, EventArgs e)
    {
       //LnkRemoveFromJobCart.Visible = false;
       //LnkRemoveFromJobCart_bottom.Visible = false;
       bttnRemoveFromJobCart.Visible = false;
       bttnRemoveFromJobCart_bottom.Visible = false;

        Jobs Jobs = new Jobs();
        DataTable dt = Jobs.JobDetails(Request.QueryString["JobId"].ToString());
        if (dt.Rows.Count > 0)
        {
            strJobID = dt.Rows[0]["JobsId"].ToString();

            lblDescripton.Text = dt.Rows[0]["Description"].ToString();
            lblJobTitle.Text = dt.Rows[0]["JobTitle"].ToString() + " : " + dt.Rows[0]["JobsId"].ToString();
            lblLocation.Text = dt.Rows[0]["Location"].ToString();
            lblLocationFooter.Text = dt.Rows[0]["Location"].ToString();
            lblPartTimeFullTime.Text = dt.Rows[0]["FullPartTime"].ToString();
            lblPostingDate.Text = dt.Rows[0]["PostingDate"].ToString();
            lblSchedule.Text = dt.Rows[0]["Shift"].ToString();
            lblShift.Text = dt.Rows[0]["Shift"].ToString();
            lblTravel.Text = dt.Rows[0]["Travel"].ToString();
            lblUnpostingDate.Text = dt.Rows[0]["UnPostingDate"].ToString() ;
            lblLanguage.Text = dt.Rows[0]["Language"].ToString();
            lblJobFamily.Text = dt.Rows[0]["family"].ToString();
            lblHoursPerWeek.Text = dt.Rows[0]["HrsPerWeek"].ToString();
            lblQualification.Text = dt.Rows[0]["Qualification"].ToString();
            ApplyURL = dt.Rows[0]["ApplyURL"].ToString();
			this.applylink.NavigateUrl = "applyrd.aspx?" + HttpUtility.UrlEncode(ApplyURL);
			this.applylnk.NavigateUrl = "applyrd.aspx?" + HttpUtility.UrlEncode(ApplyURL);
            //bttnApplyNow.PostBackUrl = ApplyURL;
            bttnApplyNow_bottom.PostBackUrl = ApplyURL;
        }
        if (Request.QueryString["SearchPage"].ToString() == "Sp")
        {
            returntoJobsearch.NavigateUrl = "jobsearch.aspx?" + Request.QueryString;
            bttnJobList.PostBackUrl = "jobsearch.aspx?" + Request.QueryString;
        }
        else
        {
            returntoJobsearch.NavigateUrl = "AdvanceSearch.aspx?" + Request.QueryString;
            bttnJobList.PostBackUrl = "AdvanceSearch.aspx?" + Request.QueryString;
        }
        TellaFriend.NavigateUrl = "Tell_a_friend.aspx?JobId=" + Request.QueryString["JobId"].ToString() + "&SearchPage=" + Request.QueryString["SearchPage"].ToString();
        //Jobcart.NavigateUrl = "jobcart.aspx?JobId=" + Request.QueryString["JobId"].ToString() +"&SearchPage="+Request.QueryString["SearchPage"].ToString();
        JobcartTop.NavigateUrl = "jobcart.aspx?JobId=" + Request.QueryString["JobId"].ToString() + "&SearchPage=" + Request.QueryString["SearchPage"].ToString();

        bttnTellAFriend.PostBackUrl = "Tell_a_friend.aspx?JobId=" + Request.QueryString["JobId"].ToString() + "&SearchPage=" + Request.QueryString["SearchPage"].ToString();

        //check if this job is in the jobcart. If so, display remove Job Cart Link
        HttpCookie MyCookie = Request.Cookies["JobCartID"];
        if (MyCookie != null)
        {
            JobCartID = MyCookie.Value.ToString();
            //Jobs Jobs = new Jobs();
            DataView DW = Jobs.RetrieveJobCart(JobCartID);
            if (DW.Count > 0)
            {
                foreach (DataRowView Row in DW)
                {
                   if (strJobID == Row["JobsID"].ToString())
                    {
                        //LnkRemoveFromJobCart.Visible = true;
                        //LnkRemoveFromJobCart_bottom.Visible = true; 
                        //LnkAddJobCart.Visible = false;
                        //LnkAddJobCart_bottom.Visible = false;

                        bttnRemoveFromJobCart.Visible = true;
                        bttnRemoveFromJobCart_bottom.Visible = true; 
                        bttnAddToJobCart.Visible = false;
                        bttnAddToJobCart_bottom.Visible = false;

                    }
                }
            }

        }
        


    }
    protected void LnkAddJobCart_OnClick(object sender, EventArgs e)
    {
        string GUID = "";
        
        HttpCookie MyCookie = Request.Cookies["JobCartID"];
        if (MyCookie == null)
        {
            GUID = Convert.ToString(Guid.NewGuid());
            MyCookie = new HttpCookie("JobCartID", GUID);
            Response.Cookies.Add(MyCookie);
        }
        else
        {
            GUID = MyCookie.Value.ToString();
        }
        Jobs Jobs = new Jobs();
        DataView DW = Jobs.AddJobCart(GUID, Request.QueryString["JobId"].ToString());
        LnkAddJobCart_bottom.Visible = false;
        LnkRemoveFromJobCart_bottom.Visible = true;
        
    }
    protected void LnkRemoveJobCart_OnClick(object sender, EventArgs e)
    {
        string GUID = "";

        HttpCookie MyCookie = Request.Cookies["JobCartID"];
         if (MyCookie != null)
        {
            GUID = MyCookie.Value.ToString();
        }
        XmlDocument Document = new XmlDocument();
        XmlElement Root, Element;

        Root = Document.CreateElement("Root");
        Document.AppendChild(Root);

        Element = Document.CreateElement("JobCart");
        Element.SetAttribute("JobID", Request.QueryString["JobId"].ToString());
        Root.AppendChild(Element);


        XmlDeclaration declaration = Document.CreateXmlDeclaration("1.0", "utf-8", null);
        declaration.Encoding = "Windows-1252";
        Document.InsertBefore(declaration, Document.DocumentElement);

        Jobs Jobs = new Jobs();
        DataView DW = Jobs.RemoveJobCart(GUID, Document.OuterXml);

        Root.RemoveAll();
        Document.RemoveAll();

        LnkAddJobCart_bottom.Visible = true;
        LnkRemoveFromJobCart_bottom.Visible = false;

    }
    protected void bsearchTop_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jobcart.aspx?SearchPage="+Request.QueryString["SearchPage"].ToString());
    }

    protected void applyTop_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jobsearch.aspx?SearchPage=" + Request.QueryString["SearchPage"].ToString());
    }
    protected void bsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jobcart.aspx?SearchPage=" + Request.QueryString["SearchPage"].ToString());
    }
    protected void apply_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jobsearch.aspx?SearchPage=" + Request.QueryString["SearchPage"].ToString());
    }

    protected void bttnAddToJobCart_Click(object sender, EventArgs e)
    {
        string GUID = "";

        HttpCookie MyCookie = Request.Cookies["JobCartID"];
        if (MyCookie == null)
        {
            GUID = Convert.ToString(Guid.NewGuid());
            MyCookie = new HttpCookie("JobCartID", GUID);
            Response.Cookies.Add(MyCookie);
        }
        else
        {
            GUID = MyCookie.Value.ToString();
        }
        Jobs Jobs = new Jobs();
        DataView DW = Jobs.AddJobCart(GUID, Request.QueryString["JobId"].ToString());
        //LnkAddJobCart.Visible = false;
        //LnkAddJobCart_bottom.Visible = false;
        //LnkRemoveFromJobCart.Visible = true;
        //LnkRemoveFromJobCart_bottom.Visible = true;

        bttnAddToJobCart.Visible = false;
        bttnAddToJobCart_bottom.Visible = false;

        bttnRemoveFromJobCart.Visible = true;
        bttnRemoveFromJobCart_bottom.Visible = true;

    }
    protected void bttnRemoveFromJobCart_Click(object sender, EventArgs e)
    {
        string GUID = "";

        HttpCookie MyCookie = Request.Cookies["JobCartID"];
        if (MyCookie != null)
        {
            GUID = MyCookie.Value.ToString();
        }
        XmlDocument Document = new XmlDocument();
        XmlElement Root, Element;

        Root = Document.CreateElement("Root");
        Document.AppendChild(Root);

        Element = Document.CreateElement("JobCart");
        Element.SetAttribute("JobID", Request.QueryString["JobId"].ToString());
        Root.AppendChild(Element);


        XmlDeclaration declaration = Document.CreateXmlDeclaration("1.0", "utf-8", null);
        declaration.Encoding = "Windows-1252";
        Document.InsertBefore(declaration, Document.DocumentElement);

        Jobs Jobs = new Jobs();
        DataView DW = Jobs.RemoveJobCart(GUID, Document.OuterXml);

        Root.RemoveAll();
        Document.RemoveAll();

        //LnkAddJobCart.Visible = true;
        //LnkAddJobCart_bottom.Visible = true;
        //LnkRemoveFromJobCart.Visible = false;
        //LnkRemoveFromJobCart_bottom.Visible = false;

        bttnAddToJobCart.Visible = true;
        bttnAddToJobCart_bottom.Visible = true;
        bttnRemoveFromJobCart.Visible = false;
        bttnRemoveFromJobCart_bottom.Visible = false;
    }
    protected void bttnApplyNow_Click(object sender, EventArgs e)
    {
        Response.Redirect(ApplyURL);
    }
    protected void bttnTellAFriend_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tell_a_friend.aspx?JobId=" + Request.QueryString["JobId"].ToString() + "&SearchPage=" + Request.QueryString["SearchPage"].ToString());
    }
    protected void bttnJobList_Click(object sender, EventArgs e)
    {
        Response.Redirect(bttnJobList.PostBackUrl);
    }
}
