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

public partial class AdvanceSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //jfamily.Focus();
        lblMessage.Text = "";
        
            try
            {
                if (ViewState["PstBack"] == null)
                {
                    AreaofTalent At = new AreaofTalent();
                    jfamily.DataTextField = "Family";
                    jfamily.DataValueField = "FamilyID";
                    jfamily.DataSource = At.Jobfamily();
                    jfamily.DataBind();
                    jfamily.Items.Insert(0, new ListItem("Select a Family", ""));
                    //jfamily.SelectedIndex = 0;

                    Location Lo = new Location();
                    State.DataTextField = "State";
                    State.DataValueField = "State";
                    State.DataSource = Lo.State();
                    State.DataBind();
                    State.Items.Insert(0, new ListItem("Select a State", ""));
                    //State.SelectedIndex = 0;

                    City.DataTextField = "City";
                    City.DataValueField = "City";
                    City.DataSource = Lo.City();
                    City.DataBind();
                    City.Items.Insert(0, new ListItem("Select a City", ""));
                    //City.SelectedIndex = 0;

                    Jobs Job = new Jobs();
                    travel.DataTextField = "Travel";
                    travel.DataValueField = "TravelID";
                    travel.DataSource = Job.Travel();
                    travel.DataBind();
                    travel.Items.Insert(0, new ListItem("All", ""));
                    //travel.SelectedIndex = 0;

                    shift.DataTextField = "shift";
                    shift.DataValueField = "shiftID";
                    shift.DataSource = Job.Shift();
                    shift.DataBind();
                    shift.Items.Insert(0, new ListItem("All", ""));
                    //shift.SelectedIndex = 0;

                    fullpart.DataTextField = "FullTimePartTime";
                    fullpart.DataValueField = "FullTimePartTimeID";
                    fullpart.DataSource = Job.Type();
                    fullpart.DataBind();
                    fullpart.Items.Insert(0, new ListItem("All", ""));
                    //fullpart.SelectedIndex = 0;

                    lang.DataTextField = "Language_requirements";
                    lang.DataValueField = "Language_requirements";
                    lang.DataSource = Job.Language();
                    lang.DataBind();
                    lang.Items.Insert(0, new ListItem("All Languages", ""));
                    //lang.SelectedIndex = 0;
                    ViewState["PstBack"] = "1";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }

       
    }
    protected void bsearch_Click(object sender, EventArgs e)
    {
        funAdvSearch();
    }

    public void funAdvSearch()
    {


        string jf = "";
        string state = "";
        string city = "";
        string keywrd = "";
        string fullPart = "";
        string Travel = "";
        string Lang = "";
        string Shift = "";
        string PostDate = "";


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
        for (int i = 0; i < fullpart.Items.Count; i++)
        {
            if (fullpart.SelectedIndex != 0)
            {
                if (fullpart.Items[i].Selected)
                {
                    if (fullPart == "")
                        fullPart = fullpart.Items[i].Value.ToString();
                    else
                        fullPart += "," + fullpart.Items[i].Value.ToString();
                }
            }
        }

        for (int i = 0; i < State.Items.Count; i++)
        {
            if (State.SelectedIndex != 0)
            {
                if (State.Items[i].Selected)
                {
                    if (state == "")
                        state = "'" + State.Items[i].Text.ToString() + "'";
                    else
                        state += "," + "'" + State.Items[i].Text.ToString() + "'";
                }
            }
        }


        for (int i = 0; i < City.Items.Count; i++)
        {
            if ((City.SelectedIndex != 0))
            {
                if (City.Items[i].Selected)
                {
                    if (city == "")
                        city = "'" + City.Items[i].Text.ToString() + "'";
                    else
                        city += "," + "'" + City.Items[i].Text.ToString() + "'";
                }
            }
        }

        for (int i = 0; i < shift.Items.Count; i++)
        {
            if (shift.SelectedIndex != 0)
            {
                if (shift.Items[i].Selected)
                {
                    if (Shift == "")
                        Shift = shift.Items[i].Value.ToString();
                    else
                        Shift += "," + shift.Items[i].Value.ToString();
                }
            }
        }

        for (int i = 0; i < lang.Items.Count; i++)
        {
            if (lang.SelectedIndex != 0)
            {
                if (lang.Items[i].Selected)
                {
                    if (Lang == "")
                        Lang = "'" + lang.Items[i].Value.ToString() + "'";
                    else
                        Lang += "," + "'" + lang.Items[i].Value.ToString() + "'";
                }
            }
        }



        Travel = travel.SelectedValue;
        PostDate = datepost.SelectedValue;
        keywrd = keywords.Text;
        if (ViewState["strRec"] == null)
        {
            ViewState["strRec"] = 1;
            ViewState["endRec"] = 12;
        }
        Jobs Job = new Jobs();
        GrdResults.DataSource = Job.AdvSearch(jf, state, city, Travel, Lang, fullPart, Shift, PostDate, keywrd, (int)(ViewState["strRec"]), (int)(ViewState["endRec"]));
        GrdResults.DataBind();
        LnkNxt.Visible = true;
        LnkPrvs.Visible = true;
    
    
    }
    protected void LnkNxt_Click(object sender, EventArgs e)
    {
        ViewState["strRec"] = (int)(ViewState["strRec"]) + 12;
        funAdvSearch();
    }
    protected void LnkPrvs_Click(object sender, EventArgs e)
    {

        if ((int)ViewState["strRec"] <= 12)
        {
            ViewState["strRec"] = 1;
            
        }
        else
        {
            ViewState["strRec"] = (int)(ViewState["strRec"]) - 12;
            
        }
        funAdvSearch();
    }
}
