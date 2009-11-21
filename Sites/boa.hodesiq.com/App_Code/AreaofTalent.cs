using System;
using System.Data;
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
	public AreaofTalent()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    /// <summary>
    /// This Function is used to fetch the Talents From the areasoftalents table.
    /// </summary>
    /// <returns>Dataset Containing TalentId and Talent From Talent Table.</returns>
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

    /// <summary>
    /// This Function is used to fetch the Jobfamily from the jobfamily table.
    /// </summary>
    /// <returns>Dataset containing JobFamilyId and JobFamily</returns>
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

    /// <summary>
    /// This Function is used to fetch the Jobfamily for the selected Talent.
    /// </summary>
    /// <param name="TalentVal">Talent Id </param>
    /// <returns>Dataset Containing JobFamilyID and JobFamily.</returns>
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
