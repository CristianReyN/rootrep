using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;


/// <summary>
/// Summary description for AreaofTalent
/// </summary>
public class AreaofTalent
{
    string Sql;
    string StrCondation;
	public AreaofTalent()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable Talent()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select talentID,talent from AreasOfTalent";
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);
    }
    public DataTable Jobfamily()
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            Sql = "select FamilyID,Family from JobFamily";
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);
    }
    public DataTable TalentwiseJobfamily(string TalentVal)
    {
        DBUtils db;
        try
        {
            Sql = string.Empty;
            if (TalentVal != "")
            {
                StrCondation = "where AOT.TalentID=" + TalentVal;
            }
            Sql = "select JB.Family,JB.FamilyID from AreasOfTalent AOT inner join TalentToFamily TTF on AOT.TalentID = TTF.TalentID inner join JobFamily JB on TTF.FamilyID = JB.FamilyID " + StrCondation;
            db = new DBUtils();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return db.GetDataTable(Sql);
    
    }


}
