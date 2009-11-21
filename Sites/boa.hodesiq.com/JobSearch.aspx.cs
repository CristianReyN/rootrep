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


public partial class _Default : System.Web.UI.Page 
{
  protected void Page_Load(object sender, EventArgs e)
    {
        areasoftalent.Focus();
       if(!Page.IsPostBack)
        {            
            AreaofTalent at = new AreaofTalent();
                areasoftalent.DataTextField = "Talent";
                areasoftalent.DataValueField = "TalentID";
                areasoftalent.DataSource = at.Talent();
                areasoftalent.DataBind();
                areasoftalent.Items.Insert(0,new ListItem("Select a Talent", ""));
                areasoftalent.SelectedIndex = 0;

                jfamily.DataTextField = "Family";
                jfamily.DataValueField = "FamilyID";
                jfamily.DataSource = at.Jobfamily();
                jfamily.DataBind();
                jfamily.Items.Insert(0, new ListItem("Select a Family",""));
                jfamily.SelectedIndex = 0;

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

                

        }
    }
    protected void areasoftalent_SelectedIndexChanged(object sender, EventArgs e)
    {
        AreaofTalent at = new AreaofTalent();
            jfamily.DataTextField = "Family";
            jfamily.DataValueField = "FamilyID";
            jfamily.DataSource = at.TalentwiseJobfamily(areasoftalent.Text);
            jfamily.DataBind();
            jfamily.Items.Insert(0, new ListItem("Select a Family", ""));
            jfamily.SelectedIndex = 0;
    }
}
