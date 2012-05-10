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

public partial class AutoSuggestTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetCompletionList(string prefixText, int count, string contextKey)
    {
        //string[] str = { prefixText + "A", prefixText + "B", prefixText + "C", prefixText + "D" };

        string constring = ConfigurationManager.AppSettings["StrUdlFileName"];
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
}