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

public partial class JobDetails : System.Web.UI.Page
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
 
	private string targetpage = string.Empty;

   

    protected void Page_Load(object sender, EventArgs e)
    {
		targetpage = ConfigurationManager.AppSettings["targetpage"];
		if (this.Request.UrlReferrer != null &&
		(this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("jobsearch.aspx") || this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("advancesearch.aspx")
			|| this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("jobdetails.aspx") || this.Request.UrlReferrer.ToString().ToLowerInvariant().Contains("tell_a_friend.aspx")))
		{
			returntoJobsearch.Visible=true;
		}

        Jobs Jobs = new Jobs();

        string countryid = Request["countryid"] == null ? "1" : Request["countryid"].ToString();
        string LocationId = Request["LocationID"] == null ? "0" : Request["LocationID"].ToString();
        string FeedName = Request["FeedName"] == null ? "" : Request["FeedName"].ToString();

        DataTable dt = Jobs.JobDetails(Request.QueryString["JobId"].ToString(), countryid, LocationId,FeedName);        
		if (dt.Rows.Count > 0)
		{
			strJobID = dt.Rows[0]["JobsId"].ToString();

            lblDescripton.Text = LinkBuilder(dt.Rows[0]["Description"].ToString(), "Description");
			lblJobTitle.InnerText = dt.Rows[0]["JobTitle"].ToString() + " : " + dt.Rows[0]["JobsId"].ToString();            
			lblLocation.Text = dt.Rows[0]["Location"].ToString();
			lblLocationFooter.Text = dt.Rows[0]["Location"].ToString();
            if (countryid == "1")
            {
                lblPartTimeFullTime.Text = dt.Rows[0]["FullPartTime"].ToString();
            }
            else
            {
                lblPartTimeFullTime.Text = dt.Rows[0]["EmploymentType"].ToString();
            }
			lblPostingDate.Text = dt.Rows[0]["PostingDate"].ToString();
			lblSchedule.Text = dt.Rows[0]["WeeklySchedule"].ToString();
			lblShift.Text = dt.Rows[0]["Shift"].ToString();
			lblTravel.Text = dt.Rows[0]["Travel"].ToString();
			lblUnpostingDate.Text = dt.Rows[0]["UnPostingDate"].ToString();
			lblLanguage.Text = dt.Rows[0]["Language"].ToString();
			lblJobFamily.Text = dt.Rows[0]["family"].ToString();
			lblHoursPerWeek.Text = dt.Rows[0]["HrsPerWeek"].ToString();
            lblQualification.Text = LinkBuilder(dt.Rows[0]["Qualification"].ToString(), "Qualification");
			//apply process goes trough clients page for hits counting:
			srcvalue = string.IsNullOrEmpty(Request["src"]) ? string.Empty : Request["src"];           
            string CountryID = Request.QueryString["countryid"] == null ? "1" : Request.QueryString["countryid"].ToString();

            string CANADAURL = ConfigurationManager.AppSettings["CanadaApplyURL"].ToString();

            if (CountryID == Location.CANADA && CANADAURL !="")
            {
                ApplyURL = CANADAURL;                
            }
            else
            {
                ApplyURL = dt.Rows[0]["ApplyURL"].ToString() + "&src=" + Request["src"];
            }

            this.hApplyNow.Value = targetpage + "countryid=" + CountryID + "&url=" + HttpUtility.UrlEncode(ApplyURL);            						
		}
		else
		{
			Response.Redirect(ConfigurationManager.AppSettings["jobnotfoundredirectpage"] + "?nf=1");
		}
       
        returntoJobsearch.NavigateUrl = "jobsearch.aspx?" + Request.QueryString;
        if (countryid != "1")
        {
            boanet_safebutton.writeBOASafeButton("Apply1", phApply1, "ApplyNow|*|" + dt.Rows[0]["JobTitle"].ToString(), Apply_Click_NoJS, this.Request, this.hApplyNow.Value);
            boanet_safebutton.writeBOASafeButton("Apply2", phApply2, "ApplyNow|*|" + dt.Rows[0]["JobTitle"].ToString(), Apply_Click_NoJS, this.Request, this.hApplyNow.Value);
        }
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
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        string feedname="";
        BOAFeedUSA.Visible = false;
        BOAFeedEuropeMBNA.Visible = false;
        BOAFeedEurope.Visible = false;
        BOAFeedCanadaFrench.Visible = false;
        BOAFeedCanada.Visible = false;
        BOAFeedAsia.Visible = false;
        BoaFeedIndia.Visible = false;

        if (!IsPostBack)
        {
            feedname = Request.QueryString["feedname"] == null ? "" : Request.QueryString["feedname"].ToString();
            ViewState["feedname"] = feedname;
        }
        else
        {
            feedname = ViewState["feedname"].ToString();
        }
        if(feedname.Contains("web05")){
                BOAFeedAsia.Visible = true;
        }
        else if(feedname.Contains("web06")){
            BOAFeedCanada.Visible = true;
        }
        else if (feedname.Contains("web01")){
                BoaFeedIndia.Visible = true;
        }
        else{
            switch (feedname)
                { 
                   // case  "BOAFeedAsia"         : BOAFeedAsia.Visible = true;break;
                    //case  "BOAFeedCanada"       : BOAFeedCanada.Visible = true; break;
                    case  "BOAFeedCanadaFrench" : BOAFeedCanadaFrench.Visible=true;break;
                    case  "BOAFeedEurope"       : BOAFeedEurope.Visible = true;break;
                    case  "BOAFeedEurope MBNA"  : BOAFeedEuropeMBNA.Visible = true ;break;
                   // case  "BOAFEEDIndia"        : BoaFeedIndia.Visible = true; break;
                   // case  "BOAFEEDUSA"          : BOAFeedUSA.Visible = true;break;
                    default                     : break;        
                }
         }

        Page.Title = Master.PageTitle + " | " + lblJobTitle.InnerText;
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
