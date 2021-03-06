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
    //  11/27/06    Jonathan Do     (1) Added SearchJobs to return ListDictionary for all logic for Grid, include records,
    //                              Next/Prev button, and paging logic.
    //                              (2) added RemoveJobCart(), AddJobCart(), RetrieveJobCart()
    /// </summary>
    #endregion

    string Sql;
	private string constring;
    private string consolidatedConn;
    const string USA = "1";

    public Jobs()
    {
		constring = ConfigurationManager.AppSettings["StrUdlFileName"];
        consolidatedConn = ConfigurationManager.AppSettings["StrCareersUdlFileName"];
    }
    public DataTable Travel()
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
        {
            Sql = string.Empty;
            Sql = "select TravelID,Travel from Travel";
			DataSet ds = new DataSet();

			OleDbDataAdapter da = new OleDbDataAdapter(Sql, con);
			da.Fill(ds);
			con.Close();
			return ds.Tables[0];
		}
		catch (Exception ex)
		{
			throw ex;
		}
		finally
		{
			con.Close();
		}

    }

    public DataTable Type()
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
        {
            Sql = string.Empty;
            Sql = "select FullTimePartTimeID,FullTimePartTime from FullTimePartTime";
			DataSet ds = new DataSet();

			OleDbDataAdapter da = new OleDbDataAdapter(Sql, con);
			da.Fill(ds);
			con.Close();
			return ds.Tables[0];
		}
		catch (Exception ex)
		{
			throw ex;
		}
		finally
		{
			con.Close();
		}

    }
    public DataTable Shift()
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
        {
            Sql = string.Empty;
            Sql = "select ShiftID,Shift from Shift";
			DataSet ds = new DataSet();

			OleDbDataAdapter da = new OleDbDataAdapter(Sql, con);
			da.Fill(ds);
			con.Close();
			return ds.Tables[0];
		}
		catch (Exception ex)
		{
			throw ex;
		}
		finally
		{
			con.Close();
		}

    }

    public DataTable Language()
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
        {
            Sql = string.Empty;
            Sql = "select distinct Language_requirements from Jobs1";
			DataSet ds = new DataSet();

			OleDbDataAdapter da = new OleDbDataAdapter(Sql, con);
			da.Fill(ds);
			con.Close();
			return ds.Tables[0];
		}
		catch (Exception ex)
		{
			throw ex;
		}
		finally
		{
			con.Close();
		}

    }
    /// <summary>
    /// This Function is used to fetch the PostDate from the Jobs table.
    /// </summary>
    /// <returns>Dataset Containg</returns>
    public DataTable PostDate()
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
        {
            Sql = string.Empty;
            Sql = "select Posting_Date from Jobs1";
			DataSet ds = new DataSet();

			OleDbDataAdapter da = new OleDbDataAdapter(Sql, con);
			da.Fill(ds);
			con.Close();
			return ds.Tables[0];
		}
		catch (Exception ex)
		{
			throw ex;
		}
		finally
		{
			con.Close();
		}

    }

     public  DataTable JobDetails(string JobId,string CountryId,string LocationID,string FeedName)
    {
        if (CountryId != USA)
        {
            return JobDetailsInternational(JobId, CountryId,LocationID,FeedName);
        }
        else
        {
            return JobDetails(JobId);    
        }
     }


    public DataTable JobDetails(string JobId)
    {
        
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
		{
			OleDbCommand cmd = new OleDbCommand("Sp_Career_Sites_JobDetails", con);
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
		finally
		{
			con.Close();
		}

    }

    public DataTable JobDetailsInternational(string JobId, string CountryId,string LocationID,string FeedName)
    {
        OleDbConnection con = new OleDbConnection(constring);
        con.Open();
        try
        {
            OleDbCommand cmd = new OleDbCommand("p_Career_Sites_JobDetails_International", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@JobId", JobId);
            cmd.Parameters.AddWithValue("@CountryID", CountryId);
            cmd.Parameters.AddWithValue("@LocationID", LocationID);
            cmd.Parameters.AddWithValue("@FeedName", FeedName);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }

    }

    public DataTable Search(int aot, string Jobfamily, int stateid, int cityid, string keywords, int strRec, int endRec)
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
		{
			OleDbCommand cmd = new OleDbCommand("p_boaJobSearch", con);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@AreasOfTalent", aot);
			cmd.Parameters.AddWithValue("@Family", Jobfamily.TrimEnd(",".ToCharArray()));
			cmd.Parameters.AddWithValue("@State", stateid);
			cmd.Parameters.AddWithValue("@City", cityid);
			cmd.Parameters.AddWithValue("@KeyWords", keywords);

			OleDbDataAdapter da = new OleDbDataAdapter(cmd);
			DataSet ds = new DataSet();

			da.Fill(ds, strRec, endRec, "SearchResults");
			return ds.Tables[0];
		}
		catch (Exception ex)
		{
			throw ex;
		}
		finally
		{
			con.Close();
		}
    }

	public DataTable AdvSearch(int aot, string jf, string state, string city, string Travel, string Lang, string fullPart, string Shift, string PostDate, string keywrd, int strRec, int endRec)
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
		{
			if (PostDate == "0")
				PostDate = "";

			OleDbCommand cmd = new OleDbCommand("Sp_Career_Sites_select_AdvSearch_results", con);
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
		finally
		{
			con.Close();
		}
    }
  
    public DataView AddJobCart(string JobCartID, string JobID)
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbCommand cmd = new OleDbCommand("Sp_Career_AddJobCard", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@JobCartID", JobCartID);
        cmd.Parameters.AddWithValue("@JobID", JobID);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
		con.Close();
        return ds.Tables[0].DefaultView;
    }

    public DataView RemoveJobCart(string JobCartID, string JobList)
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbCommand cmd = new OleDbCommand("Sp_Career_RemoveJobCart", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@JobCartID", JobCartID);
        cmd.Parameters.AddWithValue("@JobList", JobList);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
		con.Close();
        return ds.Tables[0].DefaultView;
    }

    public DataView RetrieveJobCart(string JobCartID)
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbCommand cmd = new OleDbCommand("Sp_Career_RetrieveJobCart", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@JobCartID", JobCartID);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
		con.Close();
        return ds.Tables[0].DefaultView;
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
            if (PageNumber == 1)
                ShowButton = false;
            else if (PageNumber > 1 && PageNumber < TotalPage)
                ShowButton = true;
            else if (PageNumber == 1 && PageNumber < TotalPage)
                ShowButton = true;
            else if (PageNumber > 1 && PageNumber == TotalPage)
                ShowButton = true;
            else
                ShowButton = false;
        }
        return ShowButton;
    }

	public OleDbDataReader JobDetailsDR(string JobId)
	{
		OleDbDataReader rdr;
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
		{
			OleDbCommand cmd = new OleDbCommand("Sp_Career_Sites_JobDetails ", con);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@jobid", JobId);
			cmd.Connection = con;
			rdr = cmd.ExecuteReader();
			return rdr;
		}
		catch (Exception ex)
		{
			throw ex;
		}
	}

	public OleDbDataReader TravelDR()
	{
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
		cmd.CommandText = "p_SelectTravelPercent";

		try
		{
			rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			return rdr;
		}
		catch (Exception ex)
		{
			throw ex;
		}
                
	}

	public OleDbDataReader ShiftDR()
	{
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
		cmd.CommandText = "p_SelectShift";

		try
		{
			rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			return rdr;
		}
		catch (Exception ex)
		{
			throw ex;
		}           
	}

	public OleDbDataReader TypeDR()
	{
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
		cmd.CommandText = "p_SelectFullTimePartTime";

		try
		{
			rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			return rdr;
		}
		catch (Exception ex)
		{
			throw ex;
		}
        
	}

	public OleDbDataReader LanguageDR()
	{
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
		cmd.CommandText = "p_SelectLanguageRequirements";

		try
		{
			rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			return rdr;
		}
		catch (Exception ex)
		{
			throw ex;
		}
           
	}

    public ListDictionary SearchJobs_ListDictionary(int aot, string Jobfamily, int stateid, int cityid, string keywords, int PageNumber, int RowPerPage, string SortExp, string SortOrder)
    {
        if (SortExp == null) SortExp = "";
        if (SortOrder == null) SortOrder = "";

        OleDbConnection con = new OleDbConnection(constring);
        con.Open();
        OleDbCommand cmd = new OleDbCommand("p_boaJobSearch", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@AreasOfTalent", aot);
        cmd.Parameters.AddWithValue("@Family", Jobfamily.TrimEnd(",".ToCharArray()));
        cmd.Parameters.AddWithValue("@State", stateid);
        cmd.Parameters.AddWithValue("@City", cityid);
        cmd.Parameters.AddWithValue("@KeyWords", keywords);
        cmd.Parameters.AddWithValue("@SortExp", SortExp);
        cmd.Parameters.AddWithValue("@SortOrder", SortOrder);
        OleDbParameter trows = cmd.Parameters.Add("@totalrows", OleDbType.Integer);
        trows.Direction = ParameterDirection.Output;

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, (PageNumber - 1) * RowPerPage, RowPerPage, "SearchResults");

        int TotalRow = Convert.ToInt32(trows.Value);
        int partialpagefactor;
        partialpagefactor = TotalRow % RowPerPage > 0 ? 1 : 0;
        int TotalPage = (TotalRow / RowPerPage) + partialpagefactor;

        ListDictionary MyListDictionary = new ListDictionary();
        MyListDictionary.Add("RecordCount", TotalRow);
        MyListDictionary.Add("JobSearchResults", ds.Tables[0]);
        MyListDictionary.Add("NextButton", ShowNextButton(TotalRow, PageNumber, TotalPage));
        MyListDictionary.Add("PrevButton", ShowPrevButton(TotalRow, PageNumber, TotalPage));
        if (TotalRow == 0)
            MyListDictionary.Add("PageOfPages", "Page 0 of 0");
        else
            MyListDictionary.Add("PageOfPages", "Page " + Convert.ToString(PageNumber) + " of " + Convert.ToString(TotalPage));
        int startpage;
        int endpage;
        startpage = 1 + (RowPerPage * (PageNumber - 1));
        endpage = startpage + ds.Tables[0].Rows.Count - 1;
        MyListDictionary.Add("JobToJobs", "Showing " + Convert.ToString(startpage) + " to " + Convert.ToString(endpage) + " of " + TotalRow + " jobs.");
        con.Close();
        return MyListDictionary;
    }

    public ListDictionary AdvSearch_ListDictionary(int aot, string jf, int state, int city, int Travel, string Lang, string fullPart, string Shift, int PostDate, string keywrd, int PageNumber, int RowPerPage, string SortExp, string SortOrder)
	{
        if (SortExp == null) SortExp = "";
        if (SortOrder == null) SortOrder = "";

		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbCommand cmd = new OleDbCommand("p_boaJobSearchAdvanced", con);
		cmd.CommandType = CommandType.StoredProcedure;

		cmd.Parameters.AddWithValue("@aot", aot);
		cmd.Parameters.AddWithValue("@Family", jf.TrimEnd(",".ToCharArray()));
		cmd.Parameters.AddWithValue("@State", state);
		cmd.Parameters.AddWithValue("@City", city);
		cmd.Parameters.AddWithValue("@Travel", Travel);
		cmd.Parameters.AddWithValue("@Lang", Lang.TrimEnd(",".ToCharArray()));
		cmd.Parameters.AddWithValue("@fullPart", fullPart.TrimEnd(",".ToCharArray()));
		cmd.Parameters.AddWithValue("@Shift", Shift.TrimEnd(",".ToCharArray()));
		cmd.Parameters.AddWithValue("@PostDate", PostDate);
		cmd.Parameters.AddWithValue("@KeyWords", keywrd);
        cmd.Parameters.AddWithValue("@SortExp", SortExp);
        cmd.Parameters.AddWithValue("@SortOrder", SortOrder);
		OleDbParameter trows = cmd.Parameters.Add("@totalrows", OleDbType.Integer);
		trows.Direction = ParameterDirection.Output;
		
		OleDbDataAdapter da = new OleDbDataAdapter(cmd);
		DataSet ds = new DataSet();

		da.Fill(ds, (PageNumber - 1) * RowPerPage, RowPerPage, "SearchResults");   
		
		int TotalRow = Convert.ToInt32(trows.Value);
		int partialpagefactor;
		partialpagefactor = TotalRow % RowPerPage > 0 ? 1 : 0;
		int TotalPage = (TotalRow / RowPerPage) + partialpagefactor;

		ListDictionary MyListDictionary = new ListDictionary();
		MyListDictionary.Add("RecordCount", TotalRow);
		MyListDictionary.Add("JobSearchResults", ds.Tables[0]);
		MyListDictionary.Add("NextButton", ShowNextButton(TotalRow, PageNumber, TotalPage));
		MyListDictionary.Add("PrevButton", ShowPrevButton(TotalRow, PageNumber, TotalPage));
		if (TotalRow == 0)
			MyListDictionary.Add("PageOfPages", "Page 0 of 0");
		else
			MyListDictionary.Add("PageOfPages", "Page " + Convert.ToString(PageNumber) + " of " + Convert.ToString(TotalPage));
		int startpage;
		int endpage;
		startpage = 1 + (RowPerPage * (PageNumber - 1));
		endpage = startpage + ds.Tables[0].Rows.Count - 1;
		MyListDictionary.Add("JobToJobs", "Showing " + Convert.ToString(startpage) + " to " + Convert.ToString(endpage) + " of " + TotalRow + " jobs.");
		con.Close();
		return MyListDictionary;
	}

    public ListDictionary AdvSearch_ListDictionaryInternational(string CountryID,string LocationID, string keywrd, string FamilyID, int PageNumber, int RowPerPage, string SortExp, string SortOrder,string BOAFeedName,string City)
    {
        if (SortExp == null) SortExp = "";
        if (SortOrder == null) SortOrder = "";

        OleDbConnection con = new OleDbConnection(constring);
        con.Open();
        OleDbCommand cmd = new OleDbCommand("p_boaJobSearchAdvancedInternational", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CountryID", CountryID);
        cmd.Parameters.AddWithValue("@LocationID", LocationID);
        cmd.Parameters.AddWithValue("@FamiyID", FamilyID);
        cmd.Parameters.AddWithValue("@KeyWords", keywrd);
        cmd.Parameters.AddWithValue("@SortExp", SortExp);
        cmd.Parameters.AddWithValue("@SortOrder", SortOrder);
        cmd.Parameters.AddWithValue("@BOAFeedName", BOAFeedName);
        cmd.Parameters.AddWithValue("@City", City);

        OleDbParameter trows = cmd.Parameters.Add("@totalrows", OleDbType.Integer);
        trows.Direction = ParameterDirection.Output;

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();

        da.Fill(ds, (PageNumber - 1) * RowPerPage, RowPerPage, "SearchResults");

        int TotalRow = Convert.ToInt32(trows.Value);
        int partialpagefactor;
        partialpagefactor = TotalRow % RowPerPage > 0 ? 1 : 0;
        int TotalPage = (TotalRow / RowPerPage) + partialpagefactor;

        ListDictionary MyListDictionary = new ListDictionary();
        MyListDictionary.Add("RecordCount", TotalRow);
        MyListDictionary.Add("JobSearchResults", ds.Tables[0]);
        MyListDictionary.Add("NextButton", ShowNextButton(TotalRow, PageNumber, TotalPage));
        MyListDictionary.Add("PrevButton", ShowPrevButton(TotalRow, PageNumber, TotalPage));
        if (TotalRow == 0)
            MyListDictionary.Add("PageOfPages", "Page 0 of 0");
        else
            MyListDictionary.Add("PageOfPages", "Page " + Convert.ToString(PageNumber) + " of " + Convert.ToString(TotalPage));
        int startpage;
        int endpage;
        startpage = 1 + (RowPerPage * (PageNumber - 1));
        endpage = startpage + ds.Tables[0].Rows.Count - 1;
        MyListDictionary.Add("JobToJobs", "Showing " + Convert.ToString(startpage) + " to " + Convert.ToString(endpage) + " of " + TotalRow + " jobs.");
        con.Close();
        return MyListDictionary;
    }

    public ListDictionary AdvSearchConsolidated_ListDictionary(string keywrd, int PageNumber, int RowPerPage, string SortExp, string SortOrder)
    {
        if (SortExp == null) SortExp = "";
        if (SortOrder == null) SortOrder = "";

        OleDbConnection con = new OleDbConnection(consolidatedConn);
        con.Open();
        OleDbCommand cmd = new OleDbCommand("p_boaJobSearchConsolidated", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@KeyWords", keywrd);
        cmd.Parameters.AddWithValue("@SortExp", SortExp);
        cmd.Parameters.AddWithValue("@SortOrder", SortOrder);

        OleDbParameter trows = cmd.Parameters.Add("@totalrows", OleDbType.Integer);
        trows.Direction = ParameterDirection.Output;

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();

        da.Fill(ds, (PageNumber - 1) * RowPerPage, RowPerPage, "SearchResults");

        int TotalRow = Convert.ToInt32(trows.Value);
        int partialpagefactor;
        partialpagefactor = TotalRow % RowPerPage > 0 ? 1 : 0;
        int TotalPage = (TotalRow / RowPerPage) + partialpagefactor;

        ListDictionary MyListDictionary = new ListDictionary();
        MyListDictionary.Add("RecordCount", TotalRow);
        MyListDictionary.Add("JobSearchResults", ds.Tables[0]);
        MyListDictionary.Add("NextButton", ShowNextButton(TotalRow, PageNumber, TotalPage));
        MyListDictionary.Add("PrevButton", ShowPrevButton(TotalRow, PageNumber, TotalPage));
        if (TotalRow == 0)
            MyListDictionary.Add("PageOfPages", "Page 0 of 0");
        else
            MyListDictionary.Add("PageOfPages", "Page " + Convert.ToString(PageNumber) + " of " + Convert.ToString(TotalPage));
        int startpage;
        int endpage;
        startpage = 1 + (RowPerPage * (PageNumber - 1));
        endpage = startpage + ds.Tables[0].Rows.Count - 1;
        MyListDictionary.Add("JobToJobs", "Showing " + Convert.ToString(startpage) + " to " + Convert.ToString(endpage) + " of " + TotalRow + " jobs.");
        con.Close();
        return MyListDictionary;
    }

    public OleDbDataReader TrackTellAFriendDR(string JobID, string FromAddress, string ToAddress)
    {
        OleDbConnection con = new OleDbConnection(constring);
        OleDbDataReader rdr;
        con.Open();
        try
        {
            OleDbCommand cmd = new OleDbCommand("p_track_tell_a_friend ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@JobID", JobID);
            cmd.Parameters.AddWithValue("@FromAddress", FromAddress);
            cmd.Parameters.AddWithValue("@ToAddress", ToAddress);
            cmd.Connection = con;
            rdr = cmd.ExecuteReader();
            return rdr;
        }
        catch (Exception ex)
        {
            throw ex;
        }
      
    }

}
