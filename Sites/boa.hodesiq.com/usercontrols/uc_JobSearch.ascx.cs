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
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {           
                PopulateCountries();
                PopulateLocations();
                PopulateCity();               
                PopulateJobFamily();                                      
        }

        ViewState["jobareas"] = ddlJobAreas.SelectedValue;
        PopulateJobAreas();

        boanet_safebutton.writeBOASafeButton("Search", phSearch, "Search", bsearch_Click, this.Request, "");

    }

    protected void bsearch_Click(object sender, EventArgs e)
    {
        string stateid = trState.Visible ? State.SelectedValue: "";
        string cityid = trCity.Visible?City.SelectedValue:"";
        string countryid = Country.SelectedValue;
        string internationcityid = trInternationalLocation.Visible? InternationalCity.SelectedValue:"";
        string keyword = keywords.Text;
        string jobareas = trJobArea.Visible ? ddlJobAreas.SelectedValue : "";
        string jobfamilyid = trJobFamily.Visible ? ddlJobFamily.SelectedValue : "";

        string url = "~/AdvanceSearch.aspx?countryid=" + countryid + "&stateid=" + stateid + "&cityid=" + cityid + "&internationalcityid=" + internationcityid;
        url = url + "&keywords=" + keyword + "&jobareas=" + jobareas + "&jobfamilyid=" + jobfamilyid;

        Response.Redirect(url);            
    }

    protected void PopulateJobFamily()
    {
        OleDbConnection con = new OleDbConnection(constring);
        con.Open();
        OleDbDataReader rdr;
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "p_SelectJobFamily";

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
            selVal = ViewState["jobareas"] == null ? "" : ViewState["jobareas"].ToString();
        }
        this.ddlJobAreas.Items.Clear();
        OleDbDataReader dr;
        AreaofTalent ja = new AreaofTalent();
        dr = ja.JobAreasList();
        ListItem l = new ListItem("Select a job area", string.Empty);
        this.ddlJobAreas.Items.Add(l);
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


    protected void Page_LoadComplete()
    {
        if (State.SelectedItem.Value != "-1") this.City.Focus();
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
        if (!IsPostBack)
        {
            Country.SelectedValue = USA;
        }
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
        /*if (Country.SelectedValue == USA || Country.SelectedValue == CANADA)
        {
            trUsLocation.Visible = true;
            trInternationalLocation.Visible = false;
        }
        else
        {
            trUsLocation.Visible = false;
            trInternationalLocation.Visible = true;
        }*/

        if (Country.SelectedValue == USA)
        {
            trCity.Visible = true;
            trInternationalLocation.Visible = false;
            trJobArea.Visible = true;         
            trJobFamily.Visible = false;
            trCanadaJobs.Visible = false;
            trKeywords.Visible = true;
            trState.Visible = true;
      //      phSearch.Visible = true;
      

        }
        else if (Country.SelectedValue == CANADA)
        {
            trJobArea.Visible = false;        
            trJobFamily.Visible = false;
            trCity.Visible = false;
            trState.Visible = false;
            trInternationalLocation.Visible = false;
            trCanadaJobs.Visible = true;
            trKeywords.Visible = false;
            InternationalCity.Enabled = true;
          //  phSearch.Visible = false;        
        }
        else
        {
            trJobArea.Visible = false;           
            trJobFamily.Visible = true;
            trCity.Visible = false;
            trState.Visible = false;
            trInternationalLocation.Visible = true;
            trCanadaJobs.Visible = false;
            trKeywords.Visible = true;
           // phSearch.Visible = true;
           
        }

        
    }


}


