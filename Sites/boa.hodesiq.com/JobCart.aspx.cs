using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.UI.WebControls;
using System.Xml;
using CareerSiteComponents;
using System.Text.RegularExpressions;

namespace BOA
{
    public partial class JobCart : System.Web.UI.Page
    {
        #region Change History
        // date		    developer	    comments
        // -----------	----------	    ----------
        //  03/20/12    rmed            (1) modified to use JobCart control
        //  11/27/06    Jonathan Do     (1) grdJobcart_RowDataBound, Remove_Click
        //                              (2) rework Page_Load
        //  12/05/06    Don Nguyen      (1) Made Remove Job Cart button hidden of no jobs in cart
        //                              (1) Fixed Return to Search link
        /// </summary>
        #endregion

        private string targetpage = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            CareerSiteSettings cs = Utility.GetCareerSiteSettings();

            targetpage = ConfigurationManager.AppSettings["targetpage"];

            //write the boa buttons
            boanet_safebutton.writeBOASafeButton("Remove", phRemove, "Remove Selected", Remove_Click, this.Request, "");

            //if(ViewState["Cookie"]==null)
            //{

            SearchReturn.NavigateUrl = Request.UrlReferrer.ToString();
            string jobIdList = Cookie.ReadCookie(Cookie.JOB_CART_COOKIE_NAME);

            if (!(string.IsNullOrEmpty(jobIdList)))
            {
                grdJobcart.MaskedHiringOrgId = cs.MaskedHiringOrgId;
                grdJobcart.EMediaId = cs.EMediaId;
                grdJobcart.JobIdList = jobIdList;
                grdJobcart.GetRecords();

                phRemove.Visible = grdJobcart.RowCount > 0;
                lblNoResults.Visible = grdJobcart.RowCount == 0;
            }
            else
            {
                phRemove.Visible = false;
                lblNoResults.Visible = true;
            }
        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            CheckBox MyCheckBox;

            foreach (GridViewRow Row in grdJobcart.Rows)
            {
                MyCheckBox = (CheckBox)Row.FindControl("ChkRemove" + Row.RowIndex);

                if (MyCheckBox.Checked)
                {
                    HiddenField myhidden = (HiddenField)Row.FindControl("JobId");
                    Cookie.RemoveValueFromCookie(Cookie.JOB_CART_COOKIE_NAME, myhidden.Value);
                }
            }

            Response.Redirect("Jobcart.aspx?SearchPage" + Request.QueryString["SearchPage"]);
        }

        protected void grdJobcart_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            HiddenField hdnURL = null;
            HiddenField MyHidden = null;
            DataRowView DrvRow = null;
            HiddenField hdnJobTitle = null;
            HyperLink MyApplyLink = null;
            CheckBox MyCheckBox = null;
            Label MyLabel = null;
            string CountryID = "1";
            string ApplyURL = "";

            // For each DataRow in the GridView, 
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DrvRow = (DataRowView)e.Row.DataItem;

                hdnURL = (HiddenField)e.Row.FindControl("hdnURL");
                MyHidden = (HiddenField)e.Row.FindControl("JobId");
                MyHidden.Value = DrvRow["JobId"].ToString();

                CountryID = "1"; //DrvRow["CountryID"].ToString();
                string CANADAURL = ConfigurationManager.AppSettings["CanadaApplyURL"].ToString();

                if (CountryID == Location.CANADA && CANADAURL != "")
                {
                    ApplyURL = HttpUtility.UrlEncode(CANADAURL);
                }
                else
                {
                    //ApplyURL = hdnURL.Value;
                    if (CountryID == "1")
                    {
                        //This is only for usa job.  How does hdnApplyUrl get set?
                        //ApplyURL = ((HiddenField)this.FindControlInDataTemplate("hdnApplyURL")).Value + "&src=" + Request["src"];
                        ApplyURL = "https://bacfhrs.taleo.net/careersection/application.jss?lang=en&type=1&csNo=2&portal=140160497&reqNo=" + MyHidden.Value + "&postdata=$QEbCcxFGN7OUb1h-_JXJTg==";
                    }
                    else
                    {
                    }

                }

                ApplyURL = targetpage + "countryid=" + CountryID + "&url=" + HttpUtility.UrlEncode(ApplyURL);

                hdnJobTitle = (HiddenField)e.Row.FindControl("hdnJobTitle");
                MyApplyLink = (HyperLink)e.Row.FindControl("hlnkApply");
                MyApplyLink.ID = "hlnkApply" + e.Row.RowIndex;
                MyApplyLink.Text = "Apply Now <span class='auraltext'>For `" + hdnJobTitle.Value + "`. If you have any difficulties, refer to the above alternatives. Opens in a new window.</span><span class='hidden'>Apply Now. Link opens a new window</span>";
                //apply process goes trough clients page for hits counting:
                DateTime MaintenanceStartDate = DateTime.Parse(System.Configuration.ConfigurationManager.AppSettings["MaintenanceStartDate"].ToString());
                DateTime MaintenanceEndDate = DateTime.Parse(System.Configuration.ConfigurationManager.AppSettings["MaintenanceEndDate"].ToString());
                if ((CountryID == Location.USA) && DateTime.Compare(MaintenanceStartDate, DateTime.Now) < 0 && DateTime.Compare(MaintenanceEndDate, DateTime.Now) > 0)
                {

                    MyApplyLink.NavigateUrl = System.Configuration.ConfigurationManager.AppSettings["MaintenancePage"].ToString();
                }
                else
                {
                    MyApplyLink.NavigateUrl = ApplyURL;
                    MyApplyLink.Target = "_blank";
                }

                MyLabel = (Label)e.Row.FindControl("lblCheckBox");
                MyLabel.ID = "lblCheckBox" + e.Row.RowIndex;
                MyLabel.Text = "<span class='auraltext'>Remove " + hdnJobTitle.Value + "</span>"; //"<script>" + hdnJobTitle.Value + "</script>" + 
                MyLabel.AssociatedControlID = "ChkRemove" + e.Row.RowIndex;

                MyCheckBox = (CheckBox)e.Row.FindControl("ChkRemove");
                MyCheckBox.ID = "ChkRemove" + e.Row.RowIndex;
            }
        }
    }
}