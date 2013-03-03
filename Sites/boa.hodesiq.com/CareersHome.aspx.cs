using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Net;

public partial class CareersHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.ltrlCorremetrixScripts.Text = "";
        int intPage = 1; // true

        BuildCorremetrixScripts(intPage);

    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetCompletionList(string prefixText, int count, string contextKey)
    {
        //string[] str = { prefixText + "A", prefixText + "B", prefixText + "C", prefixText + "D" };

        //string constring = ConfigurationManager.AppSettings["StrUdlFileName"];
        string constring = ConfigurationManager.AppSettings["StrIQUdlFileName"];
        OleDbConnection con = new OleDbConnection(constring);
        con.Open();

        try
        {
            OleDbCommand cmd = new OleDbCommand("p_boaJobSearchAutoSuggest", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@KeyWords", prefixText);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            string[] jobSuggestions = new string[ds.Tables[0].Rows.Count];

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                jobSuggestions[i] = ds.Tables[0].Rows[i]["JobName"].ToString();
            }

            //return (from m in jobSuggestions where m.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase) select m).Take(count).ToArray();
            return jobSuggestions;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }

    }

    protected void BuildCorremetrixScripts(int intPage)
    {

        string strScript = "";

        strScript = "<!-- BEGIN COREMETRICS SUPPORT -->" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='https://www.bankofamerica.com/pa/global-assets/external/coremetrics/hp/eluminate.js'  type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='https://www.bankofamerica.com/pa/global-assets/external/coremetrics/hp/cmdatatagutils.js' type='text/javascript'></script>" + System.Environment.NewLine;

        //string url = Request.ServerVariables["URL"];
        //url = url.Remove(0, url.LastIndexOf("/") + 1);

        strScript += "<script language='javascript1.1' src='includes/jquery-1.6.2.min.js' type='text/javascript'></script>" + System.Environment.NewLine;
        strScript += "<script language='javascript1.1' src='includes/CoremetricsLinkGen.js' type='text/javascript'></script>" + System.Environment.NewLine;


        strScript += "<script language='javascript1.1' type='text/javascript'>" + System.Environment.NewLine;
        strScript += "//<!—" + System.Environment.NewLine;
        if (ConfigurationManager.AppSettings["StrAppServerName"] == "PRO" && intPage == 1)
        { strScript += "cmSetProduction();" + System.Environment.NewLine; }
        else
        {
            strScript += "cmSetStaging();" + System.Environment.NewLine;

        }
        //strScript += "cmCreatePageviewTag('" +strPageName + "', null, null, 'career:jobsearch');" + System.Environment.NewLine; //, false, false, null, false, false, null, null, null
        //strScript += "//-->" + System.Environment.NewLine;
        strScript += "</script>" + System.Environment.NewLine;
        strScript += "<!-- END COREMETRICS -->" + System.Environment.NewLine;

        this.ltrlCorremetrixScripts.Text = strScript;

    }
}