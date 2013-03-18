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
	private string constring;
    private string constringIQ;
    private string hiringOrgID;
    public const string USA = "1";
    public const string CANADA = "2";
    public const string ALL_COUNTRIES = "0";


	public Location()
	{
		constring = ConfigurationManager.AppSettings["StrUdlFileName"];
        constringIQ = ConfigurationManager.AppSettings["StrIQUdlFileName"];
        hiringOrgID = ConfigurationManager.AppSettings["hiringOrgID"];
	}
    public DataTable City()
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
        {
            Sql = string.Empty;
            Sql = "select distinct cityid, city from locations1";
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
    public DataTable State()
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
        {
            Sql = string.Empty;
            Sql = "SELECT DISTINCT State AS State, StateID FROM Locations1 l ORDER BY StateID";
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



    public DataTable CountrywiseCity(string countryVal, string strState)
    {
        OleDbConnection con = new OleDbConnection(constringIQ);
        con.Open();
        try
        {
            OleDbCommand cmd = new OleDbCommand("p_BOAJobsCitiesByCountryAndState ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@hiring_orgID", hiringOrgID);
            cmd.Parameters.AddWithValue("@countryid", countryVal);
            cmd.Parameters.AddWithValue("@stateid", strState);
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

    public DataTable StatewiseCity(int StateVal)
    {
		OleDbConnection con = new OleDbConnection(constring);
		con.Open();
		try
		{
			OleDbCommand cmd = new OleDbCommand("p_Career_Sites_select_City ", con);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@Stateid", StateVal);
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

    public OleDbDataReader CountryDR()
    {
        OleDbConnection con = new OleDbConnection(constring);
        con.Open();
        OleDbDataReader rdr;
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "p_SelectISOCountries";

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
	public OleDbDataReader StateDR()
	{
        OleDbConnection con = new OleDbConnection(constringIQ);
		con.Open();
		OleDbDataReader rdr;
		OleDbCommand cmd = new OleDbCommand();
		cmd.Connection = con;
		cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "p_BOASelectStateList";

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
    
    public OleDbDataReader StatewiseCityDR(int StateVal, int countryID)
    {
        OleDbConnection con = new OleDbConnection(constringIQ);
        OleDbDataReader rdr;
        con.Open();
        try
        {
            OleDbCommand cmd = new OleDbCommand("p_BOAJobsCitiesByCountryAndState ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@hiring_orgID", hiringOrgID);
            cmd.Parameters.AddWithValue("@countryid", countryID);
            cmd.Parameters.AddWithValue("@stateid", StateVal);
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
