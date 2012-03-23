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

public partial class JobDetailsOld : System.Web.UI.Page
{
    #region Change History
    // date		    developer	    comments
    // -----------	----------	    ----------
    //  11/27/06    Jonathan Do     (1) added LnkAddJobCart_OnClick
    //  12/05/06    Don Nguyen      (2) added Remove Job Cart links and functionality
	//	01/11/08	Pat Sugar		(3) added logic to redirect to search page if jobid not found.
    /// </summary>
    #endregion
    private string ApplyURL = string.Empty;
    private string strJobID = string.Empty;
    private string JobCartID = "";
	private string srcvalue = string.Empty;
    protected string UseTinyUrl = "0";
 
	private string targetpage = string.Empty;
    string pageTitle = "";
    string jobtitle = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            this.ltrlCorremetrixProductTag.Text = "";

            UseTinyUrl = Request.QueryString["UseTinyUrl"] != null ? Request.QueryString["UseTinyUrl"].ToString() : "0";
            targetpage = ConfigurationManager.AppSettings["targetpage"];
            if (this.Request.UrlReferrer != null &&
            (this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("jobsearch.aspx") || this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("advancesearch.aspx")
                || this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("jobdetails.aspx") || this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("tell_a_friend.aspx")))
            {
                returntoJobsearch.Visible = true;
            }

            Jobs Jobs = new Jobs();

            string countryid = Request["countryid"] == null ? "1" : Request["countryid"].ToString();
            string LocationId = Request["LocationID"] == null ? "0" : Request["LocationID"].ToString();
            string FeedName = Request["FeedName"] == null ? "" : Request["FeedName"].ToString();
            string taleoReqID = "";

            DataTable dt = Jobs.JobDetails(Request.QueryString["JobId"].ToString(), countryid, LocationId, FeedName);
            if (dt.Rows.Count > 0)
            {
                taleoReqID = dt.Rows[0]["reqNo"].ToString();

                strJobID = dt.Rows[0]["JobsId"].ToString();
                if (countryid == "1")
                {
                    lblDescripton.Text = LinkBuilder(dt.Rows[0]["Description"].ToString(), "Description");
                }
                else
                {
                    lblDescripton.Text = dt.Rows[0]["Description"].ToString();
                }
                jobtitle = dt.Rows[0]["JobTitle"].ToString() + " : " + dt.Rows[0]["JobsId"].ToString(); ;
                lblJobTitle.InnerText = jobtitle;
                pageTitle = "Bank of America Careers: " + jobtitle;
                lblLocation.Text = dt.Rows[0]["Location"].ToString();
                lblLocationFooter.Text = dt.Rows[0]["Location"].ToString();
                lblPartTimeFullTime.Text = dt.Rows[0]["FullPartTime"].ToString();
                lblPostingDate.Text = dt.Rows[0]["PostingDate"].ToString();
                lblSchedule.Text = dt.Rows[0]["WeeklySchedule"].ToString();
                lblShift.Text = dt.Rows[0]["Shift"].ToString();
                lblTravel.Text = dt.Rows[0]["Travel"].ToString();
                lblUnpostingDate.Text = dt.Rows[0]["UnPostingDate"].ToString();
                lblLanguage.Text = dt.Rows[0]["Language"].ToString();
                lblJobFamily.Text = dt.Rows[0]["family"].ToString();
                lblHoursPerWeek.Text = dt.Rows[0]["HrsPerWeek"].ToString();
                if (countryid == "1")
                {
                    lblQualification.Text = LinkBuilder(dt.Rows[0]["Qualification"].ToString(), "Qualification");
                }
                else
                {
                    lblQualification.Text = dt.Rows[0]["Qualification"].ToString();
                }
                //apply process goes trough clients page for hits counting:
                srcvalue = string.IsNullOrEmpty(Request["src"]) ? string.Empty : Request["src"];
                string CountryID = Request.QueryString["countryid"] == null ? "1" : Request.QueryString["countryid"].ToString();

                string CANADAURL = ConfigurationManager.AppSettings["CanadaApplyURL"].ToString();

                if (CountryID == Location.CANADA && CANADAURL != "")
                {
                    ApplyURL = CANADAURL;
                }
                else
                {
                    ApplyURL = dt.Rows[0]["ApplyURL"].ToString() + "&src=" + Request["src"];
                }

                this.hApplyNow.Value = targetpage + "countryid=" + CountryID + "&url=" + HttpUtility.UrlEncode(ApplyURL);
                ViewState["pageTitle"] = pageTitle;
                ViewState["jobtitle"] = jobtitle;
            }
            else
            {
                Response.Redirect(ConfigurationManager.AppSettings["jobnotfoundredirectpage"] + "?nf=1");
            }

            returntoJobsearch.NavigateUrl = "jobsearch.aspx?" + Request.QueryString;

            string applyJobTitle = CleanJobTitle(dt.Rows[0]["JobTitle"].ToString());

            boanet_safebutton.writeBOASafeButton("Apply1", phApply1, "ApplyNow|*|" + applyJobTitle, Apply_Click_NoJS, this.Request, this.hApplyNow.Value);
            boanet_safebutton.writeBOASafeButton("Apply2", phApply2, "ApplyNow|*|" + applyJobTitle, Apply_Click_NoJS, this.Request, this.hApplyNow.Value);

            prepbuttons();

            //not ready For Pro Yet!! 
            TellaFriend.NavigateUrl = "Tell_a_friend.aspx?" + Request.QueryString;


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

                            bttnRemoveFromJobCart.Visible = true;
                            btnRemoveFromCart.Visible = true;
                            bttnAddToJobCart.Visible = false;
                            btnAddToCart.Visible = false;

                        }
                    }
                }

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
                        cmJobID = strJobID.Substring(0, 3) + parm.Substring(3);
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

    protected void BuildCorremetrixProductTag(string strJobID, string jobtitle)
    {

        string strScript = "";

        strScript = "<script language='javascript1.1' type='text/javascript'>" + System.Environment.NewLine;
        strScript += "//<!—" + System.Environment.NewLine;
        strScript += "cmCreatePageviewTag('career:Prod:Job_Search;JobDetails', null, null, 'career:Prod:Job_Search', false, false, null, false, false, null, null, '|job_" + strJobID + "|',null,null,null,null,null,'|job_"+strJobID+"|-_--_--_--_--_--_--_--_--_--_--_--_--_--_-', null, null, null);" + System.Environment.NewLine;
        strScript += "cmCreateProductviewTag('" + strJobID + "','" + jobtitle + "', 'career:Job_Search', null, false, false, null, false, null, null, false, null);" + System.Environment.NewLine;
        strScript += "//-->" + System.Environment.NewLine;
        strScript += "</script>" + System.Environment.NewLine;
        this.ltrlCorremetrixProductTag.Text = strScript;
    }

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


            if (linkedinjobdescriptionlength > 0 && lblDescripton.Text.Length > linkedinjobdescriptionlength)
            {
                hdnLinkedInJobDescription.Value = lblDescripton.Text.Substring(0, linkedinjobtitlelength);
            }
            else
            {
                hdnLinkedInJobDescription.Value = lblDescripton.Text;
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

    protected void Apply_Click(object sender, EventArgs e)
    {
        //Response.Redirect(this.hApplyNow.Value);
    }

    protected void Apply_Click_NoJS(object sender, EventArgs e)
    {       
        Response.Redirect(this.hApplyNow.Value);
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
        btnAddToCart.Visible = false;

        bttnRemoveFromJobCart.Visible = true;
        btnRemoveFromCart.Visible = true;

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
        btnAddToCart.Visible = true;
        bttnRemoveFromJobCart.Visible = false;
        btnRemoveFromCart.Visible = false;
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
		//Response.Redirect(bttnJobList.PostBackUrl);
    }

	private void prepbuttons()
	{
		returntoJobsearch.Attributes.Add("onfocus", "this.className='p-over';");
		returntoJobsearch.Attributes.Add("onblur", "this.className='p';");
        
        //not ready For Pro Yet!!
        TellaFriend.Attributes.Add("onfocus", "this.className='p-over';");
		TellaFriend.Attributes.Add("onblur", "this.className='p';");

		btnAddToCart.Attributes.Add("onfocus", "this.style.color='#0000FF';");
		btnAddToCart.Attributes.Add("onblur", "this.style.color='#405EBE';");
		btnAddToCart.Attributes.Add("onmouseover", "this.style.color='#0000FF';");
		btnAddToCart.Attributes.Add("onmouseout", "this.style.color='#405EBE';");
		btnAddToCart.Width = System.Web.UI.WebControls.Unit.Parse((btnAddToCart.Text.Length + 1).ToString() + "Ex");

		btnRemoveFromCart.Attributes.Add("onfocus", "this.style.color='#0000FF';");
		btnRemoveFromCart.Attributes.Add("onblur", "this.style.color='#405EBE';");
		btnRemoveFromCart.Attributes.Add("onmouseover", "this.style.color='#0000FF';");
		btnRemoveFromCart.Attributes.Add("onmouseout", "this.style.color='#405EBE';");
		btnRemoveFromCart.Width = System.Web.UI.WebControls.Unit.Parse((btnRemoveFromCart.Text.Length + 3).ToString() + "Ex");

		bsearch.Attributes.Add("onfocus", "this.style.color='#0000FF';");
		bsearch.Attributes.Add("onblur", "this.style.color='#405EBE';");
		bsearch.Attributes.Add("onmouseover", "this.style.color='#0000FF';");
		bsearch.Attributes.Add("onmouseout", "this.style.color='#405EBE';");
		bsearch.Width = System.Web.UI.WebControls.Unit.Parse((bsearch.Text.Length + 1).ToString() + "Ex");

		bttnAddToJobCart.Attributes.Add("onfocus", "this.style.color='#0000FF';");
		bttnAddToJobCart.Attributes.Add("onblur", "this.style.color='#405EBE';");
		bttnAddToJobCart.Attributes.Add("onmouseover", "this.style.color='#0000FF';");
		bttnAddToJobCart.Attributes.Add("onmouseout", "this.style.color='#405EBE';");
		bttnAddToJobCart.Width = System.Web.UI.WebControls.Unit.Parse((bttnAddToJobCart.Text.Length + 1).ToString() + "Ex");

		bttnRemoveFromJobCart.Attributes.Add("onfocus", "this.style.color='#0000FF';");
		bttnRemoveFromJobCart.Attributes.Add("onblur", "this.style.color='#405EBE';");
		bttnRemoveFromJobCart.Attributes.Add("onmouseover", "this.style.color='#0000FF';");
		bttnRemoveFromJobCart.Attributes.Add("onmouseout", "this.style.color='#405EBE';");
		bttnRemoveFromJobCart.Width = System.Web.UI.WebControls.Unit.Parse((bttnRemoveFromJobCart.Text.Length + 3).ToString() + "Ex");

		bsearchTop.Attributes.Add("onfocus", "this.style.color='#0000FF';");
		bsearchTop.Attributes.Add("onblur", "this.style.color='#405EBE';");
		bsearchTop.Attributes.Add("onmouseover", "this.style.color='#0000FF';");
		bsearchTop.Attributes.Add("onmouseout", "this.style.color='#405EBE';");
		bsearchTop.Width = System.Web.UI.WebControls.Unit.Parse((bsearchTop.Text.Length + 1).ToString() + "Ex");

		bttnRemoveFromJobCart.Visible = false;
		btnRemoveFromCart.Visible = false;

	}
    
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
    #endregion

}
