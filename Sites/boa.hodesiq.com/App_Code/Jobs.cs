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
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select TravelID,Travel from Travel";
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }

    public DataTable Type()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select FullTimePartTimeID,FullTimePartTime from FullTimePartTime";
            db = new DBUtils();
        }
        catch (Exception ex) {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }
    public DataTable Shift()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select ShiftID,Shift from Shift";
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }

    public DataTable Language()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select distinct Language_requirements from Jobs";
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }
    /// <summary>
    /// This Function is used to fetch the PostDate from the Jobs table.
    /// </summary>
    /// <returns>Dataset Containg</returns>
    public DataTable PostDate()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select PostingDate from Jobs";
            db = new DBUtils();
        }
        catch(Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }

    public DataTable Search()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select JobsID as JobID,JobTitle as JobName,Description as Location,PostingDate as Date from Jobs";
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }
    
}
