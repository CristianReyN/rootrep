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
        Sql = string.Empty;
        Sql = "select req_id,city from location";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);
    
    }
    public DataTable State()
    {
        Sql = string.Empty;
        Sql = "select req_ID,State from Location";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);
    }

}
