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
	//                              (3) Added FilterCity() to filter when select AreaOfTalent and State
	//                              index change and filter when redirect back from job detail.
	/// </summary>
	#endregion

	private int RecPerPage = 12;
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!this.IsPostBack)
		{
			PopulateLocations();
			PopulateCity();
			if (string.IsNullOrEmpty(Request["stateid"]))
			{
				ddlJobAreas.SelectedIndex = 0;
				ddlState.SelectedIndex = 0;
			}
			else
			{
				BindSearchString();
				ViewState["PageNumber"] = 1;
				FunSearch();
			}
		}
		PopulateJobAreas();

		DisplaySearchButton();
	}

	protected void Page_PreRender()
	{

	}
	public void BindSearchString()
	{
		ListItem MyListItem;
		string MyValue;



		MyValue = String.IsNullOrEmpty(Request.QueryString["stateid"]) == false ? Request.QueryString["stateid"] : "-1";
		MyListItem = ddlState.Items.FindByValue(MyValue);
		if (MyListItem != null)
			MyListItem.Selected = true;
		if (MyValue.ToString() != "-1")
		{
			FilterCity(Convert.ToInt32(MyValue));
			ddlCity.Visible = true;
		}

		MyListItem = ddlCity.Items.FindByValue(String.IsNullOrEmpty(Request.QueryString["cityid"]) == false ? Request.QueryString["cityid"] : "-1");
		if (MyListItem != null)
			MyListItem.Selected = true;
		keywords.Text = String.IsNullOrEmpty(Request.QueryString["keywords"]) == false ? Request.QueryString["keywords"] : "";
	}

	protected void State_SelectedIndexChanged(object sender, System.EventArgs e)
	{
		if (ddlState.SelectedIndex > 1)
		{
			ddlCity.Visible = true;
			lblCity.Visible = true;
		}
		else
		{
			ddlCity.Visible = false;
			lblCity.Visible = false;
		}
		FilterCity(Convert.ToInt32(ddlState.SelectedValue));
		ddlCity.SelectedIndex = 0;
	}
	public void FilterCity(int CityID)
	{
		Location Lo = new Location();
		ddlCity.Items.Clear();
		ddlCity.DataTextField = "City";
		ddlCity.DataValueField = "Cityid";
		if (ddlState.SelectedIndex == 0)
			ddlCity.DataSource = Lo.StatewiseCity(1);
		else
			ddlCity.DataSource = Lo.StatewiseCity(CityID);
		ddlCity.DataBind();
		//ddlCity.Items.Insert(0, new ListItem("Select a City", ""));
		ddlCity.Items.Insert(0, new ListItem("All Cities", "-1"));
		//ddlCity.SelectedIndex = 0;
	}
	public void RefineSearch(string StateID)
	{
		if (ddlState.SelectedItem.Value != "-1")
		{
			FilterCity(Convert.ToInt32(ddlState.SelectedItem.Value));
			ddlCity.Visible = true;
			ddlCity.SelectedIndex = 0;
			lblCity.Visible = true;
		}
		else
		{
			ddlCity.Visible = false;
			lblCity.Visible = false;
		}
	}
	protected void brefine_Click(object sender, EventArgs e)
	{
		RefineSearch( ddlState.SelectedItem.Value);
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
		string[] aja = { "-1", "-1" };
		if (ddlJobAreas.SelectedValue != "-1" & ddlJobAreas.SelectedValue != string.Empty)
		{
			aja = ddlJobAreas.SelectedValue.Split("|".ToCharArray());
		}
		else if(Request.QueryString["jobareas"]!=string.Empty)
		{
			aja = Request.QueryString["jobareas"].Split("|".ToCharArray());
		}
		int aot = (aja[0]==null) ? -1 : Convert.ToInt32(aja[0]);
		string jf = string.IsNullOrEmpty(aja[1].ToString()) ? "" : aja[1];
		
		int stateid = string.IsNullOrEmpty(ddlState.SelectedValue) ? -1 : Convert.ToInt32(ddlState.SelectedItem.Value);
		int cityid;
		if (stateid == -1)
			cityid = -1;
		else
			cityid = string.IsNullOrEmpty(ddlCity.SelectedValue) ? -1 : Convert.ToInt32(ddlCity.SelectedItem.Value);
		string keywrd = keywords.Text;

		Jobs Job = new Jobs();

		ListDictionary MyListDictionary = new ListDictionary();
		MyListDictionary = Job.SearchJobs(aot, jf, stateid, cityid, keywrd, (int)(ViewState["PageNumber"]), RecPerPage);
		DataTable DT = (DataTable)MyListDictionary["JobSearchResults"];

		GrdResults.DataSource = DT;
		GrdResults.DataBind();

		LnkPrvs.Visible = (Boolean)MyListDictionary["PrevButton"];
		LnkNxt.Visible = (Boolean)MyListDictionary["NextButton"];
		lPrev.Visible = (Boolean)MyListDictionary["PrevButton"];
		lNext.Visible = (Boolean)MyListDictionary["NextButton"];
		LblPageOfPages.Text = MyListDictionary["PageOfPages"].ToString();
		this.lblJobofJobs.Visible = Convert.ToBoolean(MyListDictionary["RecordCount"]);
		this.lblJobofJobs.Text = MyListDictionary["JobToJobs"].ToString();
	}

	protected void PopulateLocations()
	{
		Location Lo = new Location();
		OleDbDataReader dr;
		ddlState.DataTextField = "State";
		ddlState.DataValueField = "Stateid";
		dr = Lo.StateDR();
		ddlState.DataSource = dr; 
		ddlState.DataBind();
		ddlState.Items.Insert(0, new ListItem("All States", "-1"));
		dr.Close();
	}
	protected void PopulateCity()
	{
		Location Lo = new Location();
		OleDbDataReader dr;
		ddlCity.Items.Clear();
		ddlCity.DataTextField = "City";
		ddlCity.DataValueField = "Cityid";
		//if (ddlState.SelectedIndex == 0)
		dr = Lo.StatewiseCityDR(1);
		ddlCity.DataSource = dr;
		ddlCity.DataBind();
		ddlCity.Items.Insert(0, new ListItem("All Cities", "-1"));
		dr.Close();
	}

	protected void PopulateJobAreas()
	{
		string selVal;
		selVal = String.IsNullOrEmpty(Request.QueryString["jobareas"]) == false ? Request.QueryString["jobareas"] : this.ddlJobAreas.SelectedValue;
		this.ddlJobAreas.Items.Clear();
		OleDbDataReader dr;
		AreaofTalent ja = new AreaofTalent();
		dr = ja.JobAreasList();
		ListItem l = new ListItem("Select a Job Area", string.Empty);
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

	protected void btnJobCart_Click(object sender, EventArgs e)
	{
		Response.Redirect("jobcart.aspx");
	}
	protected void btnAdvanceSearch_Click(object sender, EventArgs e)
	{
		Response.Redirect("AdvanceSearch.aspx");
	}

	protected void DisplaySearchButton()
	{
		this.dsubmit.Attributes.Add("style", " display: none; padding: 1");
		this.lsearch.CssClass = "ie-btn";
		//this.lsearch.Visible = true;
		this.lsearch.Text = "Search";
		this.lsearch.Width = this.lsearch.Text.Length;

		this.dNxtPrev.Attributes.Add("style", " display: none; padding: 1");
		this.lNext.CssClass = "ie-btn";
		//this.lNext.Visible = true;
		this.lNext.Width = this.lNext.Text.Length;
		this.lPrev.CssClass = "ie-btn";
		//this.lPrev.Visible = true;
		this.lPrev.Width = this.lPrev.Text.Length;


		this.litScript.Text = @"<script language=""JavaScript"" type=""text/javascript"">
								document.getElementById('" + this.dsubmit.ClientID + @"').style.display=""inline"";
								document.getElementById('" + this.dNxtPrev.ClientID + @"').style.display=""inline"";
								</script>";
	}
}
