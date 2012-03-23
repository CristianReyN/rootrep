using System;
using CareerSiteComponents;
using System.Web;
using System.Xml;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Collections.Generic;

namespace BOA
{
    public partial class JobDetails : System.Web.UI.Page
    {
        #region Properties

        private string ApplyURL = string.Empty;
        private string JobCartID = string.Empty;
        private string srcvalue = string.Empty;
        private string UseTinyUrl = "0";

        private string targetpage = string.Empty;
        string pageTitle = string.Empty;
        string jobtitle = string.Empty;

        protected string JobId { get; set; }
        protected string CountryId { get; set; }

        #endregion

        #region Page Events

        protected void Page_Load(object sender, EventArgs e)
        {
            CareerSiteSettings cs = Utility.GetCareerSiteSettings();

            // Retrieve the JobId from the query string
            try
            {
                try
                {
                    CountryId = this.Request.QueryString["CountryId"].ToString();
                }
                catch
                {
                    // Assume United States if no country is found
                    CountryId = Location.USA;
                }

                JobId = this.Request.QueryString["JobId"].ToString();

                this.jobDetails1.MaskedHiringOrgId = cs.MaskedHiringOrgId;
                this.jobDetails1.EMediaId = cs.EMediaId;
                this.jobDetails1.JobId = System.Convert.ToInt32(JobId);
                this.jobDetails1.QuestionIdList = cs.RetrieveDisplayQuestionIdList();

                try
                {
                    this.jobDetails1.DataBind();
                }
                catch (Exception ex)
                {
                    // Log the error to the database
                    Utility.HandleException(ex);
                    Response.Redirect(ConfigurationManager.AppSettings["jobnotfoundredirectpage"] + "?nf=1");
                }
            }
            catch
            {
                // Log the fact that an invalid JobId was passed in
                Utility.HandleException(new Exception("Invalid JobId: " + this.Request.QueryString["JobId"].ToString()));
                Response.Redirect(ConfigurationManager.AppSettings["jobnotfoundredirectpage"] + "?nf=1");
            }

            try
            {

                this.ltrlCorremetrixProductTag.Text = "";

                UseTinyUrl = Request.QueryString["UseTinyUrl"] != null ? Request.QueryString["UseTinyUrl"].ToString() : "0";
                targetpage = ConfigurationManager.AppSettings["targetpage"];
                if (this.Request.UrlReferrer != null &&
                (this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("jobsearch.aspx") || this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("advancesearch.aspx")
                    || this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("jobdetails.aspx") || this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("tell_a_friend.aspx")))
                {
                    ((HyperLink)this.FindControlInDataTemplate("returntoJobsearch")).Visible = true;
                }

                Jobs Jobs = new Jobs();

                string srcvalue = string.IsNullOrEmpty(Request["src"]) ? string.Empty : Request["src"];
                string countryid = Request["countryid"] == null ? "1" : Request["countryid"].ToString();
                string LocationId = Request["LocationID"] == null ? "0" : Request["LocationID"].ToString();
                string FeedName = Request["FeedName"] == null ? "" : Request["FeedName"].ToString();
                string taleoReqID = "";

                jobtitle = ((HiddenField)this.FindControlInDataTemplate("hdnJobTitle")).Value + " : " + JobId;
                pageTitle = "Bank of America Careers: " + jobtitle;
                lblJobTitle.InnerText = jobtitle;
                taleoReqID = ((HiddenField)this.FindControlInDataTemplate("hdnReqNo")).Value;
                if (CountryId == "1")
                {
                    ((Label)this.FindControlInDataTemplate("lblDescripton")).Text = LinkBuilder(((Label)this.FindControlInDataTemplate("lblDescripton")).Text, "Description");
                    ((Label)this.FindControlInDataTemplate("lblQualification")).Text = LinkBuilder(((Label)this.FindControlInDataTemplate("lblQualification")).Text, "Qualification");
                }
                string CANADAURL = ConfigurationManager.AppSettings["CanadaApplyURL"].ToString();

                if (CountryId == Location.CANADA && CANADAURL != "")
                {
                    ApplyURL = CANADAURL;
                }
                else
                {
                    ApplyURL = ((HiddenField)this.FindControlInDataTemplate("hdnApplyURL")).Value + "&src=" + Request["src"];
                }

                ((HiddenField)this.FindControlInDataTemplate("hApplyNow")).Value = targetpage + "countryid=" + CountryId + "&url=" + HttpUtility.UrlEncode(ApplyURL);
                ViewState["pageTitle"] = pageTitle;
                ViewState["jobtitle"] = jobtitle;

                ((HyperLink)this.FindControlInDataTemplate("returntoJobsearch")).NavigateUrl = "jobsearch.aspx?" + Request.QueryString;

                string applyJobTitle = CleanJobTitle(jobtitle);

                boanet_safebutton.writeBOASafeButton("Apply1", ((PlaceHolder)this.FindControlInDataTemplate("phApply1")), "ApplyNow|*|" + applyJobTitle, Apply_Click_NoJS, this.Request, ((HiddenField)this.FindControlInDataTemplate("hApplyNow")).Value + this.Request.QueryString["jobpipeline"]);
                boanet_safebutton.writeBOASafeButton("Apply2", ((PlaceHolder)this.FindControlInDataTemplate("phApply2")), "ApplyNow|*|" + applyJobTitle, Apply_Click_NoJS, this.Request, ((HiddenField)this.FindControlInDataTemplate("hApplyNow")).Value + this.Request.QueryString["jobpipeline"]);

                prepbuttons();

                //not ready For Pro Yet!! 
                ((HyperLink)this.FindControlInDataTemplate("TellaFriend")).NavigateUrl = "Tell_a_friend.aspx?" + Request.QueryString;

                //check if this job is in the jobcart. If so, display remove Job Cart Link
                if (Cookie.CookieContainsValue(Cookie.JOB_CART_COOKIE_NAME, JobId))
                {
                    ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Visible = true;
                    ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Visible = true;
                    ((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Visible = false;
                    ((Button)this.FindControlInDataTemplate("btnAddToCart")).Visible = false;
                }

                string cmJobID = "";

                if (countryid == "1")
                {
                    cmJobID = "US" + taleoReqID;
                }
                else
                {
                    //international job
                    //ApplyURL split this by & and get 'id=' value
                    string[] arrUrl = ApplyURL.Split('&');
                    foreach (string parm in arrUrl)
                    {
                        if (parm.StartsWith("id="))
                        {
                            //split by = to get reqno
                            cmJobID = JobId.Substring(0, 3) + parm.Substring(3);
                        }
                    }
                }

                hdnJobId.Value = cmJobID;
                BuildCorremetrixProductTag(cmJobID, CleanJobTitle(jobtitle));

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #region His Page_PreRender

        protected void Page_PreRender(object sender, EventArgs e)
        {

            try
            {

                string feedname = "";
                BOAFeedUSA.Visible = false;
                BOAFeedEuropeMBNA.Visible = false;
                BOAFeedEurope.Visible = false;
                BOAFeedCanadaFrench.Visible = false;
                BOAFeedCanada.Visible = false;
                BOAFeedAsia.Visible = false;
                BoaFeedIndia.Visible = false;
                string JobId = "";

                if (!IsPostBack)
                {
                    Page.Title = pageTitle;
                    feedname = Request.QueryString["feedname"] == null ? "" : Request.QueryString["feedname"].ToString();
                    ViewState["feedname"] = feedname;
                    JobId = Request.QueryString["jobid"];
                    ViewState["jobid"] = JobId;
                }
                else
                {
                    feedname = ViewState["feedname"].ToString();
                    pageTitle = ViewState["pageTitle"].ToString();
                    Page.Title = pageTitle;
                    jobtitle = ViewState["jobtitle"].ToString();
                    JobId = ViewState["jobid"].ToString();
                }
                if (feedname.Contains("web05"))
                {
                    BOAFeedAsia.Visible = true;
                }
                else if (feedname.Contains("web06"))
                {
                    BOAFeedCanada.Visible = true;
                }
                else if (feedname.Contains("web01"))
                {
                    BoaFeedIndia.Visible = true;
                }
                else
                {
                    switch (feedname)
                    {
                        // case  "BOAFeedAsia"         : BOAFeedAsia.Visible = true;break;
                        //case  "BOAFeedCanada"       : BOAFeedCanada.Visible = true; break;
                        case "BOAFeedCanadaFrench": BOAFeedCanadaFrench.Visible = true; break;
                        case "BOAFeedEurope": BOAFeedEurope.Visible = true; break;
                        case "BOAFeedEurope MBNA": BOAFeedEuropeMBNA.Visible = true; break;
                        // case  "BOAFEEDIndia"        : BoaFeedIndia.Visible = true; break;
                        // case  "BOAFEEDUSA"          : BOAFeedUSA.Visible = true;break;
                        default: break;
                    }
                }


                int twitterjobtitlelength = Int32.Parse(ConfigurationManager.AppSettings["twitterjobtitlelength"].ToString());
                int linkedinjobtitlelength = Int32.Parse(ConfigurationManager.AppSettings["linkedinjobtitlelength"].ToString());
                int linkedinjobdescriptionlength = Int32.Parse(ConfigurationManager.AppSettings["linkedinjobdescriptionlength"].ToString());


                if (twitterjobtitlelength > 0 && twitterjobtitlelength < jobtitle.Length)
                {
                    hdnTwitterTitle.Value = "#Job opportunity at Bank of America: " + jobtitle.Substring(0, twitterjobtitlelength) + "...";
                }
                else
                {
                    hdnTwitterTitle.Value = "#Job opportunity at Bank of America: " + jobtitle;
                }

                if (linkedinjobtitlelength > 0 && pageTitle.Length > linkedinjobtitlelength)
                {
                    hdnLinkedInTitle.Value = pageTitle.Substring(0, linkedinjobtitlelength);
                }
                else
                {
                    hdnLinkedInTitle.Value = pageTitle;
                }

                hdnJobDetailURL.Value = ConfigurationManager.AppSettings["jobdetailURL"].ToString() + JobId;

                //hdnJobId.Value = JobId;


                if (linkedinjobdescriptionlength > 0 && ((Label)this.FindControlInDataTemplate("lblDescripton")).Text.Length > linkedinjobdescriptionlength)
                {
                    hdnLinkedInJobDescription.Value = ((Label)this.FindControlInDataTemplate("lblDescripton")).Text.Substring(0, linkedinjobtitlelength);
                }
                else
                {
                    hdnLinkedInJobDescription.Value = ((Label)this.FindControlInDataTemplate("lblDescripton")).Text;
                }


                hdnLinkedInJobDescription.Value = hdnLinkedInJobDescription.Value.Replace("\r", "");
                hdnLinkedInJobDescription.Value = hdnLinkedInJobDescription.Value.Replace("\n", "");
                hdnLinkedInJobDescription.Value = Utility.StripHTML(hdnLinkedInJobDescription.Value);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        #endregion

        #endregion

        #region Button Methods

        protected void Apply_Click(object sender, EventArgs e)
        {
            //Response.Redirect(this.hApplyNow.Value);
        }

        protected void Apply_Click_NoJS(object sender, EventArgs e)
        {
            //Response.Redirect(this.hApplyNow.Value);
        }


        protected void bsearchTop_Click(object sender, EventArgs e)
        {
            Response.Redirect("Jobcart.aspx?SearchPage=" + Request.QueryString["SearchPage"].ToString());
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

        protected void btnAddToJobCart_Click(object sender, EventArgs e)
        {
            if (Cookie.WriteCookie(Cookie.JOB_CART_COOKIE_NAME, this.Request.QueryString["JobId"].ToString(), Cookie.WriteModes.Append))
            {
                ((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Visible = false;
                ((Button)this.FindControlInDataTemplate("btnAddToCart")).Visible = false;
                ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Visible = true;
                ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Visible = true;
            }
        }

        protected void btnRemoveFromJobCart_Click(object sender, EventArgs e)
        {
            if (Cookie.RemoveValueFromCookie(Cookie.JOB_CART_COOKIE_NAME, this.Request.QueryString["JobId"].ToString()))
            {
                ((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Visible = true;
                ((Button)this.FindControlInDataTemplate("btnAddToCart")).Visible = true;
                ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Visible = false;
                ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Visible = false;
            }
        }
        protected void btnApplyNow_Click(object sender, EventArgs e)
        {
            Response.Redirect(ApplyURL);
        }

        protected void btnTellAFriend_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tell_a_friend.aspx?JobId=" + Request.QueryString["JobId"].ToString() + "&SearchPage=" + Request.QueryString["SearchPage"].ToString());
        }
        protected void btnJobList_Click(object sender, EventArgs e)
        {
            //Response.Redirect(bttnJobList.PostBackUrl);
        }

        #endregion

        #region Helper Methods

        private System.Web.UI.Control FindControlInDataTemplate(string id)
        {
            return this.jobDetails1.Controls[0].FindControl(id);
        }

        private void prepbuttons()
        {
            ((HyperLink)this.FindControlInDataTemplate("returntoJobsearch")).Attributes.Add("onfocus", "this.className='p-over';");
            ((HyperLink)this.FindControlInDataTemplate("returntoJobsearch")).Attributes.Add("onblur", "this.className='p';");

            //not ready For Pro Yet!!
            ((HyperLink)this.FindControlInDataTemplate("TellaFriend")).Attributes.Add("onfocus", "this.className='p-over';");
            ((HyperLink)this.FindControlInDataTemplate("TellaFriend")).Attributes.Add("onfocus", "this.className='p-over';");
            ((HyperLink)this.FindControlInDataTemplate("TellaFriend")).Attributes.Add("onblur", "this.className='p';");

            ((Button)this.FindControlInDataTemplate("btnAddToCart")).Attributes.Add("onfocus", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("btnAddToCart")).Attributes.Add("onblur", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("btnAddToCart")).Attributes.Add("onmouseover", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("btnAddToCart")).Attributes.Add("onmouseout", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("btnAddToCart")).Width = System.Web.UI.WebControls.Unit.Parse(
                (((Button)this.FindControlInDataTemplate("btnAddToCart")).Text.Length + 1).ToString() + "Ex");

            ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Attributes.Add("onfocus", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Attributes.Add("onblur", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Attributes.Add("onmouseover", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Attributes.Add("onmouseout", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Width = System.Web.UI.WebControls.Unit.Parse(
                (((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Text.Length + 3).ToString() + "Ex");

            ((Button)this.FindControlInDataTemplate("bsearch")).Attributes.Add("onfocus", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("bsearch")).Attributes.Add("onblur", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("bsearch")).Attributes.Add("onmouseover", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("bsearch")).Attributes.Add("onmouseout", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("bsearch")).Width = System.Web.UI.WebControls.Unit.Parse(
                (((Button)this.FindControlInDataTemplate("bsearch")).Text.Length + 1).ToString() + "Ex");

            ((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Attributes.Add("onfocus", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Attributes.Add("onblur", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Attributes.Add("onmouseover", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Attributes.Add("onmouseout", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Width = System.Web.UI.WebControls.Unit.Parse(
                (((Button)this.FindControlInDataTemplate("btnAddToJobCart")).Text.Length + 1).ToString() + "Ex");

            ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Attributes.Add("onfocus", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Attributes.Add("onblur", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Attributes.Add("onmouseover", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Attributes.Add("onmouseout", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Width = System.Web.UI.WebControls.Unit.Parse(
                (((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Text.Length + 3).ToString() + "Ex");

            ((Button)this.FindControlInDataTemplate("bsearchTop")).Attributes.Add("onfocus", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("bsearchTop")).Attributes.Add("onblur", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("bsearchTop")).Attributes.Add("onmouseover", "this.style.color='#0000FF';");
            ((Button)this.FindControlInDataTemplate("bsearchTop")).Attributes.Add("onmouseout", "this.style.color='#405EBE';");
            ((Button)this.FindControlInDataTemplate("bsearchTop")).Width = System.Web.UI.WebControls.Unit.Parse(
                (((Button)this.FindControlInDataTemplate("bsearchTop")).Text.Length + 1).ToString() + "Ex");

            ((Button)this.FindControlInDataTemplate("btnRemoveFromJobCart")).Visible = false;
            ((Button)this.FindControlInDataTemplate("btnRemoveFromCart")).Visible = false;

        }

        protected string CleanJobTitle(string jobTitle)
        {
            if (jobtitle != null)
            {
                jobtitle = jobtitle.Replace("&", "");
                jobtitle = jobtitle.Replace("amp;", "");
                jobtitle = jobtitle.Replace(",", "");
                jobtitle = jobtitle.Replace(@"/", " ");
                jobtitle = jobtitle.Replace(@"\", " ");
                jobtitle = jobtitle.Replace(":", "");
                jobtitle = jobtitle.Replace("*", "");
                jobtitle = jobtitle.Replace("(", " ");
                jobtitle = jobtitle.Replace(")", " ");
                jobtitle = jobtitle.Replace("-", "");
                jobtitle = jobtitle.Replace(".", "");
                jobtitle = jobtitle.Replace("'", "");
                jobtitle = jobtitle.Replace("&#44;", "_");
                jobtitle = jobtitle.Replace(">", "");
                jobtitle = jobtitle.Replace("<", "");
                jobtitle = jobtitle.Replace("?", "");
                jobtitle = jobtitle.Replace("&#63", "");
            }
            else { jobtitle = ""; }

            return jobtitle;

        }

        protected void BuildCorremetrixProductTag(string JobId, string jobtitle)
        {

            string strScript = "";

            strScript = "<script language='javascript1.1' type='text/javascript'>" + System.Environment.NewLine;
            strScript += "//<!—" + System.Environment.NewLine;
            strScript += "cmCreatePageviewTag('career:Prod:Job_Search;JobDetails', null, null, 'career:Prod:Job_Search', false, false, null, false, false, null, null, '|job_" + JobId + "|',null,null,null,null,null,'|job_" + JobId + "|-_--_--_--_--_--_--_--_--_--_--_--_--_--_-', null, null, null);" + System.Environment.NewLine;
            strScript += "cmCreateProductviewTag('" + JobId + "','" + jobtitle + "', 'career:Job_Search', null, false, false, null, false, null, null, false, null);" + System.Environment.NewLine;
            strScript += "//-->" + System.Environment.NewLine;
            strScript += "</script>" + System.Environment.NewLine;
            this.ltrlCorremetrixProductTag.Text = strScript;
        }

        #endregion

        #region :: PARSING BY LINKS AND WEB ENABLE THEM ::
        private string LinkBuilder(string sText, string sFieldName)
        {
            StringBuilder strParsedText = new StringBuilder();
            StringBuilder strWWWText = new StringBuilder();
            StringBuilder strURL = new StringBuilder();
            StringBuilder strHref = new StringBuilder();

            string sParsedText = sText;
            string sRight = "";
            string sURL = "";
            int iSpaceIndex = 0;
            int iDotIndex = 0;
            string sHref = "";
            string sHrefTemplate = "<a href='link_here' target='_blank'>link_here</a>";
            string sHrefWWWTemplate = "<a href='http://link_here' target='_blank'>link_here</a>";

            if ((sText.ToLower().Contains("http") || sText.ToLower().Contains("www.")) && sText.ToLower().Contains(".com"))
            {
                // by "http"
                string[] sSplit = SplitByString(sText, "http");
                strParsedText.Append(sSplit[0].Substring(0, sSplit[0].Length - 4));
                for (int i = 1; i < sSplit.Length; i++)
                {
                    //sHref = sHrefTemplate;
                    //strHref.Append("<a href='link_here' target='_blank'>link_here</a>");
                    sRight = sSplit[i];
                    iSpaceIndex = sRight.IndexOf(" ");

                    try
                    {
                        iSpaceIndex = sRight.IndexOf(" ", sRight.IndexOf("com"));
                        iDotIndex = sRight.IndexOf(".", sRight.IndexOf("com"));
                    }
                    finally
                    {
                        if (iSpaceIndex == -1 && iDotIndex == -1)
                        {
                            iSpaceIndex = sRight.Length;
                        }
                        else
                        {
                            if (iSpaceIndex > iDotIndex && iDotIndex != -1)
                                iSpaceIndex = iDotIndex;
                        }
                    }

                    sURL = sRight.Substring(0, iSpaceIndex).Trim();
                    strParsedText.Append("<a href='http");
                    strParsedText.Append(sURL);
                    strParsedText.Append("' target='_blank'>");
                    strParsedText.Append("http" + sURL);
                    strParsedText.Append("</a>");
                    strParsedText.Append(sRight.Substring(iSpaceIndex));
                    //sHref = sHref.Replace("link_here", sURL);
                    //sParsedText = sParsedText.Replace(sURL, sHref);
                }

                // by " www."
                sSplit = SplitByString(strParsedText.ToString(), "www");
                strWWWText.Append(sSplit[0].Substring(0, sSplit[0].Length));
                for (int ii = 1; ii < sSplit.Length; ii++)
                {
                    sRight = sSplit[ii];
                    //iSpaceIndex = sRight.IndexOf(" ");

                    try
                    {
                        iSpaceIndex = sRight.IndexOf(" ", sRight.IndexOf("com"));
                        iDotIndex = sRight.IndexOf(".", sRight.IndexOf("com"));
                    }
                    finally
                    {
                        if (iSpaceIndex == -1 && iDotIndex == -1)
                        {
                            iSpaceIndex = sRight.Length;
                        }
                        else
                        {
                            if (iSpaceIndex > iDotIndex && iDotIndex != -1)
                                iSpaceIndex = iDotIndex;
                        }
                    }

                    sURL = sRight.Substring(0, iSpaceIndex).Trim();
                    strWWWText.Append("<a href='http://www");
                    strWWWText.Append(sURL);
                    strWWWText.Append("' target='_blank'>");
                    strWWWText.Append("www" + sURL);
                    strWWWText.Append("</a>");
                    strWWWText.Append(sRight.Substring(iSpaceIndex + 1));
                }
            }
            else
                strWWWText.Append(sText);
            return strWWWText.ToString();
            //return sParsedText;
        }
        #endregion

        #region :: SPLIT BY STRING PROCEDURE ::
        private string[] SplitByString(string testString, string split)
        {
            int offset = 0;
            int index = 0;
            int[] offsets = new int[testString.Length + 1];

            while (index < testString.Length)
            {
                int indexOf = testString.IndexOf(split, index);
                if (indexOf != -1)
                {
                    offsets[offset++] = indexOf;
                    index = (indexOf + split.Length);
                }
                else
                {
                    index = testString.Length;
                }
            }

            string[] final = new string[offset + 1];
            if (offset == 0)
            {
                final[0] = testString;
            }
            else
            {
                offset--;
                final[0] = testString.Substring(0, offsets[0]);
                for (int i = 0; i < offset; i++)
                {
                    final[i + 1] = testString.Substring(offsets[i] + split.Length, offsets[i + 1] - offsets[i] - split.Length);
                }
                final[offset + 1] = testString.Substring(offsets[offset] + split.Length);
            }
            return final;
        }

        protected string GetCustomFieldValue(List<CareerSiteWebControls.CustomField> lstCustomFields, string customFieldTagValue)
        {
            CareerSiteSettings cs = Utility.GetCareerSiteSettings();

            try
            {
                // Get Question ID value for "Location Detail" custom field
                int intCustomFieldId = cs.RetrieveTagValueQuestionId(customFieldTagValue);

                // Loop through the custom field list looking for the custom field
                // when found return the Answer text for it
                foreach (CareerSiteWebControls.CustomField cf in lstCustomFields)
                {
                    if (intCustomFieldId == cf.QuestionId)
                    {
                        // Get LocationDetail value
                        string strLocationDetail = cf.AnswerText;

                        // Return LocationDetail value
                        return strLocationDetail;
                    }
                }
            }
            catch (Exception ex)
            {
                Utility.HandleException(ex);
            }

            return "";
        }



        #endregion
    }
}