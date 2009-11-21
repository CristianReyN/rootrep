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

public partial class JobDetails : System.Web.UI.Page
{
    private string ApplyURL = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        Jobs Jobs = new Jobs();
        DataTable dt = Jobs.JobDetails(Request.QueryString["JobId"].ToString());
        if (dt.Rows.Count > 0)
        {
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
            this.applylink.NavigateUrl = ApplyURL;
            this.applylnk.NavigateUrl = ApplyURL;
        }
        if (Request.QueryString["SearchPage"].ToString() == "Sp")
        {
            returntoJobsearch.NavigateUrl = "jobsearch.aspx?" + Request.QueryString;
        }
        else
        {
            returntoJobsearch.NavigateUrl = "AdvanceSearch.aspx?" + Request.QueryString;
        }
        TellaFriend.NavigateUrl = "Tell_a_friend.aspx?JobId=" + Request.QueryString["JobId"].ToString() + "&SearchPage=" + Request.QueryString["SearchPage"].ToString();
        Jobcart.NavigateUrl = "jobcart.aspx?JobId=" + Request.QueryString["JobId"].ToString() +"&SearchPage="+Request.QueryString["SearchPage"].ToString();
        JobcartTop.NavigateUrl = "jobcart.aspx?JobId=" + Request.QueryString["JobId"].ToString() + "&SearchPage=" + Request.QueryString["SearchPage"].ToString();


    }
    protected void LnkAddJobCart_OnClick(object sender, EventArgs e)
    {
        string GUID = "";
        
        HttpCookie MyCookie = Request.Cookies["JobCartID"];
        if (MyCookie == null)
        //if (Request.Cookies["JobCartID"].Value != "" && Request.Cookies["JobCartID"].Value != null)
        {
            GUID = Convert.ToString(Guid.NewGuid());
            MyCookie = new HttpCookie("JobCartID", GUID);
            Response.Cookies.Add(MyCookie);
        }
        else
        {
            //GUID = Request.Cookies["JobCartID"].Value;
            GUID = MyCookie.Value.ToString();
        }
        Jobs Jobs = new Jobs();
        DataView DW = Jobs.AddJobCart(GUID, Request.QueryString["JobId"].ToString());
        
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
}
