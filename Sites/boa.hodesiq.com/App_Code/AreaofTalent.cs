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
        Sql = string.Empty;
        Sql = "select talentID,talent from AreasOfTalent";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);
    }
    public DataTable Jobfamily()
    {
        Sql = string.Empty;
        Sql = "select FamilyID,Family from JobFamily";
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);
    }
    public DataTable TalentwiseJobfamily(string TalentVal)
    {
        Sql = string.Empty;
        
        if (TalentVal!="")
        {
            StrCondation = "where AOT.TalentID="+TalentVal;
        }
        Sql = "select JB.Family,JB.FamilyID from AreasOfTalent AOT inner join TalentToFamily TTF on AOT.TalentID = TTF.TalentID inner join JobFamily JB on TTF.FamilyID = JB.FamilyID " + StrCondation;
        DBUtils db = new DBUtils();
        return db.GetDataTable(Sql);
    
    }


}
