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
        

    }

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

    public DataTable GetDataTable(string sql)
    {
        DataSet ds = new DataSet();
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(sql, GetConnectionString());
            da.Fill(ds);
            
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message); 
        }
        return ds.Tables[0]; 
    }

}
