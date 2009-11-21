using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;


/// <summary>
/// Summary description for Jobs
/// </summary>
public class Jobs
{
    string Sql;
	public Jobs()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable Travel()
    {
        Sql = string.Empty;
        Sql = "select TravelID,Travel from Travel";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);

    }

    public DataTable Type()
    {
        Sql = string.Empty;
        Sql = "select FullTimePartTimeID,FullTimePartTime from FullTimePartTime";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);

    }
    public DataTable Shift()
    {
        Sql = string.Empty;
        Sql = "select ShiftID,Shift from Shift";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);

    }

    public DataTable Language()
    {
        Sql = string.Empty;
        Sql = "select distinct Language_requirements from Jobs";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);

    }

    public DataTable PostDate()
    {
        Sql = string.Empty;
        Sql = "select PostingDate from Jobs";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);

    }
    
}
