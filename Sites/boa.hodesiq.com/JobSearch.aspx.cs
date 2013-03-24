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

namespace BOA
{
    public partial class JobSearch : System.Web.UI.Page
    {
        private int RecPerPage = 12;
        private string constring = ConfigurationManager.AppSettings["StrUdlFileName"];
        string BOAFeedName = "";

        public int _currPageIndex = 1;
        public int _currPageIndexGlobal = 1;
        private int _maxPage = 9999;
        private int _maxPageGlobal = 9999;
        private SortDirection _sortDir = 0;

        public String _jobFamily;
        public String _areaOfTalent;
        public String _ddlJobArea;
        public String _jobType; //full time/partime
        public String _jobShift;
        public String _daterange;
        public String _country;
        public String _state;
        public String _city;
        public String _travel;
        public String _distance;
        public String _zipcode;
        public String _keyword;

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
                //ImgMerchantServices.HRef = "--https://bacfhrs.taleo.net/careersection/10200/joblist.ftl?lang=en";
                //ImgMerchantServices.Target = "_blank";
            }

            //New BAMS Taleo ATS URL
            if (DateTime.Compare(ATSUrlStartDate, DateTime.Now) > 0)
            {
                //ImgMerchantServices.HRef = "https://bacfhrs.taleo.net/careersection/10200/joblist.ftl?lang=en";
                //ImgMerchantServices.Target = "_blank";
            }
            else
            {
                //ImgMerchantServices.HRef = "../learnmore/bams.asp";
                //ImgMerchantServices.Target = "_blank";
            }

            //write the boa buttons

            //boanet_safebutton.writeBOASafeButton("Previous", phPrevious, "Previous", LnkPrvs_Click, this.Request, "");
            //boanet_safebutton.writeBOASafeButton("Next", phNext, "Next", LnkNxt_Click, this.Request, "");
            //

            lnkJobCart.Attributes.Add("onblur", "this.className='p';");
            lnkJobCart.Attributes.Add("onfocus", "this.className='p-over';");

            // Initialize search fields
            initSearchFields();

            //init hidden location value
            //Statehidden.Value = State.SelectedItem.Value.Trim();
            //if (Statehidden.Value == "All Locations") Statehidden.Value = "-1";

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
                //PopulateJobFamily();

                BindSearchString();
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

                    if (Request["FromJobDetails"] == "1")
                    {
                        //LoadViewState();  // get any pre-existing sort order
                        //LoadViewStateGlobal();
                        if (Request["_currPageIndex"] != "")
                        {
                            zcrGridView1.PageIndex = Convert.ToInt32(Request["currPageIndex"]);
                            jobListGridView1.PageIndex = Convert.ToInt32(Request["currPageIndex"]);
                            jobListGridView2.PageIndex = Convert.ToInt32(Request["currPageIndex"]);
                        }
                    }
                    else
                    {
                        //if this is a post from guided job search, reset pageindexes
                        if (Request["guidedJS"] == "1")
                        {
                            zcrGridView1.PageIndex = 1;
                            jobListGridView1.PageIndex = 1;
                            jobListGridView2.PageIndex = 1;
                        }
                        else
                        {
                            // Save view state for sort and page position
                            LoadViewState();  // get any pre-existing sort order

                            //zcrGridView1.PageIndex = 1;
                            //jobListGridView1.PageIndex = 1;
                            SaveViewState();

                            // Save view state for sort and page position
                            LoadViewStateGlobal();  // get any pre-existing sort order
                            //zcrGridView1.PageIndex = 1;
                            jobListGridView2.PageIndex = 1;
                            SaveViewStateGlobal();
                        }
                    }

                    funAdvSearch(0);
                }

                
                    
               

                

            }
            else
            {
                if (Country.SelectedValue == Location.USA)
                {
                    // Save view state for sort and page position
                    LoadViewState();  // get any pre-existing sort order

                    if (ViewState["BOAFeedName"] != null)
                    {
                        BOAFeedName = ViewState["BOAFeedName"].ToString();
                    }

                    SaveViewState();
                }
                else
                {
                    // Save view state for sort and page position
                    LoadViewStateGlobal();  // get any pre-existing sort order

                    if (ViewState["BOAFeedName"] != null)
                    {
                        BOAFeedName = ViewState["BOAFeedName"].ToString();
                    }

                    SaveViewStateGlobal();
                   
                }


                
            }

            

            ViewState["jobareas"] = ddlJobAreas.SelectedValue;
            ViewState["jobfamilyGlobal"] = ddlJobFamily.SelectedValue;
            
            //this needs to be done before calling PopulateJobAreasFromIQ()
            string selVal;

            if (Country.SelectedValue == Location.USA)
            {
                if (!IsPostBack)
                {
                    selVal = String.IsNullOrEmpty(Request.QueryString["jobareas"]) == false ? string.IsNullOrEmpty(this.ddlJobAreas.SelectedValue) ? Request.QueryString["jobareas"] : this.ddlJobAreas.SelectedValue : this.ddlJobAreas.SelectedValue;
                }
                else
                {
                    selVal = ViewState["jobareas"] == null ? "" : ViewState["jobareas"].ToString();
                }
            }
            else
            {
                if (!IsPostBack)
                {
                    selVal = String.IsNullOrEmpty(Request.QueryString["jobfamilyid"]) == false ? string.IsNullOrEmpty(this.ddlJobAreas.SelectedValue) ? Request.QueryString["jobfamilyid"] : this.ddlJobAreas.SelectedValue : this.ddlJobAreas.SelectedValue;
                }
                else
                {
                    selVal = ViewState["jobfamilyGlobal"] == null ? "" : ViewState["jobfamilyGlobal"].ToString();
                }
            }

            Utility.PopulateJobAreasFromIQ(ddlJobAreas, selVal);
            Utility.PopulateGlobalJobFamiliesFromIQ(ddlJobFamily, selVal);

            if (Country.SelectedValue == Location.USA)
            {
                if (!IsPostBack)
                {
                    selVal = String.IsNullOrEmpty(Request.QueryString["travel"]) == false ? string.IsNullOrEmpty(this.travel.SelectedValue) ? Request.QueryString["travel"] : this.travel.SelectedValue : this.travel.SelectedValue;
                }
                else
                {
                    selVal = ViewState["travel"] == null ? "" : ViewState["travel"].ToString();
                }
            }

            Utility.PopulateTravelDDL(travel, selVal);

            if (Country.SelectedValue == Location.USA)
            {
                if (!IsPostBack)
                {
                    selVal = String.IsNullOrEmpty(Request.QueryString["fullpart"]) == false ? string.IsNullOrEmpty(this.fullpart.SelectedValue) ? Request.QueryString["fullpart"] : this.fullpart.SelectedValue : this.fullpart.SelectedValue;
                }
                else
                {
                    selVal = ViewState["fullpart"] == null ? "" : ViewState["fullpart"].ToString();
                }
            }

            Utility.PopulateFTPT_DDL(fullpart, selVal);

            if (Country.SelectedValue == Location.USA)
            {
                if (!IsPostBack)
                {
                    selVal = String.IsNullOrEmpty(Request.QueryString["shift"]) == false ? string.IsNullOrEmpty(this.shift.SelectedValue) ? Request.QueryString["shift"] : this.shift.SelectedValue : this.shift.SelectedValue;
                }
                else
                {
                    selVal = ViewState["shift"] == null ? "" : ViewState["shift"].ToString();
                }
            }
            Utility.PopulateShift_DDL(shift, selVal);

            
            
                        
            //postback only if location has been changed:
            this.State.Attributes.Add("onblur", "javascript:if(document." + this.Form.ClientID + "." + this.Statehidden.ClientID + ".value!=document." + this.Form.ClientID + "." + State.ClientID + ".options[document." + this.Form.ClientID + "." + State.ClientID.Replace("$", "_") + ".selectedIndex].value) {setTimeout('__doPostBack(\\'" + this.State.ClientID.Replace("_", "$") + "\\',\\'\\')', 0);}");
            //this.State.Attributes.Add("onblur", "javascript:setTimeout('__doPostBack(\\'" + this.State.ClientID.Replace("_", "$") + "\\',\\'\\')', 0)");                          



        }
        protected void Page_LoadComplete()
        {
            if (State.SelectedValue != "-1") this.City.Focus();
        }


        public void Page_PreRender(object sender, EventArgs e)
        {
            string DisplayCanadaJobs = ConfigurationManager.AppSettings["DisplayCanadaJobs"].ToString();
            string Instructions = "To find a career suited to your skill set, begin by selecting a country from the list below. Then you may narrow your selection further by choosing additional search criteria and/or entering keywords.";
            string USOnlyInstructions = @"Begin your career search by selecting a country.  You may then narrow your search further, by entering additional search criteria or keywords.</br></br>Note:  City or zip code search options are limited to areas with current available job opportunities, which change constantly. Results are specific to the single city or zip code/distance you select. <a href='#'  target='_blank' onclick=""javascript:window.open('overview/chelp.html','mywin','left=200px,top=180px,width=625,height=345,resizable=0');return false;"" class='p'>Learn more<span class='hidden'>How do I use the state/city or zip code/distance search? Link opens a new window</span></a>";
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
                if (Country.SelectedValue == Location.USA)
                {
                    LoadViewState();

                    _currPageIndex = getPageIndex() - 1;
                    if (_currPageIndex < 1) _currPageIndex = 1;

                    setPageIndex(_currPageIndex);

                    // Save view state for sort and page position
                    ViewState["pageIndex"] = _currPageIndex;
                    SaveViewState();

                    // Assign search values to job list grid
                    assignJobListValues();

                    // Manage Paging 
                    ManagePaging();
                }
                else
                {
                    LoadViewStateGlobal();

                    _currPageIndexGlobal = getPageIndexGlobal() - 1;
                    if (_currPageIndexGlobal < 1) _currPageIndexGlobal = 1;

                    setPageIndexGlobal(_currPageIndexGlobal);

                    // Save view state for sort and page position
                    ViewState["pageIndexGlobal"] = _currPageIndexGlobal;
                    SaveViewStateGlobal();

                    // Assign search values to job list grid
                    assignGlobalJobListValues();

                    // Manage Paging 
                    ManagePagingGlobal();
                }
                
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
                if (Country.SelectedValue == Location.USA)
                {
                    LoadViewState();

                    _currPageIndex = getPageIndex() + 1;
                    if (_currPageIndex > _maxPage) _currPageIndex = _maxPage;

                    setPageIndex(_currPageIndex);

                    // Save view state for sort and page position
                    ViewState["pageIndex"] = _currPageIndex;
                    SaveViewState();

                    // Assign search values to job list grid
                    assignJobListValues();

                    // Manage Paging 
                    ManagePaging();
                }
                else 
                {
                    LoadViewStateGlobal();

                    _currPageIndexGlobal = getPageIndexGlobal() + 1;
                    if (_currPageIndexGlobal > _maxPageGlobal) _currPageIndexGlobal = _maxPageGlobal;

                    setPageIndexGlobal(_currPageIndexGlobal);

                    // Save view state for sort and page position
                    ViewState["pageIndexGlobal"] = _currPageIndexGlobal;
                    SaveViewStateGlobal();

                    // Assign search values to job list grid
                    assignGlobalJobListValues();

                    // Manage Paging 
                    ManagePagingGlobal();
                }
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
        private object SetDataSourceGlobal()
        {
            object ds = this.jobListGridView2.DataSource;
            return ds;
        }

        protected void assignGlobalJobListValues()
        {

            // Do Job List custom field assignement and get records

            this.assignJobListGlobalValuesLocation();
            this.jobListGridView2.GetRecords();

            // Bind DataSource to "gv" GridView (gridview displayed in ASCX file)
            //GrdResultsUS.DataSource = SetDataSource();
            //GrdResultsUS.DataBind();

            GrdResultsGlobal.DataSource = SetDataSourceGlobal();
            GrdResultsGlobal.DataBind();

            this.zcrGridView1.Visible = false;
            this.jobListGridView1.Visible = false;
            
        }

        protected void assignJobListValues()
        {

            // Check to see if the user is searching by ZipCode or Location
            if (_distance != "-1")
            {
                // Do Zip Code Radius assignement and get records
                this.assignJobListValuesZCR();
                this.zcrGridView1.GetRecords();
                this.zcrGridView1.Visible = false;
            }
            else
            {
                // Do Job List custom field assignement and get records

                this.assignJobListValuesLocation();
                this.jobListGridView1.GetRecords();
            }

            // Bind DataSource to "gv" GridView (gridview displayed in ASCX file)
            GrdResultsUS.DataSource = SetDataSource();
            GrdResultsUS.DataBind();
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
            //zcrGridView1.QuestionIdList = string.Format("{0},{1}", travelQId, jobTypeQId);

            // Assign custom fields to be used for searching
            zcrGridView1.QuestionId1 = travelQId;
            zcrGridView1.QuestionId1AnswerIds = _travel;

            zcrGridView1.QuestionId2 = jobTypeQId;
            zcrGridView1.QuestionId2AnswerIds = _jobType;

            zcrGridView1.QuestionId3 = jobShiftQId;
            zcrGridView1.QuestionId3AnswerIds = _jobShift;

            if (!string.IsNullOrEmpty(_ddlJobArea))
            {

                if (_ddlJobArea != "-1")
                {
                    //split aot and job family
                    string[] arrAOTJobFamily = null;
                    arrAOTJobFamily = _ddlJobArea.Split("|".ToCharArray());
                    _areaOfTalent = arrAOTJobFamily[0];
                    _jobFamily = arrAOTJobFamily[1];
                }
                else
                {
                    _areaOfTalent = "-1";
                    _jobFamily = "-1";
                }
            }

            zcrGridView1.QuestionId4 = jobFamilyQId;
            zcrGridView1.QuestionId4AnswerIds = _jobFamily;


            // Assign zip/radius values used for searching
            if (_distance != null)
            {
                zcrGridView1.Radius = System.Convert.ToInt32(_distance);
            }
            zcrGridView1.ZipCode = _zipcode;

            // Assign keyword values used for searching
            zcrGridView1.Keywords = _keyword;

            // Assign Daterange / Age search criteria
            zcrGridView1.Age = Convert.ToInt32(_daterange);

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
            int aotQId = cs.RetrieveTagValueQuestionId("TalentArea");
            int jobTypeQId = cs.RetrieveTagValueQuestionId("FTPT");
            int jobShiftQId = cs.RetrieveTagValueQuestionId("Shift");

            // Build comma seperated list of the custom fields to be displayed
            // in the job list
            //jobListGridView1.QuestionIdList = string.Format("{0},{1}", travelQId, jobTypeQId);

            // Assign custom fields to be used for searching
            jobListGridView1.QuestionId1 = travelQId;
            jobListGridView1.QuestionId1AnswerIds = _travel;

            jobListGridView1.QuestionId2 = jobTypeQId;
            jobListGridView1.QuestionId2AnswerIds = _jobType;

            jobListGridView1.QuestionId3 = jobShiftQId;
            jobListGridView1.QuestionId3AnswerIds = _jobShift;


            if (!string.IsNullOrEmpty(_ddlJobArea))
            {

                if (_ddlJobArea != "-1")
                {
                    //split aot and job family
                    string[] arrAOTJobFamily = null;
                    arrAOTJobFamily = _ddlJobArea.Split("|".ToCharArray());
                    _areaOfTalent = arrAOTJobFamily[0];
                    _jobFamily = arrAOTJobFamily[1];
                }
                else
                {
                    _areaOfTalent = "-1";
                    _jobFamily = "-1";
                }

                jobListGridView1.QuestionId4 = jobFamilyQId;
                jobListGridView1.QuestionId4AnswerIds = _jobFamily;

                //jobListGridView1.QuestionId5 = aotQId;
                //jobListGridView1.QuestionId5AnswerIds = _areaOfTalent;
            }

            // Assign country/stte/city values used for searching
            jobListGridView1.CountryIds = _country;
            jobListGridView1.StateIds = _state;
            jobListGridView1.CityIds = _city;

            // Assign keyword values used for searching
            jobListGridView1.Keywords = _keyword;

            // Assign Daterange / Age search criteria
            jobListGridView1.Age = Convert.ToInt32(_daterange);

            // If not a postback AND _pagenum has a value then make it 
            // the current page
            if (!IsPostBack && Convert.ToInt32(_pagenum) > 0)
            {
                jobListGridView1.PageIndex = Convert.ToInt32(_pagenum);
                SaveViewState();
            }

        }

        protected void assignJobListGlobalValuesLocation()
        {

            jobListGridView2.MaskedHiringOrgId = cs.MaskedHiringOrgId;
            jobListGridView2.EMediaId = cs.EMediaId;
            jobListGridView2.RecordsPerPage = cs.DefaultPageSize;

            // Get Question ID values for custom fields used for searching
            // and possible display in the job list
            //int travelQId = cs.RetrieveTagValueQuestionId("Travel");
            int jobFamilyQId = cs.RetrieveTagValueQuestionId("JobFamily");
            //int aotQId = cs.RetrieveTagValueQuestionId("TalentArea");
            //int jobTypeQId = cs.RetrieveTagValueQuestionId("FTPT");
            //int jobShiftQId = cs.RetrieveTagValueQuestionId("Shift");

            // Build comma seperated list of the custom fields to be displayed
            // in the job list
            //jobListGridView1.QuestionIdList = string.Format("{0},{1}", travelQId, jobTypeQId);

            // Assign custom fields to be used for searching
            jobListGridView2.QuestionId1 = jobFamilyQId;
            jobListGridView2.QuestionId1AnswerIds = _jobFamily;

            // Assign country/stte/city values used for searching
            jobListGridView2.CountryIds = _country;
            //jobListGridView2.StateIds = "-1";
            jobListGridView2.CityIds = _city;

            // Assign keyword values used for searching
            jobListGridView2.Keywords = _keyword;

            // Assign Daterange / Age search criteria
            jobListGridView2.Age = Convert.ToInt32(_daterange);

            // If not a postback AND _pagenum has a value then make it 
            // the current page
            if (!IsPostBack && Convert.ToInt32(_pagenum) > 0)
            {
                jobListGridView2.PageIndex = Convert.ToInt32(_pagenum);
                SaveViewStateGlobal();
            }

        }

        private new void SaveViewState()
        {
            try
            {
                if (_distance != "-1")
                {
                    ViewState["pageIndex"] = this.zcrGridView1.PageIndex;

                    // Save sort order using Session *not* ViewState
                    Session["orderByColumn"] = this.zcrGridView1.OrderByColumn;
                    Session["orderByDirection"] = this.zcrGridView1.OrderByDirection;
                }
                else
                {
                    ViewState["pageIndex"] = this.jobListGridView1.PageIndex;
                    ViewState["travel"] = this.travel.SelectedValue;
                    ViewState["fullpart"] = this.fullpart.SelectedValue;
                    ViewState["shift"] = this.shift.SelectedValue;

                    // Save sort order using Session *not* ViewState
                    Session["orderByColumn"] = this.jobListGridView1.OrderByColumn;
                    Session["orderByDirection"] = this.jobListGridView1.OrderByDirection;
                }
            }
            catch (Exception ex)
            {
                Utility.HandleException(ex);
            }
        }

        private void SaveViewStateGlobal()
        {
            try
            {
                ViewState["pageIndexGlobal"] = this.jobListGridView2.PageIndex;

                // Save sort order using Session *not* ViewState
                Session["orderByColumnGlobal"] = this.jobListGridView2.OrderByColumn;
                Session["orderByDirectionGlobal"] = this.jobListGridView2.OrderByDirection;
            }
            catch (Exception ex)
            {
                Utility.HandleException(ex);
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

        private void LoadViewStateGlobal()
        {
            try
            {

                if (ViewState["pageIndexGlobal"] != null) this.jobListGridView2.PageIndex = (int)ViewState["pageIndexGlobal"];

                    // Load sort order from Session *not* ViewState          
                if (Session["orderByColumnGlobal"] != null) this.jobListGridView2.OrderByColumn = Session["orderByColumnGlobal"].ToString();
                if (Session["orderByDirectionGlobal"] != null) this.jobListGridView2.OrderByDirection = (SortDirection)Session["orderByDirectionGlobal"];
                
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

        protected void gv_SortingGlobal(object sender, GridViewSortEventArgs e)
        {


            // Toggle sort direction
            if (Session["orderByDirectionGlobal"] != null && (SortDirection)Session["orderByDirectionGlobal"] == SortDirection.Ascending)
            {
                _sortDir = SortDirection.Descending;
            }
            else
            {
                _sortDir = SortDirection.Ascending;
            }

            jobListGridView2.OrderByColumn = e.SortExpression;
            jobListGridView2.OrderByDirection = _sortDir;

            // Page gets reset to 1 when doing a sort
            jobListGridView2.PageIndex = 1;
           
            // Save Sort order view state
            SaveViewStateGlobal();

            // Assign search values to job list grid and get the records
            assignGlobalJobListValues();

            // Manage Paging 
            //ManagePaging();
        }

        protected void initSearchFields()
        {

            /*travel.MaskedHiringOrgId = cs.MaskedHiringOrgId;
            travel.QuestionId = cs.RetrieveTagValueQuestionId("Travel");
            travel.DataBind();
            travel.Items.Insert(0, new ListItem("All travel", "-1"));

            shift.MaskedHiringOrgId = cs.MaskedHiringOrgId;
            shift.QuestionId = cs.RetrieveTagValueQuestionId("Shift");
            shift.DataBind();
            shift.Items.Insert(0, new ListItem("All shifts", "-1"));

            /*fullpart.MaskedHiringOrgId = cs.MaskedHiringOrgId;
            fullpart.QuestionId = cs.RetrieveTagValueQuestionId("FTPT");
            fullpart.DataBind();
            fullpart.Items.Insert(0, new ListItem("All", "-1"));
            */
        }

        protected void getSearchFieldValues()
        {

            if (!IsPostBack)
            {

                // Grab search values from URL 

                _travel = string.IsNullOrEmpty(Request["travel"]) ? "-1" : Request["travel"];

                if (Country.SelectedValue == Location.USA)
                {
                    _jobFamily = string.IsNullOrEmpty(Request["ddlJobAreas"]) ? "-1" : Request["ddlJobAreas"];
                }
                else
                {
                    _jobFamily = string.IsNullOrEmpty(Request["ddlJobFamily"]) ? "-1" : Request["ddlJobFamily"];
                }

                _ddlJobArea = string.IsNullOrEmpty(Request["jobareas"]) ? "-1" : Request["jobareas"];
                _jobType = string.IsNullOrEmpty(Request["fullpart"]) ? "-1" : Request["fullpart"];
                _jobShift = string.IsNullOrEmpty(Request["shift"]) ? "" : Request["shift"];
                _daterange = string.IsNullOrEmpty(Request["datepost"]) ? "365" : Request["datepost"];

                _country = string.IsNullOrEmpty(Request["countryid"]) ? "-1" : Request["countryid"];
                _state = string.IsNullOrEmpty(Request["stateid"]) ? "-1" : Request["stateid"];
                _city = string.IsNullOrEmpty(Request["cityid"]) ? "-1" : Request["cityid"];

                _distance = string.IsNullOrEmpty(Request["ddlRadius"]) ? "-1" : Request["ddlRadius"];
                _zipcode = string.IsNullOrEmpty(Request["txtZipCode"]) ? "Zip Code" : Request["txtZipCode"];

                _keyword = string.IsNullOrEmpty(Request["keywords"]) ? "" : Request["keywords"];

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

                //_travel = string.IsNullOrEmpty(Request["travel"]) ? "-1" : Request["travel"];
                //_travel = Utility.getListBoxSelectedValues(travel);
                //_jobShift = Utility.getListBoxSelectedValues(shift);
                //_jobType = Utility.getListBoxSelectedValues(fullpart);

                _travel = travel.SelectedValue;
                _jobShift = shift.SelectedValue;
                _jobType = fullpart.SelectedValue;
                _daterange = datepost.SelectedValue;

                _country = Country.SelectedValue;
                _state = State.SelectedValue;
                _city = City.SelectedValue;
                _distance = ddlRadius.SelectedValue;
                _zipcode = txtZipCode.Text.ToString().Trim();

                _keyword = keywords.Text.ToString().Trim();
                _ddlJobArea = ddlJobAreas.SelectedValue;
                _jobFamily = ddlJobFamily.SelectedValue;
            }

        }


        protected void ManagePaging()
        {
            // Get maximum page count
            _maxPage = getPageCount();
            _currPageIndex = getPageIndex();

            // Hide/Show "Previous" link
            previous_page.Visible = true;
            previous_page2.Visible = true;

            if (_currPageIndex <= 1)
            {
                previous_page.Visible = false;
                previous_page2.Visible = false;
            }
               

            // Update page navigation text
            int maxRows = getMaxRows();
            int RecPerPage = getRecordsPerPage();
            int startJobCnt = ((_currPageIndex - 1) * RecPerPage) + 1;
            int endJobCnt = endJobCnt = (_currPageIndex) * (RecPerPage);

            if (_currPageIndex == _maxPage) endJobCnt = maxRows;

            paging_text.Text = "Jobs " + startJobCnt.ToString() + " - " + endJobCnt.ToString() + " of " + maxRows.ToString();
            paging_text2.Text = paging_text.Text; 

            // Hide/Show "Next" link
            next_page.Visible = true;
            next_page2.Visible = true;

            if (_currPageIndex >= _maxPage)
            {
                next_page.Visible = false;
                next_page2.Visible = false;
            }

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
                this.JobListPaging2.Visible = false;

                previous_page.Visible = false;
                previous_page2.Visible = false;

                next_page.Visible = false;
                next_page2.Visible = false;

                paging_text.Text = maxRows.ToString() + " Job(s) Found";
                paging_text2.Text = paging_text.Text;

            }

        }

        protected void ManagePagingGlobal()
        {
            // Get maximum page count
            _maxPageGlobal = getPageCountGlobal();
            _currPageIndexGlobal = getPageIndexGlobal();

            // Hide/Show "Previous" link
            previous_page.Visible = true;
            previous_page2.Visible = true;

            if (_currPageIndexGlobal <= 1)
            {
                previous_page.Visible = false;
                previous_page2.Visible = false;
            }

            // Update page navigation text
            int maxRows = getMaxRowsGlobal();
            int RecPerPage = getRecordsPerPageGlobal();
            int startJobCnt = ((_currPageIndexGlobal - 1) * RecPerPage) + 1;
            int endJobCnt = (_currPageIndexGlobal) * (RecPerPage);
            if (_currPageIndexGlobal == _maxPageGlobal) endJobCnt = maxRows;

            paging_text.Text = "Jobs " + startJobCnt.ToString() + " - " + endJobCnt.ToString() + " of " + maxRows.ToString();
            paging_text2.Text = paging_text.Text;

            // Hide/Show "Next" link
            next_page.Visible = true;
            next_page2.Visible = true;

            if (_currPageIndexGlobal >= _maxPageGlobal)
            {
                next_page.Visible = false;
                next_page2.Visible = false;
            }

            // If no pages then display status message
            StatusMsg.Text = "";
            StatusMsg.Visible = false;
            if (_maxPageGlobal == 0)
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
            if (_maxPageGlobal <= 1)
            {
                this.JobListPaging.Visible = false;
                this.JobListPaging2.Visible = true;

                previous_page.Visible = false;
                previous_page2.Visible = false;

                next_page.Visible = false;
                next_page2.Visible = false;

                paging_text.Text = maxRows.ToString() + " Job(s) Found";
                paging_text2.Text = paging_text.Text;

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

        private int getMaxRowsGlobal()
        {

            int maxRows = 0;

            try
            {
                
                maxRows = jobListGridView2.RowCount;
                
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

        private int getRecordsPerPageGlobal()
        {

            int RecPerPage = 0;

            try
            {
                
                RecPerPage = jobListGridView2.RecordsPerPage;
                
            }
            catch (Exception ex)
            {
                Utility.HandleException(ex);
            }

            return RecPerPage;
        }

        public int getPageIndex()
        {

            int intPageIndex = GrdResultsUS.PageIndex;

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

        public int getPageIndexGlobal()
        {

            int intPageIndex = GrdResultsGlobal.PageIndex;

            try
            {
               intPageIndex = jobListGridView2.PageIndex;
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

        private void setPageIndexGlobal(int intPageIndex)
        {
            try
            {
                jobListGridView2.PageIndex = intPageIndex;
                
            }
            catch (Exception ex)
            {
                Utility.HandleException(ex);
            }
        }

        private int getPageCount()
        {

            //int intPageCount = GrdResults.PageCount;
            int intPageCount = GrdResultsUS.PageCount;

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

        private int getPageCountGlobal()
        {

            //int intPageCount = GrdResults.PageCount;
            int intPageCount = GrdResultsGlobal.PageCount;

            try
            {
                
                intPageCount = jobListGridView2.PageCount;
            }
            catch (Exception ex)
            {
                Utility.HandleException(ex);
            }

            return intPageCount;
        }

        public void BindSearchString()
        {
            ListItem MyListItem;
            string MyValue;
            string[] MyMultiValue = null;

            MyValue = String.IsNullOrEmpty(Request.QueryString["countryid"]) == false ? Request.QueryString["countryid"] : Location.ALL_COUNTRIES;
            string country = string.IsNullOrEmpty(Request.QueryString["country"]) == false ? Request.QueryString["country"].ToString().ToLower().Replace(" ", "") : "";

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
                    if (it.Text.ToLower().Replace(" ", "") == country)
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
                string internationalcity = string.IsNullOrEmpty(Request.QueryString["internationalcity"]) == false ? Request.QueryString["internationalcity"].ToString().ToLower().Replace(" ", "") : "";

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
                string jobfamily = String.IsNullOrEmpty(Request.QueryString["jobfamily"]) == false ? Request.QueryString["jobfamily"].ToLower().Replace(" ", "") : "";

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
            else if (Country.SelectedValue == Location.USA)
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

                //zip code
                txtZipCode.Text = String.IsNullOrEmpty(Request.QueryString["txtZipCode"]) == false ? Request.QueryString["txtZipCode"] : "";

                //radius
                MyListItem = ddlRadius.Items.FindByValue(String.IsNullOrEmpty(Request.QueryString["ddlRadius"]) == false ? Request.QueryString["ddlRadius"] : "-1");
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


        public void funAdvSearch(int iFrom)
        {
            if (Country.SelectedValue == Location.USA)
            {
                funAdvSearchUS(iFrom);
                GrdResultsUS.Visible = true;
                GrdResultsGlobal.Visible = false;
            }
            else
            {
                funAdvSearchInternational(iFrom);
                GrdResultsUS.Visible = false;
                GrdResultsGlobal.Visible = true;
            }

        }

        public void funAdvSearchInternational(int iFrom)
        {
            string LocationID = InternationalCity.SelectedValue;
            _city = LocationID;
            string JobFamilyID = _jobFamily;
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

            assignGlobalJobListValues();

            ManagePagingGlobal();

        }


        public void funAdvSearchUS(int iFrom)
        {
            /*
            int state = -1;
            int city = -1;
            string keywrd = "";
            string fullPart = "";
            int Travel = -1;
            string Lang = "";
            string Shift = "";
            int PostDate = -1;
             */

            // Assign search values to job list grid and get the records
            assignJobListValues();

            // Manage Paging 
            ManagePaging();
        }
    

        #region  (¯`·.¸(¯`·.¸  Sorting Mechanizm Is Here ¸.·´¯)¸.·´¯)

        /*
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
        */
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
            
            if (Country.SelectedValue == Location.USA)
            {
                //validate zip code/radius entries
                // Check to see if the user is searching by ZipCode or Location
                if (Utility.ValidateForm(ddlRadius, txtZipCode, lblValidation))
                {
                    if (_distance != "-1")
                    {
                        ViewState["PageNumber"] = 1;
                        zcrGridView1.PageIndex = 1;
                    }
                    else
                    {
                        ViewState["PageNumber"] = 1;
                        jobListGridView1.PageIndex = 1;
                    }
                    SaveViewState();
                    funAdvSearch(0);
                    PnlResults.Visible = true; 
                }
                
            }
            else 
            {
                jobListGridView2.PageIndex = 1;
                SaveViewStateGlobal();
                funAdvSearch(0);
                PnlResults.Visible = true; 
            }

            
  
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

/*
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
  */

        protected void PopulateCountries()
        {
            Location Lo = new Location();
            OleDbDataReader dr;
            Country.DataTextField = "country";
            Country.DataValueField = "countryid";
            //Country.MaskedHiringOrgId = cs.MaskedHiringOrgId;
            //Country.EMediaId = cs.EMediaId;
            dr = Lo.CountryDR();
            Country.DataSource = dr;
            Country.DataBind();
            dr.Close();

            Country.Items.Insert(0, new ListItem("Select a country", Location.ALL_COUNTRIES));
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
            /*
            Location Lo = new Location();
            OleDbDataReader dr;
            City.Items.Clear();
            City.DataTextField = "City";
            City.DataValueField = "LocationID";
            dr = Lo.StatewiseCityDR(1);
            City.DataSource = dr;
            City.DataBind();
            City.Items.Insert(0, new ListItem("All cities", "-1"));
            dr.Close();
             */
            Location Lo = new Location();
            City.Items.Clear();
            City.DataTextField = "City";
            City.DataValueField = "LocationID";
            DataTable dt = Lo.CountrywiseCity(Country.SelectedValue, State.SelectedValue);
            City.DataSource = dt;
            City.DataBind();
            City.Items.Insert(0, new ListItem("All cities", "-1"));
        }

        protected void PopulateInternationalCity()
        {
            InternationalCity.Items.Clear();

            Location Lo = new Location();
            InternationalCity.DataTextField = "City";
            InternationalCity.DataValueField = "LocationID";
            DataTable dt = Lo.CountrywiseCity(Country.SelectedValue, "-1");
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
                //PopulateJobFamily();
                ddlJobFamily.SelectedValue = "-1";
                InternationalCity.SelectedValue = "-1";
                keywords.Text = "";

            }
            else
            {
                //State.SelectedValue = "-1";
                //RefineSearch(State.SelectedValue);
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
            City.DataValueField = "LocationID";
            if (State.SelectedIndex == 0)
            {
                if (Request.QueryString["stateid"].ToString() != "")
                {
                    dr = Lo.StatewiseCityDR(Convert.ToInt32(Request.QueryString["stateid"]), 1);
                }
                else { dr = Lo.StatewiseCityDR(0, 1); }
                City.DataSource = dr;
            }
            else
            {
                dr = Lo.StatewiseCityDR(stateid,1);
                City.DataSource = dr;
            }
            if (dr.HasRows)
            {
                City.DataBind();
            }
            City.Items.Insert(0, new ListItem("All cities", "-1"));
            dr.Close();
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
}