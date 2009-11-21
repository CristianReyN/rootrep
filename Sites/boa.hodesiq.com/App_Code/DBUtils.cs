using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.IO; 

/// <summary>
/// Summary description for DBUtils
/// </summary>
public class DBUtils
{
    string ConnectionStr;

	public DBUtils()
	{
        
 
	}

    private static void DBOpen()
    {
        /*
        StreamReader sr = new StreamReader(@ConfigurationManager.AppSettings["StrUdlFileName"]);
        string ConnStr = sr.ReadToEnd().ToString();
        ConnStr = ConnStr.Substring(ConnStr.IndexOf("Integrated Security"));
        Conn = new SqlConnection(ConnStr);
        Conn.Open();
         * */


    }

    private string GetConnectionString()
    {
        if (ConnectionStr == null)
        {
            StreamReader sr = new StreamReader(@ConfigurationManager.AppSettings["StrUdlFileName"]);
            ConnectionStr = sr.ReadToEnd().ToString();
            ConnectionStr = ConnectionStr.Substring(ConnectionStr.IndexOf("Integrated Security"));
            sr.Close();
        }
        return ConnectionStr;
    }

    public DataTable GetDataTable(string sql)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(sql, GetConnectionString());
        da.Fill(ds);
        return ds.Tables[0]; 
    }

}
