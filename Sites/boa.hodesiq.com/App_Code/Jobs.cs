using System;
using System.Data;
using System.Data.OleDb;
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
            Sql = "select distinct Language_requirements from Jobs1";
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
            Sql = "select Posting_Date from Jobs1";
            db = new DBUtils();
        }
        catch(Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }
    public DataTable JobDetails(string JobId)
    {
        DBUtils db;
        try
        {
            db = new DBUtils();
            OleDbCommand cmd = new OleDbCommand("Sp_Career_Sites_JobDetails", db.GetConnection());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@JobId", JobId);
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

    public DataTable Search(int aot,string Jobfamily,int stateid,int cityid,string keywords,int strRec,int endRec)
    {
        DBUtils db;
        try
        {
            
            db = new DBUtils();
            OleDbCommand cmd = new OleDbCommand("p_boaJobSearch", db.GetConnection());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AreasOfTalent", aot);
            cmd.Parameters.AddWithValue("@Family", Jobfamily);
            cmd.Parameters.AddWithValue("@State", stateid);
            cmd.Parameters.AddWithValue("@City", cityid);
            cmd.Parameters.AddWithValue("@KeyWords", keywords);
            cmd.Parameters.AddWithValue("@whichtable", Convert.ToInt32(ConfigurationManager.AppSettings["searchtableOne"]));

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
           
            da.Fill(ds,strRec,endRec,"SearchResults");
            //da.Fill(ds);
            //int o;
            //o = ds.Tables[0].Rows.Count;

            return ds.Tables[0];                        
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }

    public DataTable AdvSearch(string jf, string state, string city, string Travel, string Lang, string fullPart, string Shift, string PostDate, string keywrd, int strRec, int endRec)
    {
        DBUtils db;
        try
        {
            if (PostDate == "0")
                PostDate = "";
            
            db = new DBUtils();
            OleDbCommand cmd = new OleDbCommand("Sp_Career_Sites_select_AdvSearch_results", db.GetConnection());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Family", jf);
            cmd.Parameters.AddWithValue("@State", state);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@Travel", Travel);
            cmd.Parameters.AddWithValue("@Lang", Lang);
            cmd.Parameters.AddWithValue("@fullPart", fullPart);
            cmd.Parameters.AddWithValue("@Shift", Shift);
            cmd.Parameters.AddWithValue("@PostDate", PostDate);
            cmd.Parameters.AddWithValue("@KeyWords", keywrd);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds,strRec,endRec,"AdvSearch");
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }

}
