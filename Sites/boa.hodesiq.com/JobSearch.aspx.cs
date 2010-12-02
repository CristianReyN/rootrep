using System;
using System.Data;
using System.Configuration;
using System.Web;
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

public partial class JobSearch : System.Web.UI.Page
{
    private int RecPerPage = 12;
    private string constring = ConfigurationManager.AppSettings["StrUdlFileName"];
    string BOAFeedName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //init hidden location value
        Statehidden.Value = State.SelectedItem.Value.Trim();
        if (Statehidden.Value == "All Locations") Statehidden.Value = "-1";

        //write the boa buttons
        
        boanet_safebutton.writeBOASafeButton("Previous", phPrevious, "Previous", LnkPrvs_Click, this.Request, "");
        boanet_safebutton.writeBOASafeButton("Next", phNext, "Next", LnkNxt_Click, this.Request, ""); 
        //

        lnkJobCart.Attributes.Add("onblur", "this.className='p';");
        lnkJobCart.Attributes.Add("onfocus", "this.className='p-over';");
      

        lblMessage.Text = "";
        if (!this.IsPostBack)
        {
            //BOAFeedname should be blank unless it is canada and french pages
            BOAFeedName = Request.QueryString["BOAFeedName"] == null ? "" : Request.QueryString["BOAFeedName"].ToString();
            ViewState["BOAFeedName"] = BOAFeedName;
            PopulateCountries();
            PopulateLocations();
            PopulateCity();
            PopulateOtherLists();
            PopulateJobFamily();

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
                funAdvSearch(0);
            }
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
        funAdvSearch(2);
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
            trKeywords.Visible = true;      
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
    



}
