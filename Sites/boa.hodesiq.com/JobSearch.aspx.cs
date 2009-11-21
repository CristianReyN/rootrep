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
        if (ViewState["PstBack"] == null)
        {
            AreaofTalent at = new AreaofTalent();
            areasoftalent.DataTextField = "Talent";
            areasoftalent.DataValueField = "TalentID";
            areasoftalent.DataSource = at.Talent();
            areasoftalent.DataBind();
            areasoftalent.Items.Insert(0, new ListItem("Select a Talent", ""));
            //areasoftalent.SelectedIndex = 0;
            jfamily.DataTextField = "Family";
            jfamily.DataValueField = "FamilyID";
            jfamily.DataSource = at.Jobfamily();
            jfamily.DataBind();
            jfamily.Items.Insert(0, new ListItem("Select a Family", ""));
            //jfamily.SelectedIndex = 0;

            Location Lo = new Location();
            State.DataTextField = "State";
            State.DataValueField = "Req_ID";
            State.DataSource = Lo.State();
            State.DataBind();
            State.Items.Insert(0, new ListItem("Select a State", ""));
            State.SelectedIndex = 0;

            City.DataTextField = "City";
            City.DataValueField = "Req_ID";
            City.DataSource = Lo.City();
            City.DataBind();
            City.Items.Insert(0, new ListItem("Select a City", ""));
            City.SelectedIndex = 0;
            ViewState["PstBack"] = "1";
        }
    }

    protected void brefine_Click(object sender, EventArgs e)
    {
        AreaofTalent at = new AreaofTalent();

        jfamily.Items.Clear();
        jfamily.DataTextField = "Family";
        jfamily.DataValueField = "FamilyID";
        jfamily.DataSource = at.TalentwiseJobfamily(areasoftalent.SelectedValue.ToString());
        jfamily.DataBind();
        jfamily.Items.Insert(0, new ListItem("Select a Family", ""));
        //jfamily.SelectedIndex = 0;


        Location Lo = new Location();

        City.Items.Clear();
        City.DataTextField = "City";
        City.DataValueField = "Req_ID";
        City.DataSource = Lo.StatewiseCity(State.SelectedValue.ToString());
        City.DataBind();
        City.Items.Insert(0, new ListItem("Select a City", ""));
        City.SelectedIndex = 0;
    }
    protected void bsearch_Click(object sender, EventArgs e)
    {
        Jobs Job = new Jobs();
        GrdResults.DataSource=Job.Search();
        GrdResults.DataBind();

    }
}
