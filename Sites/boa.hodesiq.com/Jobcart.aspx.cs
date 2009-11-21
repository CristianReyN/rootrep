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

public partial class Jobcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string JobSearch;
        string JobId;
        JobSearch = Request.QueryString["SearchPage"];
        if (Request.QueryString["SearchPage"].ToString() == "Sp")
        {
            SearchReturn.NavigateUrl = "jobsearch.aspx";
        }
        else
        {
            SearchReturn.NavigateUrl = "AdvanceSearch.aspx";
        }

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
            
            JobId = Request.Cookies["BOA"].Value.Replace("JobId=","").ToString();
            Jobs Jobs = new Jobs();
            grdJobcart.DataSource = Jobs.JobDetails(JobId);
            grdJobcart.DataBind();

        }

    }
    protected void Remove_Click(object sender, EventArgs e)
    {
        
    }
}
