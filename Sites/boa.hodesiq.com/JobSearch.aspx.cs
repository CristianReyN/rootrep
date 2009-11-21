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
            State.DataValueField = "State";
            State.DataSource = Lo.State();
            State.DataBind();
            State.Items.Insert(0, new ListItem("Select a State", ""));
            State.SelectedIndex = 0;

            //City.DataTextField = "City";
            //City.DataValueField = "Req_ID";
            //City.DataSource = Lo.City();
            //City.DataBind();
            //City.Items.Insert(0, new ListItem("Select a City", ""));
            //City.SelectedIndex = 0;
            ViewState["PstBack"] = "1";
        }
    }

    protected void brefine_Click(object sender, EventArgs e)
    {
        if (State.SelectedIndex != 0 && State.SelectedIndex != 1)
        {
            City.Visible = true;
            LblCity.Visible = true;
        }
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
        City.DataValueField = "City";
        if (State.SelectedIndex ==0)
        City.DataSource = Lo.StatewiseCity("1");
        else
        City.DataSource = Lo.StatewiseCity(State.SelectedItem.ToString());
        City.DataBind();
        City.Items.Insert(0, new ListItem("Select a City", ""));
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
        string aot;
        string jf = "";
        string state;
        string city;
        string keywrd;
        aot = areasoftalent.SelectedItem.Value.ToString();
        for (int i = 0; i < jfamily.Items.Count; i++)
        {
            if (jfamily.SelectedIndex != 0)
            {
                if (jfamily.Items[i].Selected)
                {
                    if (jf == "")
                        jf = "'" + jfamily.Items[i].Text.ToString() + "'";
                    else
                        jf += "," + "'" + jfamily.Items[i].Text.ToString() + "'";
                }
            }
        }
        if (State.SelectedIndex == 0)
        {
            state = "";
        }
        else
        {
            state = State.SelectedItem.Text.ToString();
        }
        if (City.SelectedIndex == 0)
        {
            city = "";
        }
        else
        {
            city = City.SelectedItem.Text.ToString();
        }
        keywrd = keywords.Text;
        Jobs Job = new Jobs();
        if (ViewState["strRec"] == null)
        {
            ViewState["strRec"] = 1;
            ViewState["endRec"] = 12;
        }
        GrdResults.DataSource = Job.Search(aot, jf, state, city, keywrd, (int)(ViewState["strRec"]), (int)(ViewState["endRec"]));
        GrdResults.DataBind();
        LnkNxt.Visible = true;
        LnkPrvs.Visible = true;
        
    }

}
