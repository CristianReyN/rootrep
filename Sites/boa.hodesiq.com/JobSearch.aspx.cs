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


public partial class JobSearch : System.Web.UI.Page
{
	#region Change History
	// date		    developer	    comments
	// -----------	----------	    ----------
	//  11/27/06    Jonathan Do     (1) Removed paging logic in code, used new SearchJobs Method in Jobs.cs to return records for page selected, logic to
	//                              hide or display Next/Prev button.
	//                              (2) Added BindSearchString() function to bind search criteria when return from job detail.
	//                              (3) Added FilterJobFamily() and FilterCity() to filter when select AreaOfTalent and State
	//                              index change and filter when redirect back from job detail.
	/// </summary>
	#endregion

	private int RecPerPage = 12;
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!this.IsPostBack)
		{
			PopulateAreasofTalentandJobFamily();
			//areasoftalent.SelectedIndex = 0;
			//jfamily.SelectedIndex = 0;
			PopulateLocations();
			PopulateCity();
			//State.SelectedIndex = 0;
			if (string.IsNullOrEmpty(Request["stateid"]))
			{
				areasoftalent.SelectedIndex = 0;
				jfamily.SelectedIndex = 0;
				State.SelectedIndex = 0;
			}
			else
			{
				BindSearchString();
				ViewState["PageNumber"] = 1;
				FunSearch();
			}
		}
	}
	public void BindSearchString()
	{
		ListItem MyListItem;
		string MyValue;
		MyValue = String.IsNullOrEmpty(Request.QueryString["areasoftalent"]) == false ? Request.QueryString["areasoftalent"] : "-1";
		MyListItem = areasoftalent.Items.FindByValue(MyValue);
		if (MyListItem != null)
			MyListItem.Selected = true;
		if (MyValue.ToString() != "-1")
			FilterJobFamily(MyValue.ToString());

		MyListItem = jfamily.Items.FindByValue(String.IsNullOrEmpty(Request.QueryString["jfamily"]) == false ? Request.QueryString["jfamily"] : "-1");
		if (MyListItem != null)
			MyListItem.Selected = true;

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
		keywords.Text = String.IsNullOrEmpty(Request.QueryString["keywords"]) == false ? Request.QueryString["keywords"] : "";
	}
	protected void areaoftalent_SelectedIndexChanged(object sender, System.EventArgs e)
	{
		DropDownList MyDropDownList = (DropDownList)sender;
		FilterJobFamily(MyDropDownList.SelectedItem.Value.ToString());
		jfamily.SelectedIndex = 0;

	}
	public void FilterJobFamily(string FamilyID)
	{
		AreaofTalent at = new AreaofTalent();
		jfamily.Items.Clear();
		jfamily.DataTextField = "Family";
		jfamily.DataValueField = "FamilyID";
		jfamily.DataSource = at.TalentwiseJobfamily(FamilyID);
		jfamily.DataBind();
		jfamily.Items.Insert(0, new ListItem("All Job Family", "-1"));
		//jfamily.SelectedIndex = 0;
	}
	protected void State_SelectedIndexChanged(object sender, System.EventArgs e)
	{
		if (State.SelectedIndex > 1)
		{
			City.Visible = true;
			LblCity.Visible = true;
		}
		else
		{
			City.Visible = false;
			LblCity.Visible = false;
		}
		FilterCity(Convert.ToInt32(State.SelectedValue));
		City.SelectedIndex = 0;
	}
	public void FilterCity(int CityID)
	{
		Location Lo = new Location();
		City.Items.Clear();
		City.DataTextField = "City";
		City.DataValueField = "Cityid";
		if (State.SelectedIndex == 0)
			City.DataSource = Lo.StatewiseCity(1);
		else
			City.DataSource = Lo.StatewiseCity(CityID);
		City.DataBind();
		//City.Items.Insert(0, new ListItem("Select a City", ""));
		City.Items.Insert(0, new ListItem("All Cities", "-1"));
		//City.SelectedIndex = 0;
	}
	public void RefineSearch(string AreaOfTalentID, string jFamily, string StateID)
	{
		ListItem MyListItem;
		FilterJobFamily(areasoftalent.SelectedItem.Value);
		if (AreaOfTalentID == "-1")
			jfamily.SelectedIndex = 0;
		else
		{
			MyListItem = jfamily.Items.FindByValue(jFamily);
			if (MyListItem != null)
				MyListItem.Selected = true;
		}
		if (State.SelectedItem.Value != "-1")
		{
			FilterCity(Convert.ToInt32(State.SelectedItem.Value));
			City.Visible = true;
			City.SelectedIndex = 0;
		}
	}
	protected void brefine_Click(object sender, EventArgs e)
	{

		RefineSearch(areasoftalent.SelectedItem.Value, jfamily.SelectedItem.Value, State.SelectedItem.Value);
	}
	protected void bsearch_Click(object sender, EventArgs e)
	{
		ViewState["PageNumber"] = 1;
		FunSearch();
		GrdResults.Visible = true;

	}
	protected void LnkNxt_Click(object sender, EventArgs e)
	{
		ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) + 1;
		FunSearch();
	}
	protected void LnkPrvs_Click(object sender, EventArgs e)
	{
		ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) - 1;
		FunSearch();
	}

	public void FunSearch()
	{
		int aot = string.IsNullOrEmpty(areasoftalent.SelectedValue) ? -1 : Convert.ToInt32(areasoftalent.SelectedItem.Value);
		string jf = string.IsNullOrEmpty(jfamily.SelectedValue) ? "" : jfamily.SelectedItem.Value;
		int stateid = string.IsNullOrEmpty(State.SelectedValue) ? -1 : Convert.ToInt32(State.SelectedItem.Value);
		int cityid;
		if (stateid == -1)
			cityid = -1;
		else
			cityid = string.IsNullOrEmpty(City.SelectedValue) ? -1 : Convert.ToInt32(City.SelectedItem.Value);
		string keywrd = keywords.Text;

		Jobs Job = new Jobs();

		ListDictionary MyListDictionary = new ListDictionary();
		MyListDictionary = Job.SearchJobs(aot, jf, stateid, cityid, keywrd, (int)(ViewState["PageNumber"]), RecPerPage);
		DataTable DT = (DataTable)MyListDictionary["JobSearchResults"];

		GrdResults.DataSource = DT;
		GrdResults.DataBind();

		LnkPrvs.Visible = (Boolean)MyListDictionary["PrevButton"];
		LnkNxt.Visible = (Boolean)MyListDictionary["NextButton"];
		LblPageOfPages.Text = MyListDictionary["PageOfPages"].ToString();
		this.lblJobofJobs.Visible = Convert.ToBoolean(MyListDictionary["RecordCount"]);
		this.lblJobofJobs.Text = MyListDictionary["JobToJobs"].ToString();
	}


	protected void PopulateAreasofTalentandJobFamily()
	{
		AreaofTalent at = new AreaofTalent();

		areasoftalent.DataTextField = "Talent";
		areasoftalent.DataValueField = "TalentID";
		areasoftalent.DataSource = at.TalentDR();
		areasoftalent.DataBind();
		areasoftalent.Items.Insert(0, new ListItem("All Talent", "-1"));
		//areasoftalent.SelectedIndex = 0;

		jfamily.DataTextField = "Family";
		jfamily.DataValueField = "FamilyID";
		jfamily.DataSource = at.JobfamilyDR();
		jfamily.DataBind();
		jfamily.Items.Insert(0, new ListItem("All Job Family", "-1"));
		//jfamily.SelectedIndex = 0;

	}
	protected void PopulateLocations()
	{
		Location Lo = new Location();
		State.DataTextField = "State";
		State.DataValueField = "Stateid";
		State.DataSource = Lo.StateDR();
		State.DataBind();
		State.Items.Insert(0, new ListItem("All States", "-1"));
		//State.SelectedIndex = 0;
	}
	protected void PopulateCity()
	{
		Location Lo = new Location();
		City.Items.Clear();
		City.DataTextField = "City";
		City.DataValueField = "Cityid";
		//if (State.SelectedIndex == 0)
		City.DataSource = Lo.StatewiseCityDR(1);
		//else
		//    City.DataSource = Lo.StatewiseCity(CityID);
		City.DataBind();
		//City.Items.Insert(0, new ListItem("Select a City", ""));
		City.Items.Insert(0, new ListItem("All Cities", "-1"));
	}
}
