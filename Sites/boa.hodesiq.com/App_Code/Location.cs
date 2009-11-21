using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;


/// <summary>
/// Get the details of all Location Related Data.
/// </summary>
public class Location
{
    string Sql;
	public Location()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable City()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select req_id,city from location";
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;

        }

        return db.GetDataTable(Sql);
    
    }
    public DataTable State()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select req_ID,State from Location";
            db = new DBUtils();
        }
        catch
        {
            throw ex;
        }
        return db.GetDataTable(Sql);
    }

}
