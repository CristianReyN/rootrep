using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.SessionState;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.IO;
using System.Collections;
using System.Collections.Specialized;
using System.Text.RegularExpressions;
using CareerSiteComponents;


public partial class JobSearch : System.Web.UI.Page
{
    private int RecPerPage = 12;
    private string constring = ConfigurationManager.AppSettings["StrUdlFileName"];
    string BOAFeedName = "";

    private int _currPageIndex = 1;
    private int _maxPage = 9999;
    private SortDirection _sortDir = 0;

    private String _jobFamily;
    private String _jobType; //full time/partime
    private String _jobShift;
    private String _daterange;
    private String _country;
    private String _state;
    private String _city;
    private String _travel;
    private String _distance;
    private String _zipcode;
    private String _keyword;

    private String _pagenum = "-1";

    // Get career site Info from config file
    private CareerSiteSettings cs = Utility.GetCareerSiteSettings();
  
    private const string SESSION_USER_ID = "UserId";

    HttpSessionState session = HttpContext.Current.Session;

    protected void Page_Load(object sender, EventArgs e)
    {
   
        DateTime MaintenanceStartDate = DateTime.Parse(System.Configuration.ConfigurationManager.AppSettings["MaintenanceStartDate"].ToString());
        DateTime MaintenanceEndDate = DateTime.Parse(System.Configuration.ConfigurationManager.AppSettings["MaintenanceEndDate"].ToString());
        DateTime ATSUrlStartDate = DateTime.Parse(System.Configuration.ConfigurationManager.AppSettings["ATSUrlStartDate"].ToString());
        
         if (DateTime.Compare(MaintenanceStartDate, DateTime.Now) < 0 && DateTime.Compare(MaintenanceEndDate, DateTime.Now) > 0)
        {
            ManageYourProfile.HRef = System.Configuration.ConfigurationManager.AppSettings["MaintenancePage"].ToString();
            ImgMerchantServices.HRef = System.Configuration.ConfigurationManager.AppSettings["MaintenancePage"].ToString();
        }
        else
        {
            ManageYourProfile.HRef = "../overview/manage_your_profile.asp";
            ManageYourProfile.Target = "_blank";
            ImgMerchantServices.HRef = "--https://bacfhrs.taleo.net/careersection/10200/joblist.ftl?lang=en" ;
            ImgMerchantServices.Target ="_blank";
        }

        //New BAMS Taleo ATS URL
        if (DateTime.Compare(ATSUrlStartDate, DateTime.Now) > 0)
        {
            ImgMerchantServices.HRef = "https://bacfhrs.taleo.net/careersection/10200/joblist.ftl?lang=en" ;
            ImgMerchantServices.Target ="_blank";
        }
        else
        {
            ImgMerchantServices.HRef = "../learnmore/bams.asp" ;
            ImgMerchantServices.Target ="_blank";
        }
             
        //init hidden location value
        Statehidden.Value = State.SelectedItem.Value.Trim();
        if (Statehidden.Value == "All Locations") Statehidden.Value = "-1";

        //write the boa buttons
        
        boanet_safebutton.writeBOASafeButton("Previous", phPrevious, "Previous", LnkPrvs_Click, this.Request, "");
        boanet_safebutton.writeBOASafeButton("Next", phNext, "Next", LnkNxt_Click, this.Request, ""); 
        //

        lnkJobCart.Attributes.Add("onblur", "this.className='p';");
        lnkJobCart.Attributes.Add("onfocus", "this.className='p-over';");

        // Initialize search fields
        initSearchFields();
        
        // Get form field values and assign them to variables
        getSearchFieldValues();

        lblMessage.Text = "";
        if (!this.IsPostBack)
        {
            //BOAFeedname should be blank unless it is canada and french pages
            BOAFeedName = Request.QueryString["BOAFeedName"] == null ? "" : Request.QueryString["BOAFeedName"].ToString();
            ViewState["BOAFeedName"] = BOAFeedName;

            PopulateCountries();
            PopulateLocations();
            PopulateCity();
            //PopulateOtherLists();
            PopulateJobFamily();

            //BindSearchString();
            if (Country.SelectedValue == Location.ALL_COUNTRIES)
            {
                Country.AutoPostBack = false;
                PnlFilter.Visible = false;
                PnlResults.Visible = false;
                BtnSearch.Visible = false;
            }
            else
            {
                PnlFilter.Visible = true;
                PnlResults.Visible = true;
                BtnBegin.Visible = false;
                ViewState["PageNumber"] = 1;
                funAdvSearch(0);
            }

            // Save view state for sort and page position
            LoadViewState();  // get any pre-existing sort order
            zcrGridView1.PageIndex = 1;
            jobListGridView1.PageIndex = 1;
            SaveViewState();
            
        }
        else
        {

            if (ViewState["BOAFeedName"] != null)
            {
                BOAFeedName = ViewState["BOAFeedName"].ToString();
            }

        }

        ViewState["jobareas"] = ddlJobAreas.SelectedValue;
        
        PopulateJobAreas();

        //postback only if location has been changed:
        this.State.Attributes.Add("onblur", "javascript:if(document." + this.Form.ClientID + "." + this.Statehidden.ClientID + ".value!=document." + this.Form.ClientID + "." + State.ClientID + ".options[document." + this.Form.ClientID + "." + State.ClientID.Replace("$", "_") + ".selectedIndex].value) {setTimeout('__doPostBack(\\'" + this.State.ClientID.Replace("_", "$") + "\\',\\'\\')', 0);}");
        //this.State.Attributes.Add("onblur", "javascript:setTimeout('__doPostBack(\\'" + this.State.ClientID.Replace("_", "$") + "\\',\\'\\')', 0)");                          

        

    }
    protected void Page_LoadComplete()
    {
        if (State.SelectedItem.Value != "-1") this.City.Focus();            
    }


    public void Page_PreRender(object sender, EventArgs e)
    {
        string DisplayCanadaJobs = ConfigurationManager.AppSettings["DisplayCanadaJobs"].ToString();
        string Instructions = "To find a career suited to your skill set, begin by selecting a country from the list below. Then you may narrow your selection further by choosing additional search criteria and/or entering keywords.";
        string USOnlyInstructions = @"Begin your career search by selecting a country.  You may then narrow your search further, by entering additional search criteria or keywords.</br></br>Note:  City search options are limited to areas with current available job opportunities, which change constantly. Results are specific to the single city you select, and do not include results for nearby locations. <a href='#'  target='_blank' onclick=""javascript:window.open('overview/chelp.html','mywin','left=200px,top=180px,width=625,height=345,resizable=0');return false;"" class='p'>Learn more<span class='hidden'> Link opens a new window</span></a>";
        if (Country.SelectedValue == Location.USA)
        {
            PnlUSJobsContent.Visible = true;
            PnlCanada.Visible = false;
            tdInstructions.Text = USOnlyInstructions;
            banc.Visible = true;
        }
        else if (Country.SelectedValue == Location.CANADA && DisplayCanadaJobs.ToLower() == "false")
        {
            PnlUSJobsContent.Visible = false;
            PnlResults.Visible = false;
            PnlFilter.Visible = false;
            PnlCanada.Visible = true;
            BtnBegin.Visible = false;
            BtnSearch.Visible = false;
            tdInstructions.Text = Instructions;
            banc.Visible = false;
        }
        else
        {
            PnlUSJobsContent.Visible = false;
            PnlCanada.Visible = false;
            banc.Visible = false;
           
            tdInstructions.Text = Instructions;
            
        }
        
    }

    protected void previous_page_Click(object sender, EventArgs e)
    {
        try
        {
            LoadViewState();

            _currPageIndex = getPageIndex() - 1;
            if (_currPageIndex < 1) _currPageIndex = 1;

            setPageIndex(_currPageIndex);

            // Save view state for sort and page position
            SaveViewState();

            // Assign search values to job list grid
            //assignJobListValues();

            // Manage Paging 
            //ManagePaging();
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }
    }


    protected void next_page_Click(object sender, EventArgs e)
    {
        try
        {
            LoadViewState();

            _currPageIndex = getPageIndex() + 1;
            if (_currPageIndex > _maxPage) _currPageIndex = _maxPage;

            setPageIndex(_currPageIndex);

            // Save view state for sort and page position
            SaveViewState();

            // Assign search values to job list grid
            //assignJobListValues();

            // Manage Paging 
            //ManagePaging();
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }
    }

    private object SetDataSource()
    {
        object ds = (_distance != "-1" ? this.zcrGridView1.DataSource : this.jobListGridView1.DataSource);
        return ds;
    }

    protected void assignJobListValues()
    {

        // Check to see if the user is searching by ZipCode or Location
        if (_distance != "-1")
        {
            // Do Zip Code Radius assignement and get records
            this.assignJobListValuesZCR();
            this.zcrGridView1.GetRecords();
        }
        else
        {
            // Do Job List custom field assignement and get records

            this.assignJobListValuesLocation();
            this.jobListGridView1.GetRecords();
        }

        // Bind DataSource to "gv" GridView (gridview displayed in ASCX file)
        GrdResults.DataSource = SetDataSource();
        GrdResults.DataBind();
    }


    protected void assignJobListValuesZCR()
    {

        zcrGridView1.MaskedHiringOrgId = cs.MaskedHiringOrgId;
        zcrGridView1.EMediaId = cs.EMediaId;
        zcrGridView1.RecordsPerPage = cs.DefaultPageSize;

        // Get Question ID values for custom fields used for searching
        // and possible display in the job list
        int travelQId = cs.RetrieveTagValueQuestionId("Travel");
        int jobFamilyQId = cs.RetrieveTagValueQuestionId("JobFamily");
        int jobTypeQId = cs.RetrieveTagValueQuestionId("FTPT");
        int jobShiftQId = cs.RetrieveTagValueQuestionId("Shift");

        // Build comma seperated list of the custom fields to be displayed
        // in the job list
        zcrGridView1.QuestionIdList = string.Format("{0},{1}", travelQId, jobTypeQId);

        // Assign custom fields to be used for searching
        zcrGridView1.QuestionId1 = travelQId;
        zcrGridView1.QuestionId1AnswerIds = _travel;

        zcrGridView1.QuestionId2 = jobTypeQId;
        zcrGridView1.QuestionId2AnswerIds = _jobType;

        /*zcrGridView1.QuestionId2 = businessAreaQId;
        zcrGridView1.QuestionId2AnswerIds = _businessArea;

        zcrGridView1.QuestionId3 = jobTypeQId;
        zcrGridView1.QuestionId3AnswerIds = _jobType;

        zcrGridView1.QuestionId4 = clearanceQId;
        zcrGridView1.QuestionId4AnswerIds = _clearance;

        zcrGridView1.QuestionId5 = portalQId;
        zcrGridView1.QuestionId5AnswerIds = _campusOnly;
        */

        // Assign zip/radius values used for searching
        if (_distance != null)
        {
            zcrGridView1.Radius = System.Convert.ToInt32(string.IsNullOrEmpty(_distance));
        }
        zcrGridView1.ZipCode = _zipcode;

        // Assign keyword values used for searching
        zcrGridView1.Keywords = _keyword;

        // Assign Daterange / Age search criteria
        zcrGridView1.Age = Convert.ToInt32(_daterange);

        // Assign category value
        //zcrGridView1.CategoryIds = _category;

        // If not a postback AND _pagenum has a value then make it 
        // the current page
        if (!IsPostBack && Convert.ToInt32(_pagenum) > 0)
        {
            zcrGridView1.PageIndex = Convert.ToInt32(_pagenum);
            SaveViewState();
        }


    }

    protected void assignJobListValuesLocation()
    {

        jobListGridView1.MaskedHiringOrgId = cs.MaskedHiringOrgId;
        jobListGridView1.EMediaId = cs.EMediaId;
        jobListGridView1.RecordsPerPage = cs.DefaultPageSize;

        // Get Question ID values for custom fields used for searching
        // and possible display in the job list
        int travelQId = cs.RetrieveTagValueQuestionId("Travel");
        int jobFamilyQId = cs.RetrieveTagValueQuestionId("JobFamily");
        int jobTypeQId = cs.RetrieveTagValueQuestionId("FTPT");
        int jobShiftQId = cs.RetrieveTagValueQuestionId("Shift");

        // Build comma seperated list of the custom fields to be displayed
        // in the job list
        jobListGridView1.QuestionIdList = string.Format("{0},{1}", travelQId, jobTypeQId);

        // Assign custom fields to be used for searching
        jobListGridView1.QuestionId1 = travelQId;
        jobListGridView1.QuestionId1AnswerIds = _travel;

        jobListGridView1.QuestionId2 = jobTypeQId;
        jobListGridView1.QuestionId2AnswerIds = _jobType;
       

        // Assign country/stte/city values used for searching
        jobListGridView1.CountryIds = _country;
        jobListGridView1.StateIds = _state;
        jobListGridView1.CityIds = _city;

        // Assign keyword values used for searching
        jobListGridView1.Keywords = _keyword;

        // Assign Daterange / Age search criteria
        //jobListGridView1.Age = Convert.ToInt32(_daterange);

        // Assign category value
        //jobListGridView1.CategoryIds = _category;

        // If not a postback AND _pagenum has a value then make it 
        // the current page
        if (!IsPostBack && Convert.ToInt32(_pagenum) > 0)
        {
            jobListGridView1.PageIndex = Convert.ToInt32(_pagenum);
            SaveViewState();
        }


    }

    private void LoadViewState()
    {
        try
        {
            if (_distance != "-1")
            {
                if (ViewState["pageIndex"] != null) this.zcrGridView1.PageIndex = (int)ViewState["pageIndex"];

                // Load sort order from Session *not* ViewState          
                if (Session["orderByColumn"] != null) this.zcrGridView1.OrderByColumn = Session["orderByColumn"].ToString();
                if (Session["orderByDirection"] != null) this.zcrGridView1.OrderByDirection = (SortDirection)Session["orderByDirection"];
            }
            else
            {
                if (ViewState["pageIndex"] != null) this.jobListGridView1.PageIndex = (int)ViewState["pageIndex"];

                // Load sort order from Session *not* ViewState          
                if (Session["orderByColumn"] != null) this.jobListGridView1.OrderByColumn = Session["orderByColumn"].ToString();
                if (Session["orderByDirection"] != null) this.jobListGridView1.OrderByDirection = (SortDirection)Session["orderByDirection"];
            }
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }
    }


    protected void gv_Sorting(object sender, GridViewSortEventArgs e)
    {


        // Toggle sort direction
        if (Session["orderByDirection"] != null && (SortDirection)Session["orderByDirection"] == SortDirection.Ascending)
        {
            _sortDir = SortDirection.Descending;
        }
        else
        {
            _sortDir = SortDirection.Ascending;
        }


        if (_distance != "-1")
        {
            zcrGridView1.OrderByColumn = e.SortExpression;
            zcrGridView1.OrderByDirection = _sortDir;

            // Page gets reset to 1 when doing a sort
            zcrGridView1.PageIndex = 1;

        }
        else
        {
            jobListGridView1.OrderByColumn = e.SortExpression;
            jobListGridView1.OrderByDirection = _sortDir;

            // Page gets reset to 1 when doing a sort
            jobListGridView1.PageIndex = 1;

        }

        // Save Sort order view state
        SaveViewState();

        // Assign search values to job list grid and get the records
        assignJobListValues();

        // Manage Paging 
        //ManagePaging();
    }

    protected void initSearchFields()
    {

        // Populate search field dropdowns
        // Populate Travel ddl
        /*Country.MaskedHiringOrgId = cs.MaskedHiringOrgId;
        Country.EMediaId = cs.EMediaId;
        Country.DataBind();*/
        
        travel.MaskedHiringOrgId = cs.MaskedHiringOrgId;
        travel.QuestionId = cs.RetrieveTagValueQuestionId("Travel");
        travel.DataBind();
        travel.Items.Insert(0, new ListItem("All travel", "-1"));

        shift.MaskedHiringOrgId = cs.MaskedHiringOrgId;
        shift.QuestionId = cs.RetrieveTagValueQuestionId("Shift");
        shift.DataBind();
        shift.Items.Insert(0, new ListItem("All shifts", "-1"));

        fullpart.MaskedHiringOrgId = cs.MaskedHiringOrgId;
        fullpart.QuestionId = cs.RetrieveTagValueQuestionId("FTPT");
        fullpart.DataBind();
        fullpart.Items.Insert(0, new ListItem("All", "-1"));

    }

    protected void getSearchFieldValues()
    {

        if (!IsPostBack)
        {

            // Grab search values from URL 

            _travel = string.IsNullOrEmpty(Request["travel"]) ? "-1" : Request["travel"];
            _jobFamily = string.IsNullOrEmpty(Request["ddlJobAreas"]) ? "-1" : Request["ddlJobAreas"];
            _jobType = string.IsNullOrEmpty(Request["fullpart"]) ? "-1" : Request["fullpart"];
            _jobShift = string.IsNullOrEmpty(Request["shift"]) ? "" : Request["shift"];
            _daterange = string.IsNullOrEmpty(Request["datepost"]) ? "" : Request["datepost"];

            _country = string.IsNullOrEmpty(Request["country"]) ? "-1" : Request["country"];
            _state = string.IsNullOrEmpty(Request["state"]) ? "-1" : Request["state"];
            _city = string.IsNullOrEmpty(Request["city"]) ? "-1" : Request["city"];
            _keyword = string.IsNullOrEmpty(Request["keyword"]) ? "" : Request["keyword"];

            _distance = string.IsNullOrEmpty(Request["ddlRadius"]) ? "-1" : Request["ddlRadius"];
            _zipcode = string.IsNullOrEmpty(Request["txtZipCode"]) ? "Zip Code" : Request["txtZipCode"];

            _keyword = string.IsNullOrEmpty(Request["keywords"]) ? "Keyword or ID" : Request["keyword"];

            // If this job search was called by the social job matcher "mini" search then
            // it passed the location over as "c" - so if "c" is a parameter 
            // passed in as part of the query string then use that, replacing
            // any prior value you had for country, state, and city
            if (!string.IsNullOrEmpty(Request["c"]))
            {

                // "c" is a comma seperated string with 3 values, so split them out
                var arrLocation = Request["c"].ToString().Split(',');

                // Assign city/state/country values
                _city = arrLocation[0];
                _state = arrLocation[1];
                _country = arrLocation[2];
            }


        }
        else
        {
            // If this was a post back then get values from 
            // current form Elements on page

            _travel = string.IsNullOrEmpty(Request["travel"]) ? "-1" : Request["travel"];
            //_travel = Utility.getListBoxSelectedValues(travel);
            _jobShift = Utility.getListBoxSelectedValues(shift);
            _jobType = Utility.getListBoxSelectedValues(fullpart);
            _daterange = datepost.SelectedValue;

            _country = Country.SelectedValue;
            _state = State.SelectedValue;
            _city = City.SelectedValue;
            _distance = ddlRadius.SelectedValue;
            _zipcode = txtZipCode.Text.ToString().Trim();

            _keyword = keywords.Text.ToString().Trim();
        }

    }

  
    protected void ManagePaging()
    {
        // Get maximum page count
        _maxPage = getPageCount();
        _currPageIndex = getPageIndex();

        // Hide/Show "Previous" link
        previous_page.Visible = true;
        if (_currPageIndex <= 1) previous_page.Visible = false;

        // Update page navigation text
        int maxRows = getMaxRows();
        int RecPerPage = getRecordsPerPage();
        int startJobCnt = ((_currPageIndex - 1) * RecPerPage) + 1;
        int endJobCnt = (_currPageIndex) * (RecPerPage);
        if (_currPageIndex == _maxPage) endJobCnt = maxRows;

        paging_text.Text = "Jobs " + startJobCnt.ToString() + " - " + endJobCnt.ToString() + " of " + maxRows.ToString();

        // Hide/Show "Next" link
        next_page.Visible = true;
        if (_currPageIndex >= _maxPage) next_page.Visible = false;

        // If no pages then display status message
        StatusMsg.Text = "";
        StatusMsg.Visible = false;
        if (_maxPage == 0)
        {
            StatusMsg.Text = "<br class='clear' /><p>We do not have a position which matches your search. Please try changing your search parameters to find the position you desire.</p>";
            StatusMsg.Visible = true;

            // Hide JobListContainer so column titles, background images,
            // etc. do not show
            //JobListContainer.Visible = false;
        }
        else
        {
            StatusMsg.Text = "";
            StatusMsg.Visible = false;

            //JobListContainer.Visible = true;
        }

        // If there is only one page hide next and prev buttons and change message
        if (_maxPage <= 1)
        {
            this.JobListPaging.Visible = true;

            previous_page.Visible = false;

            next_page.Visible = false;

            paging_text.Text = maxRows.ToString() + " Job(s) Found";

        }

    }

    private int getMaxRows()
    {

        int maxRows = 0;

        try
        {
            if (_distance != "-1")
            {
                maxRows = zcrGridView1.RowCount;
            }
            else
            {
                maxRows = jobListGridView1.RowCount;
            }
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }

        return maxRows;
    }

    private int getRecordsPerPage()
    {

        int RecPerPage = 0;

        try
        {
            if (_distance != "-1")
            {
                RecPerPage = zcrGridView1.RecordsPerPage;
            }
            else
            {
                RecPerPage = jobListGridView1.RecordsPerPage;
            }
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }

        return RecPerPage;
    }

    public int getPageIndex()
    {

        int intPageIndex = GrdResults.PageIndex;

        try
        {
            if (_distance != "-1")
            {
                intPageIndex = zcrGridView1.PageIndex;
            }
            else
            {
                intPageIndex = jobListGridView1.PageIndex;
            }
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }

        return intPageIndex;
    }


    private void setPageIndex(int intPageIndex)
    {
        try
        {
            if (_distance != "-1")
            {
                zcrGridView1.PageIndex = intPageIndex;
            }
            else
            {
                jobListGridView1.PageIndex = intPageIndex;
            }
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }
    }

    private int getPageCount()
    {

        int intPageCount = GrdResults.PageCount;

        try
        {
            if (_distance != "-1")
            {
                intPageCount = zcrGridView1.PageCount;
            }
            else
            {
                intPageCount = jobListGridView1.PageCount;
            }
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }

        return intPageCount;
    }
    
   /*
    public void BindSearchString()
    {
        ListItem MyListItem;
        string MyValue;
        string[] MyMultiValue = null;
        
        MyValue = String.IsNullOrEmpty(Request.QueryString["countryid"]) == false ? Request.QueryString["countryid"] : Location.ALL_COUNTRIES;
        string country = string.IsNullOrEmpty(Request.QueryString["country"]) == false ? Request.QueryString["country"].ToString().ToLower().Replace(" ","") : "";

        if (MyValue != Location.ALL_COUNTRIES)
        {
            MyListItem = Country.Items.FindByValue(MyValue);
            if (MyListItem != null)
            {
                Country.ClearSelection();
                MyListItem.Selected = true;
            }
        }
        else if (country != "")
        {
            foreach (ListItem it in Country.Items)
            {
                if (it.Text.ToLower().Replace(" ","") == country)
                {
                    it.Selected = true;
                    break;
                }
            }
        }
        else
        {
            Country.SelectedValue = Location.ALL_COUNTRIES;//==0
        }

        if (Country.SelectedValue != Location.USA && Country.SelectedValue != Location.ALL_COUNTRIES)
        {
            PopulateInternationalCity();

            MyValue = String.IsNullOrEmpty(Request.QueryString["internationalcityid"]) == false ? Request.QueryString["internationalcityid"] : "";
            string internationalcity = string.IsNullOrEmpty(Request.QueryString["internationalcity"]) == false ? Request.QueryString["internationalcity"].ToString().ToLower().Replace(" ","") : "";

            if (MyValue != "")
            {
                MyListItem = InternationalCity.Items.FindByValue(MyValue);
                if (MyListItem != null)
                {
                    MyListItem.Selected = true;
                }
            }
            else if (internationalcity != "")
            {
                foreach (ListItem it in InternationalCity.Items)
                {
                    if (it.Text.ToLower().Replace(" ", "") == internationalcity)
                    {
                        it.Selected = true;
                        break;
                    }
                }
            }

            else
            {
                InternationalCity.SelectedValue = "-1";
            }


            MyValue = String.IsNullOrEmpty(Request.QueryString["jobfamilyid"]) == false ? Request.QueryString["jobfamilyid"] : "";
            string jobfamily = String.IsNullOrEmpty(Request.QueryString["jobfamily"]) == false ? Request.QueryString["jobfamily"].ToLower().Replace(" ","") : "";

            if (MyValue != "")
            {
                MyListItem = ddlJobFamily.Items.FindByValue(MyValue);
                if (MyListItem != null)
                {
                    MyListItem.Selected = true;
                }
            }
            else if (jobfamily != "")
            {
                foreach (ListItem it in ddlJobFamily.Items)
                {
                    if (it.Text.ToLower().Replace(" ", "") == jobfamily)
                    {
                        it.Selected = true;
                        break;
                    }
                }
            }
            else
            {
                ddlJobFamily.SelectedValue = "-1";
            }
        }
        else if(Country.SelectedValue == Location.USA)
        {

            MyValue = String.IsNullOrEmpty(Request.QueryString["stateid"]) == false ? Request.QueryString["stateid"] : "-1";
            MyListItem = State.Items.FindByValue(MyValue);
            if (MyListItem != null)
                MyListItem.Selected = true;
            if (MyValue.ToString() != "-1")
            {
                FilterCity(Convert.ToInt32(MyValue));
                City.Visible = true;
                City.Enabled = true;
            }

            MyListItem = City.Items.FindByValue(String.IsNullOrEmpty(Request.QueryString["cityid"]) == false ? Request.QueryString["cityid"] : "-1");
            if (MyListItem != null)
                MyListItem.Selected = true;

            MyListItem = travel.Items.FindByValue(String.IsNullOrEmpty(Request.QueryString["travel"]) == false ? Request.QueryString["travel"] : "-1");
            if (MyListItem != null)
                MyListItem.Selected = true;

            MyValue = String.IsNullOrEmpty(Request.QueryString["fullpart"]) == false ? Request.QueryString["fullpart"] : "-1";
            MyMultiValue = MyValue.Split(",".ToCharArray());
            foreach (string s in MyMultiValue)
            {
                MyListItem = fullpart.Items.FindByValue(s);
                if (MyListItem != null)
                    MyListItem.Selected = true;
            }

            MyValue = String.IsNullOrEmpty(Request.QueryString["shift"]) == false ? Request.QueryString["shift"] : "-1";
            MyMultiValue = MyValue.Split(",".ToCharArray());
            foreach (string s in MyMultiValue)
            {
                MyListItem = shift.Items.FindByValue(s); if (MyListItem != null)
                    MyListItem.Selected = true;
            }

            MyValue = String.IsNullOrEmpty(Request.QueryString["lang"]) == false ? Request.QueryString["lang"] : "-1";
            MyMultiValue = MyValue.Split(",".ToCharArray());
            foreach (string s in MyMultiValue)
            {
                MyListItem = lang.Items.FindByValue(s);
                if (MyListItem != null)
                    MyListItem.Selected = true;
            }

            MyListItem = datepost.Items.FindByValue(String.IsNullOrEmpty(Request.QueryString["datepost"]) == false ? Request.QueryString["datepost"] : "-1");
            if (MyListItem != null)
                MyListItem.Selected = true;
        }

        keywords.Text = String.IsNullOrEmpty(Request.QueryString["keywords"]) == false ? Request.QueryString["keywords"] : "";
       
        UpdateFilter();
    }
    */
    
    public void funAdvSearch(int iFrom)
    {
        if (Country.SelectedValue == Location.USA)
        {
            funAdvSearchUS(iFrom);
        }
        else
        {
            funAdvSearchInternational(iFrom);
        }
    
    }

    public void funAdvSearchInternational(int iFrom)
    {
        string LocationID = InternationalCity.SelectedValue;
        string JobFamilyID = ddlJobFamily.SelectedValue;
        string keywrd = keywords.Text;

        if (ViewState["strRec"] == null)
        {
            ViewState["strRec"] = 1;
            ViewState["endRec"] = 12;
        }

        if (iFrom == 0) // Reset | ReSearch
        {
            ViewState["MysortDirection"] = null;
            ViewState["sortExpression"] = null;
        }


        Jobs Job = new Jobs();
        ListDictionary MyListDictionary = new ListDictionary();
        MyListDictionary = Job.AdvSearch_ListDictionaryInternational(Country.SelectedValue, LocationID, keywrd, JobFamilyID, (int)(ViewState["PageNumber"]), RecPerPage, (string)ViewState["sortExpression"], (string)ViewState["MysortDirection"], BOAFeedName,InternationalCity.SelectedItem.Text);
        DataTable DT = (DataTable)MyListDictionary["JobSearchResults"];

        FilterJobSearch(iFrom, DT, MyListDictionary);



    }
    
    
    public void funAdvSearchUS(int iFrom)
    {
        int state = -1;
        int city = -1;
        string keywrd = "";
        string fullPart = "";
        int Travel = -1;
        string Lang = "";
        string Shift = "";
        int PostDate = -1;

        // Assign search values to job list grid and get the records
        assignJobListValues();
        
        // Manage Paging 
        ManagePaging();

        string[] aja = { "-1", "-1" };
        if (ddlJobAreas.SelectedValue != "-1" & ddlJobAreas.SelectedValue != string.Empty)
        {
            aja = ddlJobAreas.SelectedValue.Split("|".ToCharArray());
        }
        else if (!string.IsNullOrEmpty(Request.QueryString["jobareas"]))
        {
            aja = Request.QueryString["jobareas"].Split("|".ToCharArray());
        }
        int aot = (aja[0] == null) ? -1 : Convert.ToInt32(aja[0]);
        string jf = string.IsNullOrEmpty(aja[1].ToString()) ? "" : aja[1];

        foreach (ListItem li in fullpart.Items)
        {
            if (li.Selected)
            {
                fullPart += li.Value + ",";
            }
        }

        state = string.IsNullOrEmpty(State.SelectedValue) ? -1 : Convert.ToInt32(State.SelectedValue);

        city = string.IsNullOrEmpty(City.SelectedValue) ? -1 : Convert.ToInt32(City.SelectedValue);

        foreach (ListItem li in shift.Items)
        {
            if (li.Selected)
            {
                Shift += li.Value + ",";
            }
        }

        foreach (ListItem li in lang.Items)
        {
            if (li.Selected)
            {
                Lang += li.Value + ",";
            }
        }

        Travel = string.IsNullOrEmpty(travel.SelectedValue) ? -1 : Convert.ToInt32(travel.SelectedValue);
        PostDate = string.IsNullOrEmpty(travel.SelectedValue) ? -1 : Convert.ToInt32(datepost.SelectedValue);
        keywrd = keywords.Text;
        if (ViewState["strRec"] == null)
        {
            ViewState["strRec"] = 1;
            ViewState["endRec"] = 12;
        }             

        if (iFrom == 0) // Reset | ReSearch
        {
            ViewState["MysortDirection"] = null;
            ViewState["sortExpression"] = null;
        }


        Jobs Job = new Jobs();
        ListDictionary MyListDictionary = new ListDictionary();
        MyListDictionary = Job.AdvSearch_ListDictionary(aot, jf, state, city, Travel, Lang, fullPart, Shift, PostDate, keywrd, (int)(ViewState["PageNumber"]), RecPerPage, (string)ViewState["sortExpression"], (string)ViewState["MysortDirection"]);
        DataTable DT = (DataTable)MyListDictionary["JobSearchResults"];

        FilterJobSearch(iFrom, DT, MyListDictionary);
    }

    private void FilterJobSearch(int iFrom, DataTable DT, ListDictionary MyListDictionary)
    {

        foreach (DataControlField c in GrdResults.Columns)
        {
           
            //Set all column headers as bold!!! | Remove all images!!!
            if (!c.HeaderText.Contains("<span title=")) 
            {
                if (c.HeaderText.Contains("Title")) { c.HeaderText = "<span title='Sort by job title in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
                if (c.HeaderText.Contains("Location")) { c.HeaderText = "<span title='Sort by location in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
                if (c.HeaderText.Contains("Date")) { c.HeaderText = "<span title='Sort by date in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
                if (c.HeaderText.Contains("Job Family")) { c.HeaderText = "<span title='Sort by job family in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
            }
            if (iFrom != 1)
            {
                c.HeaderText = c.HeaderText.Replace(" <img src='images/upArrow.gif' border='0'>", String.Empty);
                c.HeaderText = c.HeaderText.Replace(" <img src='images/dnArrow.gif' border='0'>", String.Empty);
            }
            if (iFrom == 2)
            {
                //Assign proper image to proper column
                if (c.SortExpression == (string)ViewState["sortExpression"])
                {
                    if ((string)ViewState["MysortDirection"] == " ASC")
                    { c.HeaderText += " <img src='images/upArrow.gif' border='0'>"; }
                    if ((string)ViewState["MysortDirection"] == " DESC")
                    { c.HeaderText += " <img src='images/dnArrow.gif' border='0'>"; }
                }     
            }

            if (c.HeaderText.ToLower().Replace(" ", "").Contains("jobfamily"))
            {
                if (Country.SelectedValue == Location.USA)
                {
                    c.Visible = false;
                }
                else
                {
                    c.Visible = true;
                }
            }

            if (c.HeaderText.ToLower().Replace(" ", "").Contains("date"))
            {
                if (Country.SelectedValue == Location.USA)
                {
                    c.Visible = true;
                }
                else
                {
                    c.Visible = false;
                }
            }
           
        }

        if (iFrom == 0) // Reset | ReSearch
        {
            GrdResults.DataSource = DT;
            GrdResults.DataBind();
        }
        else if (iFrom == 1) // from Next | Previous
        {            
            DataView dv = new DataView(DT);
            dv.Sort = (string)ViewState["sortExpression"] + (string)ViewState["MysortDirection"];
            GrdResults.DataSource = dv;
            GrdResults.DataBind();
            GrdResults.PageIndex = (int)ViewState["PageNumber"];
        }
        else if (iFrom == 2) // from Sort(GrdResults_OnSorting)
        {
            DataView dv = new DataView(DT);
            dv.Sort = (string)ViewState["sortExpression"] + (string)ViewState["MysortDirection"];
            GrdResults.DataSource = dv;
            GrdResults.DataBind();
            GrdResults.PageIndex = 0;
        }    

        this.divNext.Attributes["style"] = ((Boolean)MyListDictionary["NextButton"]) ? " display: inline;" : " display: none;";
        this.divPrev.Attributes["style"] = ((Boolean)MyListDictionary["PrevButton"]) ? " display: inline;" : " display: none;";
        LblPageOfPages.Text = MyListDictionary["PageOfPages"].ToString();
        this.lblJobofJobs.Visible = Convert.ToBoolean(MyListDictionary["RecordCount"]);
        this.lblJobofJobs.Text = MyListDictionary["JobToJobs"].ToString();
        
    }

    #region  (¯`·.¸(¯`·.¸  Sorting Mechanizm Is Here ¸.·´¯)¸.·´¯) 

    protected void GrdResults_OnSorting(object sender, GridViewSortEventArgs e)
    {
        ViewState["PageNumber"] = 1;
        string sortExpression = e.SortExpression;
        ViewState["sortExpression"] = sortExpression;
        if (GridViewSortDirection == SortDirection.Ascending)
        {
            GridViewSortDirection = SortDirection.Descending;            
            ViewState["MysortDirection"] = " DESC";
        }
        else
        {
            GridViewSortDirection = SortDirection.Ascending;            
            ViewState["MysortDirection"] = " ASC";
        }
        //funAdvSearch(2);
    }

    public SortDirection GridViewSortDirection
    {
        get
        {
            if (ViewState["sortDirection"] == null)
                ViewState["sortDirection"] = SortDirection.Descending;
            return (SortDirection)ViewState["sortDirection"];
        }
        set { ViewState["sortDirection"] = value; }
    }

    #endregion

    protected void bsearch_Click(object sender, EventArgs e)
    {       
            ViewState["PageNumber"] = 1;
            funAdvSearch(0);
            PnlResults.Visible = true;     
    }


    protected void display_filter(object sender, EventArgs e)
    {
        if (Country.SelectedValue != Location.ALL_COUNTRIES)
        {          
            PnlFilter.Visible = true;
            BtnSearch.Visible = true;
            BtnBegin.Visible = false;
        }
        else
        {          
            PnlFilter.Visible = false;
            BtnSearch.Visible = false;
            BtnBegin.Visible = true;
        }
     
    }


    protected void LnkNxt_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) + 1;
        funAdvSearch(1);
    }

    protected void LnkPrvs_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) - 1;
        funAdvSearch(1);
    }


    protected void PopulateCountries()
    {
        Location Lo = new Location();
        OleDbDataReader dr;
        Country.DataTextField = "country";
        Country.DataValueField = "countryid";
        dr = Lo.CountryDR();
        Country.DataSource = dr;
        Country.DataBind();      
        dr.Close();

        Country.Items.Insert(0,new ListItem("Select a country", Location.ALL_COUNTRIES));
        Country.Items.Insert(1, new ListItem("United States", Location.USA));

        Country.Attributes.Add("onclick", "if(this.selectedIndex == 0) this.selectedIndex = 1;");
        Country.Attributes.Add("onfocus", "if(this.selectedIndex == 0) this.selectedIndex = 1;");

    }

    protected void PopulateLocations()
    {
        Location Lo = new Location();
        OleDbDataReader dr;
        State.DataTextField = "State";
        State.DataValueField = "Stateid";
        dr = Lo.StateDR();
        State.DataSource = dr;
        State.DataBind();
        State.Items.Insert(0, new ListItem("All states", "-1"));
        dr.Close();
    }

    protected void PopulateCity()
    {
        Location Lo = new Location();
        OleDbDataReader dr;
        City.Items.Clear();
        City.DataTextField = "City";
        City.DataValueField = "Cityid";
        dr = Lo.StatewiseCityDR(1);
        City.DataSource = dr;
        City.DataBind();
        City.Items.Insert(0, new ListItem("All cities", "-1"));
        dr.Close();
    }

    protected void PopulateInternationalCity()
    {
        InternationalCity.Items.Clear();

        Location Lo = new Location();
        InternationalCity.DataTextField = "City";
        InternationalCity.DataValueField = "LocationID";
        DataTable dt = Lo.CountrywiseCity(Country.SelectedValue);
        InternationalCity.DataSource = dt;
        InternationalCity.DataBind();
        InternationalCity.Items.Insert(0, new ListItem("All cities", "-1"));

    }
    /*
    protected void PopulateOtherLists()
    {
        OleDbDataReader dr;
        Jobs Job = new Jobs();
        travel.DataTextField = "Travel";
        travel.DataValueField = "TravelID";
        dr = Job.TravelDR();
        travel.DataSource = dr;
        travel.DataBind();
        travel.Items.Insert(0, new ListItem("All travel", "-1"));
        dr.Close();

        shift.DataTextField = "shift";
        shift.DataValueField = "shiftID";
        dr = Job.ShiftDR();
        shift.DataSource = dr;
        shift.DataBind();
        shift.Items.Insert(0, new ListItem("All shifts", "-1"));
        dr.Close();

        fullpart.DataTextField = "FullTimePartTime";
        fullpart.DataValueField = "FullTimePartTimeID";
        dr = Job.TypeDR();
        fullpart.DataSource = dr;
        fullpart.DataBind();
        fullpart.Items.Insert(0, new ListItem("All positions", "-1"));
        dr.Close();

        lang.DataTextField = "Language_requirements";
        lang.DataValueField = "Language_requirements";
        dr = Job.LanguageDR();
        lang.DataSource = dr;
        lang.DataBind();
        lang.Items.Insert(0, new ListItem("All languages", "-1"));
        dr.Close();
    }
    */
    protected void brefine_Click(object sender, EventArgs e)
    {
        RefineSearch(this.State.SelectedItem.Value);
        bsearch_Click(sender, e);
    }

    protected void Country_Click(object sender, EventArgs e)
    {
        
        if (Country.SelectedValue != Location.USA)
        {
            PopulateInternationalCity();
            PopulateJobFamily();
            ddlJobFamily.SelectedValue = "-1";
            InternationalCity.SelectedValue = "-1";   
            keywords.Text = "";
           
        }
        else
        {
            State.SelectedValue = "-1";
            RefineSearch(State.SelectedValue);
            ddlJobAreas.SelectedValue = "";
            keywords.Text = "";          
        }

        PnlResults.Visible = false;
        UpdateFilter();

        if (Country.SelectedValue == Location.ALL_COUNTRIES)
        {
            PnlFilter.Visible = false;        
            Country.AutoPostBack = false;
            BtnSearch.Visible = false;
            BtnBegin.Visible = true;
        }
        else
        {
            PnlFilter.Visible = true;         
            Country.AutoPostBack = true;
            BtnSearch.Visible = true;
            BtnBegin.Visible = false;        
        }

        ViewState["BOAFeedName"] = "";
    }



    private void UpdateFilter()
    {
        if (Country.SelectedValue == Location.USA)
        {
            trUsLocation.Visible = true;
            trInternationalLocation.Visible = false;
            trJobAreaAndFullTimePartTime.Visible = true;
            trTravel.Visible = true;
            trDatepostedShifts.Visible = true;
            trJobFamily.Visible = false;
            tdShift.Visible = true;
            trKeywords.Visible = true;
            HylCityNote.Visible = true;
            phNext.Visible = true;
            phPrevious.Visible = true;
        }     
        else
        {
            trJobAreaAndFullTimePartTime.Visible = false;
            trTravel.Visible = false;
            trDatepostedShifts.Visible = false;
            trJobFamily.Visible = true;
            trUsLocation.Visible = false;
            trInternationalLocation.Visible = true;        
            trKeywords.Visible = true;
            tdShift.Visible = false;
            HylCityNote.Visible = false;
            phNext.Visible = true;
            phPrevious.Visible = true;
        }
    }

    public void RefineSearch(string StateID)
    {
        if (StateID != "-1" & !string.IsNullOrEmpty(StateID))
        {
            FilterCity(Convert.ToInt32(StateID));
            City.Enabled = true;
            //City.BackColor = System.Drawing.Color.White;
            City.Style["color"] = "Black";
            lblCity.Visible = true;
            City.SelectedIndex = 0;
        }
        else
        {
            City.SelectedIndex = 0;
            City.Enabled = false;
            //lblCity.Visible = false;
        }
    }

    public void FilterCity(int stateid)
    {
        OleDbDataReader dr;
        Location Lo = new Location();
        City.Items.Clear();
        City.DataTextField = "City";
        City.DataValueField = "Cityid";
        if (State.SelectedIndex == 0)
        {
            dr = Lo.StatewiseCityDR(1);
            City.DataSource = dr;
        }
        else
        {
            dr = Lo.StatewiseCityDR(stateid);
            City.DataSource = dr;
        }
        if (dr.HasRows)
        {
            City.DataBind();
        }
        City.Items.Insert(0, new ListItem("All cities", "-1"));
        dr.Close();
    }
    protected void btnJobCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("jobcart.aspx");
    }
    protected void btnBasicSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("jobsearch.aspx");
    }

    protected void PopulateJobFamily()
    {
        ddlJobFamily.Items.Clear();
        OleDbConnection con = new OleDbConnection(constring);
        con.Open();
        OleDbDataReader rdr;
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "p_SelectGlobalJobFamily";

        try
        {
            rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
        catch (Exception ex)
        {
            throw ex;
        }      

        ddlJobFamily.DataTextField = "Family";
        ddlJobFamily.DataValueField = "FamilyID";
        ddlJobFamily.DataSource = rdr;
        ddlJobFamily.DataBind();

        ddlJobFamily.Items.Insert(0,new ListItem("All", "-1"));
    }

    protected void PopulateJobAreas()
    {
        string selVal;
        if (!IsPostBack)
        {
            selVal = String.IsNullOrEmpty(Request.QueryString["jobareas"]) == false ? string.IsNullOrEmpty(this.ddlJobAreas.SelectedValue) ? Request.QueryString["jobareas"] : this.ddlJobAreas.SelectedValue : this.ddlJobAreas.SelectedValue;
        }
        else
        {
            selVal  = ViewState["jobareas"] == null ? "" : ViewState["jobareas"].ToString();
        }
        this.ddlJobAreas.Items.Clear();
        OleDbDataReader dr;
        AreaofTalent ja = new AreaofTalent();
        dr = ja.JobAreasList();
        ListItem l = new ListItem("none", string.Empty);

        this.ddlJobAreas.Items.Insert(0,l);
        while (dr.Read())
        {
            ListItem li = new ListItem(dr["family"].ToString(), dr["value"].ToString());
            li.Attributes["OptionGroup"] = dr["talent"].ToString();
            this.ddlJobAreas.Items.Add(li);
        }
        dr.Close();        
        ListItem myListItem = new ListItem();
        myListItem = this.ddlJobAreas.Items.FindByValue(selVal);

        if (myListItem != null)
            myListItem.Selected = true;
       }

    public string formatDate(String strDate, String strDateFormat)
    {
        DateTime dtDate;

        // Try converting Strng to datetime format
        try
        {
            dtDate = Convert.ToDateTime(strDate);
        }
        catch
        {
            // If string can not be converted then just return the string
            return strDate;
        }

        // If datetime conversion succeeded then return date in desired format
        return String.Format(strDateFormat, dtDate);

    }


    public string formatLocation(String strCountry, String strState, String strCity)
    {
        string strLocation = "";

        try
        {
            // If no state use city and country - else use city and state
            if (strState.ToLower() == "select a state/province") strLocation = strCity + ", " + strCountry;
            else strLocation = strCity + ", " + strState;
        }
        catch (Exception ex)
        {
            Utility.HandleException(ex);
        }

        return strLocation;

    }


}
