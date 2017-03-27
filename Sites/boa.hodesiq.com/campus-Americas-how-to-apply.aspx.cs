using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class campus_Americas_how_to_apply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    DateTime MaintenanceStartDate = DateTime.Parse(System.Configuration.ConfigurationManager.AppSettings["MaintenanceStartDate"].ToString());
    DateTime MaintenanceEndDate = DateTime.Parse(System.Configuration.ConfigurationManager.AppSettings["MaintenanceEndDate"].ToString());
    if ( DateTime.Compare(MaintenanceStartDate, DateTime.Now) < 0 && DateTime.Compare(MaintenanceEndDate, DateTime.Now) > 0)
        {         
        //ApplyUSA.HRef = System.Configuration.ConfigurationManager.AppSettings["MaintenancePage"].ToString();
        }
    else
        {
            //ApplyUSA.HRef = "../learnmore/sendresume.asp";
            //ApplyUSA.Target = "_blank";
        }
    }
}
