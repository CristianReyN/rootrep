using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Web;
using System.Web.Security;


/// <summary>
/// Functions are described here to fetch the values from Db
/// </summary>
public class AreaofTalent
{
    string Sql;
    string StrCondation;
	private string constring;
	public AreaofTalent()
	{
		constring = ConfigurationManager.AppSettings["StrUdlFileName"];
	}
    /// <summary>
    /// This Function is used to fetch the Talents From the areasoftalents table.
    /// </summary>
    /// <returns>Dataset Containing TalentId and Talent From Talent Table.</returns>
    public DataTable Talent()
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
		{
			Sql = string.Empty;
			Sql = "select talentID,talent from AreasOfTalent";
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
    /// This Function is used to fetch the Jobfamily from the jobfamily table.
    /// </summary>
    /// <returns>Dataset containing JobFamilyId and JobFamily</returns>
	public DataTable Jobfamily()
	{
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
		{
			Sql = string.Empty;
			Sql = "select FamilyID,Family from JobFamily";
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
    /// This Function is used to fetch the Jobfamily for the selected Talent.
    /// </summary>
    /// <param name="TalentVal">Talent Id </param>
    /// <returns>Dataset Containing JobFamilyID and JobFamily.</returns>
    public DataTable TalentwiseJobfamily(string TalentVal)
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
        {
            Sql = string.Empty;
            if (TalentVal != "-1")
            {
                StrCondation = "where AOT.TalentID=" + TalentVal;
            }
            Sql = "select JB.Family,JB.FamilyID from AreasOfTalent AOT inner join TalentToFamily TTF on AOT.TalentID = TTF.TalentID inner join JobFamily JB on TTF.FamilyID = JB.FamilyID " + StrCondation;
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

	public OleDbDataReader TalentDR()
	{
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
		cmd.CommandText = "p_SelectAreasOfTalentList";

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

	public OleDbDataReader JobfamilyDR()
	{
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
		cmd.CommandText = "p_SelectJobFamily";

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
	public OleDbDataReader TalentwiseJobfamilyDR(string TalentVal)
	{
		if (TalentVal == string.Empty) { TalentVal = "-1"; }

		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
		cmd.CommandText = "p_SelectTalentWiseJobFamily";
		cmd.Parameters.AddWithValue("@jfid", TalentVal);
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

	public OleDbDataReader JobAreasList()
	{
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
		cmd.CommandText = "p_SelectJobAreasList";
            try
            {
                rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
             }

            catch (Exception ex)
                {
                throw ex;
                }
		return rdr;
	}
}
