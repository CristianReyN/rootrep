using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class SearchResults : System.Web.UI.Page
{
    string CheckSessionAOT = "";
    string CheckSessionState = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        areasoftalent.Focus();
        lblMessage.Text = "";
        string SearchVal;
        try
        {
            //if (Session["PstBackResult"] == null)
            //{
                SearchVal=(Convert.ToString(Session["ArrSearchvalues"]));
                string[] s=SearchVal.Split('$');
                

                AreaofTalent at = new AreaofTalent();
                areasoftalent.DataTextField = "Talent";
                areasoftalent.DataValueField = "TalentID";
                areasoftalent.DataSource = at.Talent();
                areasoftalent.DataBind();
                areasoftalent.Items.Insert(0, new ListItem("Select a Talent", ""));
                areasoftalent.SelectedIndex = Convert.ToInt32(s[1]);
                
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
                State.SelectedIndex = Convert.ToInt32(s[2]); 

                City.DataTextField = "City";
                City.DataValueField = "Req_ID";
                City.DataSource = Lo.City();
                City.DataBind();
                City.Items.Insert(0, new ListItem("Select a City", ""));
                City.SelectedIndex = Convert.ToInt32(s[3]);
                keywords.Text = s[4];

            }
        //}
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        
        //Session["PstBackResult"] = 2;
    }



    protected void brefine_Click(object sender, EventArgs e)
    {
        AreaofTalent at = new AreaofTalent();

        jfamily.Items.Clear();
        jfamily.DataTextField = "Family";
        jfamily.DataValueField = "FamilyID";
        jfamily.DataSource = at.TalentwiseJobfamily(CheckSessionAOT);
        jfamily.DataBind();
        jfamily.Items.Insert(0, new ListItem("Select a Family", ""));
        //jfamily.SelectedIndex = 0;


        Location Lo = new Location();

        City.Items.Clear();
        City.DataTextField = "City";
        City.DataValueField = "Req_ID";
        City.DataSource = Lo.StatewiseCity(CheckSessionState);
        City.DataBind();
        City.Items.Insert(0, new ListItem("Select a City", ""));
        City.SelectedIndex = 0;

        Session["PstBackResult"] = 2;
    }
    protected void bsearch_Click(object sender, EventArgs e)
    {
        
        Session["PstBackResult"] = 2;
        string ArrSearchValues;
        string selVal = "";
        for (int i = 0; i < jfamily.Items.Count; i++)
        {
            if (jfamily.Items[i].Selected)
            {
                if (selVal == "")
                    selVal = jfamily.Items[i].Value.ToString();
                else
                    selVal += "," + jfamily.Items[i].Value.ToString();
            }

        }
        ArrSearchValues = "";
        Session["ArrSearchvalues"] = "";
        selVal = "";
        ArrSearchValues = selVal + "$" + areasoftalent.SelectedValue + "$" + State.SelectedIndex + "$" + City.SelectedIndex + "$" + keywords.Text;
        Session["ArrSearchvalues"] = Session["ArrSearchvalues"] + "$" + ArrSearchValues;
        
       Response.Redirect("SearchResults.aspx");
    }
    protected void areasoftalent_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckSessionAOT = areasoftalent.SelectedIndex.ToString();
        
    }
    protected void State_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckSessionState = State.SelectedIndex.ToString();
    }
}
