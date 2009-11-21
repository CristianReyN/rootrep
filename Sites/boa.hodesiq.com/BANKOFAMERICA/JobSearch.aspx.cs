using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
//using System.Data.Sql;  
using System.IO;


public partial class JobSearch : System.Web.UI.Page 
{
    public int GlbLoadCheck;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (ViewState["PstBack"] == null)
        if (! this.IsPostBack)
        {
            if (string.IsNullOrEmpty(Request["stateid"]))
            {
                PopulateAreasofTalentandJobFamily();

                PopulateLocations();
            }
            else
            {
                PopulateAreasofTalentandJobFamily();

                PopulateLocations();

                FunSearch();
            }

        }
    }

    protected void brefine_Click(object sender, EventArgs e)
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
        AreaofTalent at = new AreaofTalent();

        jfamily.Items.Clear();
        jfamily.DataTextField = "Family";
        jfamily.DataValueField = "FamilyID";
        jfamily.DataSource = at.TalentwiseJobfamily(areasoftalent.SelectedValue.ToString());
        jfamily.DataBind();
        //jfamily.SelectedIndex = 0;


        Location Lo = new Location();
        City.Items.Clear();
        City.DataTextField = "City";
        City.DataValueField = "Cityid";
        if (State.SelectedIndex ==0)
        City.DataSource = Lo.StatewiseCity(1);
        else
        City.DataSource = Lo.StatewiseCity(Convert.ToInt32(State.SelectedValue));
        City.DataBind();
        City.Items.Insert(0, new ListItem("Select a City", ""));
        City.Items.Insert(1,new ListItem("All Cities","-1"));
        City.SelectedIndex = 0;
    }
    protected void bsearch_Click(object sender, EventArgs e)
    {
        FunSearch();

    }
    protected void LnkNxt_Click(object sender, EventArgs e)
    {
        
        ViewState["strRec"] = (int)(ViewState["strRec"]) + 12;
        FunSearch();
        //ViewState["endRec"] = (int)(ViewState["endRec"]) + 12;
    }
    protected void LnkPrvs_Click(object sender, EventArgs e)
    {
        
        if ((int)ViewState["strRec"] <= 12)
        {
            ViewState["strRec"] = 1;
            //ViewState["endRec"] = 12;
        }
        else
        {
            ViewState["strRec"] = (int)(ViewState["strRec"]) - 12;
            //ViewState["endRec"] = (int)(ViewState["endRec"]) - 12;
        }
        FunSearch();
    }

    public void FunSearch()
    {
        int aot = -1;
        string jf = string.Empty;
        int stateid = -1;
        int cityid =-1;
        string keywrd = string.Empty;
        aot = string.IsNullOrEmpty(areasoftalent.SelectedValue) ? -1: Convert.ToInt32( areasoftalent.SelectedItem.Value);
        if (string.IsNullOrEmpty(Request["stateid"]) || this.Page.IsPostBack)
        {
            foreach (ListItem li in jfamily.Items)
            {
                if (li.Value != string.Empty && li.Selected)
                {
                    jf += Convert.ToInt32(li.Value) + ",";
                }
            }
            if (State.SelectedIndex == 0)
            {
                stateid = -1;
            }
            else
            {
                stateid = Convert.ToInt32(State.SelectedItem.Value);
            }
            if (City.SelectedIndex == 0)
            {
                cityid = -1;
            }
            else
            {
                cityid = Convert.ToInt32(City.SelectedItem.Value);
            }
            keywrd = keywords.Text;
        }
        else
        {
            jf = Request["jfamily"];
            aot = string.IsNullOrEmpty(Request["areasoftalent"])?-1: Convert.ToInt32(Request["areasoftalent"]);
            stateid = string.IsNullOrEmpty(Request["stateid"])?-1: Convert.ToInt32( Request["stateid"]);
            cityid = string.IsNullOrEmpty(Request["cityid"])?-1: Convert.ToInt32( Request["cityid"]);
            keywrd =  Request["keywords"];
        }
        Jobs Job = new Jobs();
        if (ViewState["strRec"] == null)
        {
            ViewState["strRec"] = 1;
            ViewState["endRec"] = 12;
        }
        GrdResults.DataSource = Job.Search(aot, jf, stateid, cityid, keywrd, (int)(ViewState["strRec"]), (int)(ViewState["endRec"]));
        GrdResults.DataBind();
        LnkNxt.Visible = true;
        LnkPrvs.Visible = true;
        
    }


    protected void PopulateAreasofTalentandJobFamily()
    {
        AreaofTalent at = new AreaofTalent();
        
        areasoftalent.DataTextField = "Talent";
        areasoftalent.DataValueField = "TalentID";
        areasoftalent.DataSource = at.Talent();
        areasoftalent.DataBind();
        areasoftalent.Items.Insert(0, new ListItem("Select a Talent", "-1"));

        jfamily.DataTextField = "Family";
        jfamily.DataValueField = "FamilyID";
        jfamily.DataSource = at.Jobfamily();
        jfamily.DataBind();
        

    }


    protected void PopulateLocations()
    {
        Location Lo = new Location();
        State.DataTextField = "State";
        State.DataValueField = "Stateid";
        State.DataSource = Lo.State();
        State.DataBind();
        State.Items.Insert(0, new ListItem("Select a State", "-1"));
        State.SelectedIndex = 0;
    }


}
