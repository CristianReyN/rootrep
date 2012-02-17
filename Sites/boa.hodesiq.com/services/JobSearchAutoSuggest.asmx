<%@ WebService Language="C#" Class="JobSearchAutoSuggest" %>

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Data.OleDb;

[WebService(Namespace = "http://localhost/boa/services/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class JobSearchAutoSuggest  : System.Web.Services.WebService {

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod(EnableSession = true)]
    public string[] GetCompletionList(string prefixText, int count)
    {
        // Create array of items  
        string[] jobSuggestions = { "Star Wars", "Star Trek", "Superman", "Memento", "Shrek", "Shrek II" };

        /*
        string constring = "D:\\data\\db\\Boa.udl";
        OleDbConnection con = new OleDbConnection(constring);
        con.Open();
        try
        {
            OleDbCommand cmd = new OleDbCommand("Sp_Career_Sites_select_Advsearch_results", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Family", null);
            cmd.Parameters.AddWithValue("@State", null);
            cmd.Parameters.AddWithValue("@City", null);
            cmd.Parameters.AddWithValue("@Travel", null);
            cmd.Parameters.AddWithValue("@Lang", null);
            cmd.Parameters.AddWithValue("@fullPart", null);
            cmd.Parameters.AddWithValue("@Shift", null);
            cmd.Parameters.AddWithValue("@PostDate", null);
            cmd.Parameters.AddWithValue("@KeyWords", prefixText);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            string[] jobSuggestions;
            jobSuggestions = StringArray(ds);

            //return (from m in jobSuggestions where m.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase) select m).Take(count).ToArray();
                
         */
        return jobSuggestions;
        /*}
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        */
    }

    private string[] StringArray(DataSet ds)
    {
        string[] stringArray = new string[ds.Tables[0].Columns.Count];

        for (int col = 0; col < ds.Tables[0].Columns.Count; ++col)
        {
            stringArray[col] = ds.Tables[0].Rows[0][col].ToString();
        }

        return stringArray;
    }

    
}