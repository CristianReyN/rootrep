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

public partial class uc_JobSearch : System.Web.UI.UserControl
{
    const string USA = "1";
    const string CANADA = "2";
    private string constring = ConfigurationManager.AppSettings["StrUdlFileName"];
    private string _boaFeedName = "";

    public string BOAFeedName
    {
        get { return _boaFeedName; }
        set { _boaFeedName = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            PopulateCountries();
            Country.SelectedValue = Location.ALL_COUNTRIES;
            PopulateLocations();
            PopulateCity();
            PopulateJobFamily();
            PopulateInternationalCity();
            TrUsJobs1.Visible = false;
            TrUsJobs2.Visible = false;
            TrUsJobs3.Visible = false;
            //TrUsJobs4.Visible = false;
            PnlFilter.Visible = false;
            BtnSearch.Visible = false;
            Country.AutoPostBack = false;
        }

        ViewState["jobareas"] = ddlJobAreas.SelectedValue;
        PopulateJobAreas();

        UpdateControls();

        //boanet_safebutton.writeBOASafeButton("Search", phSearch, "Begin Search", bsearch_Click, this.Request, "");

    }

    protected void bsearch_Click(object sender, EventArgs e)
    {
        string stateid = trState.Visible ? State.SelectedValue : "";
        string cityid = trCity.Visible ? City.SelectedValue : "";
        string countryid = Country.SelectedValue;
        string internationcityid = trInternationalLocation.Visible ? InternationalCity.SelectedValue : "";
        string keyword = keywords.Text;
        string jobareas = trJobArea.Visible ? ddlJobAreas.SelectedValue : "";
        string jobfamilyid = trJobFamily.Visible ? ddlJobFamily.SelectedValue : "";

        string url = "~/JobSearch.aspx?countryid=" + countryid + "&stateid=" + stateid + "&cityid=" + cityid + "&internationalcityid=" + internationcityid;
        url = url + "&keywords=" + keyword + "&jobareas=" + jobareas + "&jobfamilyid=" + jobfamilyid + "&BOAFeedName=" + BOAFeedName;

        Response.Redirect(url);
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


    public void Page_PreRender(object sender, EventArgs e)
    {
        string DisplayCanadaJobs = ConfigurationManager.AppSettings["DisplayCanadaJobs"].ToString();

        if (Country.SelectedValue == Location.USA)
        {
            TrUsJobs1.Visible = true;
            TrUsJobs2.Visible = true;
            TrUsJobs3.Visible = true;
            //TrUsJobs4.Visible = true;
            PnlCanada.Visible = false;            

        } else if (Country.SelectedValue == Location.CANADA && DisplayCanadaJobs.ToLower() == "false")
        {
            TrUsJobs1.Visible = false;
            TrUsJobs2.Visible = false;
            TrUsJobs3.Visible = false;
            PnlCanada.Visible = true;
            PnlFilter.Visible = false;
            tblButtons.Visible = false;
        
        }
        else
        {
            TrUsJobs1.Visible = false;
            TrUsJobs2.Visible = false;
            TrUsJobs3.Visible = false;
            //TrUsJobs4.Visible = false;
             PnlCanada.Visible = false;             
        }

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
        ddlJobAreas.Items.Clear();
        string selVal;
        if (!IsPostBack)
        {
            selVal = String.IsNullOrEmpty(Request.QueryString["jobareas"]) == false ? string.IsNullOrEmpty(this.ddlJobAreas.SelectedValue) ? Request.QueryString["jobareas"] : this.ddlJobAreas.SelectedValue : this.ddlJobAreas.SelectedValue;
        }
        else
        {
            selVal = ViewState["jobareas"] == null ? "" : ViewState["jobareas"].ToString();
        }
        this.ddlJobAreas.Items.Clear();
        OleDbDataReader dr;
        AreaofTalent ja = new AreaofTalent();
        dr = ja.JobAreasList();
        ListItem l = new ListItem("Select a job area", string.Empty);
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

        ddlJobAreas.Items.Insert(0,new ListItem("All", ""));

        if (myListItem != null)
            myListItem.Selected = true;
    }


    protected void Page_LoadComplete()
    {
        if (State.SelectedItem.Value != "-1") this.City.Focus();
    }

    protected void PopulateCountries()
    {
        Country.Items.Clear();

        Location Lo = new Location();
        OleDbDataReader dr;
        Country.DataTextField = "country";
        Country.DataValueField = "countryid";
        dr = Lo.CountryDR();
        Country.DataSource = dr;
        Country.DataBind();

        Country.Items.Insert(0,new ListItem("Select a country",Location.ALL_COUNTRIES));
        dr.Close();
       
    }

    protected void PopulateLocations()
    {
        State.Items.Clear();

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
        City.Items.Clear();

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

    protected void brefine_Click(object sender, EventArgs e)
    {
        RefineSearch(this.State.SelectedItem.Value);

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

    protected void Country_Click(object sender, EventArgs e)
    {      
        UpdateControls();
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

        tblButtons.Visible = true;

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
    }

    protected void UpdateControls()
    {
        if (Country.SelectedValue == Location.USA)
        {
            trCity.Visible = true;
            trInternationalLocation.Visible = false;
            trJobArea.Visible = true;
            trJobFamily.Visible = false;  
            trKeywords.Visible = true;
            trState.Visible = true;  
        }       
        else
        {
            trJobArea.Visible = false;
            trJobFamily.Visible = true;
            trCity.Visible = false;
            trState.Visible = false;
            trInternationalLocation.Visible = true;           
            trKeywords.Visible = true;                   
        }
    }


}


