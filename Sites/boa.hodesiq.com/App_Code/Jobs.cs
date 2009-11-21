using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Collections;
using System.Collections.Specialized;


/// <summary>
/// Summary description for Jobs
/// </summary>
public class Jobs
{
    #region Change History
    // date		    developer	    comments
    // -----------	----------	    ----------
    //  11/27/06    Jonathan Do     Added SearchJobs to return ListDictionary for all logic for Grid, include records,
    //                              Next/Prev button, and paging logic.
    /// </summary>
    #endregion

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
        catch (Exception ex)
        {
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
        catch (Exception ex)
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

    public DataTable Search(int aot, string Jobfamily, int stateid, int cityid, string keywords, int strRec, int endRec)
    {
        DBUtils db;
        try
        {

            db = new DBUtils();
            OleDbCommand cmd = new OleDbCommand("p_boaJobSearch", db.GetConnection());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AreasOfTalent", aot);
            cmd.Parameters.AddWithValue("@Family", Jobfamily.TrimEnd(",".ToCharArray()));
            cmd.Parameters.AddWithValue("@State", stateid);
            cmd.Parameters.AddWithValue("@City", cityid);
            cmd.Parameters.AddWithValue("@KeyWords", keywords);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();


            da.Fill(ds, strRec, endRec, "SearchResults");

            //da.Fill(ds);
            //da.Fill(ds, 1, 3, "SearchResults");
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
            da.Fill(ds, strRec, endRec, "AdvSearch");
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);

    }
    public DataView AddJobCart(string JobCartID, string JobID)
    {
        DBUtils db = new DBUtils();
        OleDbCommand cmd = new OleDbCommand("Sp_Career_AddJobCard", db.GetConnection());
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@JobCartID", JobCartID);
        cmd.Parameters.AddWithValue("@JobID", JobID);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0].DefaultView;
    }
    public DataView RemoveJobCart(string JobCartID, string JobList)
    {
        DBUtils db = new DBUtils();
        OleDbCommand cmd = new OleDbCommand("Sp_Career_RemoveJobCart", db.GetConnection());
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@JobCartID", JobCartID);
        cmd.Parameters.AddWithValue("@JobList", JobList);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0].DefaultView;
    }
    public DataView RetrieveJobCart(string JobCartID)
    {
        DBUtils db = new DBUtils();
        OleDbCommand cmd = new OleDbCommand("Sp_Career_RetrieveJobCart", db.GetConnection());
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@JobCartID", JobCartID);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0].DefaultView;
    }
    public ListDictionary SearchJobs(int aot, string Jobfamily, int stateid, int cityid, string keywords, int PageNumber, int RowPerPage)
    {
        DBUtils db;

        db = new DBUtils();
        OleDbCommand cmd = new OleDbCommand("p_boaJobSearch", db.GetConnection());
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@AreasOfTalent", aot);
        cmd.Parameters.AddWithValue("@Family", Jobfamily.TrimEnd(",".ToCharArray()));
        cmd.Parameters.AddWithValue("@State", stateid);
        cmd.Parameters.AddWithValue("@City", cityid);
        cmd.Parameters.AddWithValue("@KeyWords", keywords);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataSet dsCount = new DataSet();

        da.Fill(dsCount);
        int TotalRow = dsCount.Tables[0].Rows.Count;
        int TotalPage = (TotalRow / RowPerPage) + 1;


        da.Fill(ds, (PageNumber - 1) * RowPerPage, RowPerPage, "SearchResults");

        ListDictionary MyListDictionary = new ListDictionary();
        MyListDictionary.Add("RecordCount", dsCount.Tables[0].Rows.Count);
        MyListDictionary.Add("JobSearchResults", ds.Tables[0]);
        MyListDictionary.Add("NextButton", ShowNextButton(TotalRow, PageNumber, TotalPage));
        MyListDictionary.Add("PrevButton", ShowPrevButton(TotalRow, PageNumber, TotalPage));
        if (TotalRow == 0)
            MyListDictionary.Add("PageOfPages", "Page 0 of 0");
        else
            MyListDictionary.Add("PageOfPages", "Page " + Convert.ToString(PageNumber) + " of " + Convert.ToString(TotalPage));

        return MyListDictionary;
    }
    public static Boolean ShowNextButton(int TotalRow, int PageNumber, int TotalPage)
    {
        Boolean ShowButton;
        if (TotalRow == 0)
            ShowButton = false;
        else
        {
            if (PageNumber > 1 && PageNumber < TotalPage)
                ShowButton = true;
            else if (PageNumber == 1 && PageNumber < TotalPage)
                ShowButton = true;
            else if (PageNumber > 1 && PageNumber == TotalPage)
                ShowButton = false;
            else
                ShowButton = false;
        }
        return ShowButton;
    }
    public static Boolean ShowPrevButton(int TotalRow, int PageNumber, int TotalPage)
    {
        Boolean ShowButton;
        if (TotalRow == 0)
            ShowButton = false;
        else
        {
            if (PageNumber > 1 && PageNumber < TotalPage)
                ShowButton = true;
            else if (PageNumber == 1 && PageNumber < TotalPage)
                ShowButton = true;
            else if (PageNumber > 1 && PageNumber == TotalPage)
                ShowButton = false;
            else
                ShowButton = false;
        }
        return ShowButton;
    }
}
