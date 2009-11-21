using System;
using System.Data;
using System.Data.OleDb;
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
        

    }
    /// <summary>
    /// Db Connection String is fetched fro the UDL
    /// </summary>
    /// <returns>Connection String</returns>
    private string GetConnectionString()
    {
        try
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
        catch(Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    /// <summary>
    /// Fetches  the Data for the given Query and filles the Dataset
    /// </summary>
    /// <param name="sql">Sql Query</param>
    /// <returns>Dataset (Recordset)</returns>
    public DataTable GetDataTable(string sql)
    {
        DataSet ds = new DataSet();
        try
        {
            OleDbConnection con = new OleDbConnection(ConfigurationManager.AppSettings["StrUdlFileName"]);
            con.Open();
            OleDbDataAdapter da = new OleDbDataAdapter(sql, con);
            da.Fill(ds);
            con.Close();
            
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message); 
        }
        return ds.Tables[0]; 
    }

}
