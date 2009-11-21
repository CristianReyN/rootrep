using System;
using System.Data;
using System.Data.OleDb;
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
            Sql = "select distinct city from locations1";
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
            Sql = "select distinct State from Locations1";
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);
    }

    public DataTable StatewiseCity(string StateVal)
    {
        DBUtils db;
        try
        {

            db = new DBUtils();
            OleDbCommand cmd = new OleDbCommand("Sp_Career_Sites_select_City ", db.GetConnection());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@State", StateVal);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);


    }

}
