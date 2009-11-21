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

public partial class AdvanceSearchTest : System.Web.UI.Page
{
    private int RecPerPage = 12;

    protected void Page_Load(object sender, EventArgs e)
    {
        //init hidden location value
        Statehidden.Value = State.SelectedItem.Value.Trim();
        if (Statehidden.Value == "All Locations") Statehidden.Value = "-1";

        //write the boa buttons
        boanet_safebutton.writeBOASafeButton("Search", phSearch, "Search", bsearch_Click, this.Request);
        boanet_safebutton.writeBOASafeButton("Previous", phPrevious, "Previous", LnkPrvs_Click, this.Request);
        boanet_safebutton.writeBOASafeButton("Next", phNext, "Next", LnkNxt_Click, this.Request);

        //
        lnkBasicSearch.Attributes.Add("onblur", "this.className='p';");
        lnkBasicSearch.Attributes.Add("onfocus", "this.className='p-over';");

        lnkJobCart.Attributes.Add("onblur", "this.className='p';");
        lnkJobCart.Attributes.Add("onfocus", "this.className='p-over';");

        lblMessage.Text = "";
        if (!this.IsPostBack)
        {
            PopulateLocations();
            PopulateCity();
            PopulateOtherLists();

            if (string.IsNullOrEmpty(Request["stateid"]))
            {
                State.SelectedIndex = 0;
                City.SelectedIndex = 0;
                travel.SelectedIndex = 0;
                shift.SelectedIndex = 0;
                fullpart.SelectedIndex = 0;
                lang.SelectedIndex = 0;
            }
            else
            {
                BindSearchString();
                ViewState["PageNumber"] = 1;
                funAdvSearch();
            }
        }
        PopulateJobAreas();

        //postback only if location has been changed:
        this.State.Attributes.Add("onblur", "javascript:if(document." + this.Form.ClientID + "." + this.Statehidden.ClientID + ".value!=document." + this.Form.ClientID + "." + State.ClientID + ".options[document." + this.Form.ClientID + "." + State.ClientID.Replace("$", "_") + ".selectedIndex].value) {setTimeout('__doPostBack(\\'" + this.State.ClientID.Replace("_", "$") + "\\',\\'\\')', 0);}");
        //this.State.Attributes.Add("onblur", "javascript:setTimeout('__doPostBack(\\'" + this.State.ClientID.Replace("_", "$") + "\\',\\'\\')', 0)");

    }
    protected void Page_LoadComplete()
    {
        if (State.SelectedItem.Value != "-1") this.City.Focus();
    }
    public void BindSearchString()
    {
        ListItem MyListItem;
        string MyValue;
        string[] MyMultiValue = null;


        MyValue = String.IsNullOrEmpty(Request.QueryString["stateid"]) == false ? Request.QueryString["stateid"] : "-1";
        MyListItem = State.Items.FindByValue(MyValue);
        if (MyListItem != null)
            MyListItem.Selected = true;
        if (MyValue.ToString() != "-1")
        {
            FilterCity(Convert.ToInt32(MyValue));
            City.Visible = true;
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

        keywords.Text = String.IsNullOrEmpty(Request.QueryString["keywords"]) == false ? Request.QueryString["keywords"] : "";
    }

    protected void bsearch_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = 1;
        funAdvSearch();
    }

    public void funAdvSearch()
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
        Jobs Job = new Jobs();

        ListDictionary MyListDictionary = new ListDictionary();

        MyListDictionary = Job.AdvSearch(aot, jf, state, city, Travel, Lang, fullPart, Shift, PostDate, keywrd, (int)(ViewState["PageNumber"]), RecPerPage);
        DataTable DT = (DataTable)MyListDictionary["JobSearchResults"];
        GrdResults.DataSource = DT;
        GrdResults.DataBind();

        this.divNext.Attributes["style"] = ((Boolean)MyListDictionary["NextButton"]) ? " display: inline;" : " display: none;";
        this.divPrev.Attributes["style"] = ((Boolean)MyListDictionary["PrevButton"]) ? " display: inline;" : " display: none;";
        LblPageOfPages.Text = MyListDictionary["PageOfPages"].ToString();
        this.lblJobofJobs.Visible = Convert.ToBoolean(MyListDictionary["RecordCount"]);
        this.lblJobofJobs.Text = MyListDictionary["JobToJobs"].ToString();


    }
    protected void LnkNxt_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) + 1;
        funAdvSearch();
    }
    protected void LnkPrvs_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) - 1;
        funAdvSearch();
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

    protected void PopulateJobAreas()
    {
        string selVal;
        selVal = String.IsNullOrEmpty(Request.QueryString["jobareas"]) == false ? string.IsNullOrEmpty(this.ddlJobAreas.SelectedValue) ? Request.QueryString["jobareas"] : this.ddlJobAreas.SelectedValue : this.ddlJobAreas.SelectedValue;
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

}
