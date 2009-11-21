using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BOAClassLibrary.Com.BOA.Hodes;
using BOAClassLibrary.WebReference;
using BOAClassLibrary.Com.BOA.Hodes.Util;

public partial class CampusEvents : System.Web.UI.Page
{
    private string degreeId = "BA";
    public string regionId = "U.S.";
    private string schoolId = "";
    public int pageNo = 1;
    public int pageSize = 0;
    //private bool sortOrder = false;
    public PaginationHelper pager = new PaginationHelper();
    //private Comparator comparer = new Comparator();
    public GetEventsResult ger;
    public string imagePath = System.Configuration.ConfigurationManager.AppSettings["imagePath"];
    public string up = "up";
    public string sortBy = "d";
    public string sortDate = "";
    public string sortSchool = "none";
    public string sortEvent = "none";
    public string sortBusiness = "none";

    //public string span1Css = "tab_link_inactive";
    //public string span2Css = "tab_link_inactive";
    //public string span3Css = "tab_link_inactive";
    //public string gifName = "";
    //bool biz = false;

    protected void Page_PreLoad(object sender, EventArgs e)
    {
        pageSize = Convert.ToInt32(ConfigurationManager.AppSettings["EventsPerPage"]);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string tempRegion = Request["region"];
            if (tempRegion != null && tempRegion.Trim().Length > 0)
            {
                regionId = tempRegion;
            }
            regionElem.Value = regionId;
            CreateDegreeList();
            CreateSchoolList(regionId + "Schools_" + degreeId);
            Comparator.SetComparator(true, "Date");
            Process(regionId, degreeId, schoolId);
        }
    }
    private void Process(string regionId, string degreeId, string schoolId)
    {
        ger = ManageWebService.GetEventSearch(regionId, degreeId, schoolId);
        Session["ger"] = ger;
        bool biz = false;
        /////
        if ("U.S.".Equals(regionId))
        {
            biz = true;
        }
        else
        {
            biz = false;
        }
        Session["biz"] = biz;
        Session["asc"] = true;
        Session["sortBy"] = "d";
        Session["up"] = "up";
        //Session["zone"] = regionId;
        if ("0".Equals(ger.Response.ReturnCde))
        {
            if (ger.OutData.Regions != null && ger.OutData.Regions.Length > 0)
            {
                pager.Intialize(ger.OutData.Regions[0].RegionEvents.Length, 1, pageSize);
                Array.Sort(ger.OutData.Regions[0].RegionEvents, Comparator.CompareToAnother);
                PopulatePage(biz);
                PopulateNextPreviousLink();
                HeaderRow.Visible = true;
                Table1.Visible = true;
                Table2.Visible = false;
            }
            else
            {
                HeaderRow.Visible = false;
                Table1.Visible = false;
                Table2.Visible = true;
            }
        }
        else
        {
            HeaderRow.Visible = false;
            Table1.Visible = false;
            Table2.Visible = true;
        }
        PopulateTopNav(regionId);
    }
    private void PopulateTopNav(string regeion)
    {
        //return;
        if ("U.S.".Equals(regeion))
        {
            //span1Css = "tab_link_active";
            //span2Css = "tab_link_inactive";
            //span3Css = "tab_link_inactive";
            //HyperLink1.CssClass = "tab_link_active_a";
            //span1.CssClass = "tab_link_active";
            //HyperLink2.CssClass = "tab_link_inactive_a";
            //HyperLink3.CssClass = "tab_link_inactive_a";
            HyperLink1.ImageUrl = "~/images/camp/t1a.gif";
            HyperLink2.ImageUrl = "~/images/camp/t2.gif";
            HyperLink3.ImageUrl = "~/images/camp/t3.gif";
        }
        else if ("EMEA".Equals(regeion))
        {
            //span1Css = "tab_link_inactive";
            //span2Css = "tab_link_active";
            //span3Css = "tab_link_inactive";
            //HyperLink1.CssClass = "tab_link_inactive_a";
            //span1.CssClass = "tab_link_inactive";
            //HyperLink2.CssClass = "tab_link_active_a";
            //HyperLink3.CssClass = "tab_link_inactive_a";
            HyperLink1.ImageUrl = "~/images/camp/t1.gif";
            HyperLink2.ImageUrl = "~/images/camp/t2a.gif";
            HyperLink3.ImageUrl = "~/images/camp/t3.gif";
        }
        else if ("Asia".Equals(regeion))
        {
            //span1Css = "tab_link_inactive";
            //span2Css = "tab_link_inactive";
            //span3Css = "tab_link_active";
            //HyperLink1.CssClass = "tab_link_inactive_a";
            //span1.CssClass = "tab_link_inactive";
            //HyperLink2.CssClass = "tab_link_inactive_a";
            //HyperLink3.CssClass = "tab_link_active_a";
            HyperLink1.ImageUrl = "~/images/camp/t1.gif";
            HyperLink2.ImageUrl = "~/images/camp/t2.gif";
            HyperLink3.ImageUrl = "~/images/camp/t3a.gif";
        }
    }
    private void CreateDegreeList()
    {
        string degreeList = ConfigurationManager.AppSettings["Degrees"];
        if (degreeList != null)
        {
            DegreeLevelList.Items.Clear();
            string[] degreesArray = degreeList.Split(new char[] {'*'});
            
            for (int i = 0; i < degreesArray.Length; i++)
            {
                string[] aDegree = degreesArray[i].Split(new char[] { '^' });
                DegreeLevelList.Items.Add(new ListItem(aDegree[1], aDegree[0]));
            }
        }
    }
    private void CreateSchoolList(string schoolsRegion)
    {
        string schoolsList = ConfigurationManager.AppSettings[schoolsRegion];
        if (schoolsList != null)
        {
            string[] schoolsArray = schoolsList.Split(new char[] { '*' });
            SchoolList.Items.Clear();
            SchoolList.Items.Add(new ListItem("All Schools", ""));
            for (int i = 0; i < schoolsArray.Length; i++)
            {
                string[] aSchool = schoolsArray[i].Split(new char[] { '^' });
                SchoolList.Items.Add(new ListItem(aSchool[1], aSchool[0]));
            }
        }
        else
        {
            SchoolList.Items.Clear();
        }
    }
    private void PopulatePage(bool biz)
    {
        if (ger.OutData.Regions != null && ger.OutData.Regions.Length > 0)
        {
            if (ger.OutData.Regions[0].RegionEvents != null && ger.OutData.Regions[0].RegionEvents.Length > 0)
            {
                //TableRow tr = GetHeaderRow(biz);
                //Table1.Rows.Add(tr);
                PopulateHeaderRow(biz);
                TableRow tr;
                double tdWidth = 25;
                if (!biz)
                {
                    tdWidth = 33;
                }
                TableCell td;
                for (int i = pager.StartEventNo() - 1; i < pager.EndEventNo(); i++)
                {
                    ArrayOfEventEvent anEvent = ger.OutData.Regions[0].RegionEvents[i];
                    tr = new TableRow();
                    td = new TableCell();
                    td.CssClass = "tdData";
                    td.ColumnSpan = 1;
                    td.Width = new Unit(tdWidth, UnitType.Percentage);
                    string dateField = "";
                    if (anEvent.StartDate != null)
                    {
                        dateField = anEvent.StartDate.ToString("MMMM dd, yyyy");
                        if (anEvent.EndDate != null)
                        {
                            if (anEvent.StartDate.Year != anEvent.EndDate.Year || anEvent.StartDate.Month != anEvent.EndDate.Month || anEvent.StartDate.Day != anEvent.EndDate.Day)
                            {
                                dateField = dateField + " -<br/>";
                                dateField = dateField + anEvent.EndDate.ToString("MMMM dd, yyyy");
                            }
                        }
                    }
                    td.Text = dateField;
                    tr.Cells.Add(td);

                    td = new TableCell();
                    td.ColumnSpan = 1;
                    td.CssClass = "tdData";
                    td.Width = new Unit(tdWidth, UnitType.Percentage);
                    td.Text = anEvent.SchoolName;
                    tr.Cells.Add(td);

                    td = new TableCell();
                    td.ColumnSpan = 1;
                    td.Width = new Unit(tdWidth, UnitType.Percentage);
                    string eventTxt = "<b class=\"tdDataHeader\">" + anEvent.EventType + "</b><br/>";
                    string fultime = "";
                    if (anEvent.Fulltime_Intern != null && anEvent.Fulltime_Intern.Length > 0)
                    {
                        fultime = anEvent.Fulltime_Intern[0].Description;
                        eventTxt = eventTxt + fultime + "<br/>";
                    }
                    string timeString = anEvent.StartDate.ToShortTimeString();
                    if (anEvent.EndDate != null)
                    {
                        if (anEvent.StartDate.Hour != anEvent.EndDate.Hour || anEvent.StartDate.Minute != anEvent.EndDate.Minute)
                        {
                            timeString = timeString + "-" + anEvent.EndDate.ToShortTimeString();
                        }
                    }
                    eventTxt = eventTxt + timeString + "<br/>";
                    eventTxt = eventTxt + anEvent.Location + "<br/>";
                    td.Text = eventTxt;
                    tr.Cells.Add(td);

                    if (biz)
                    {
                        td = new TableCell();
                        td.ColumnSpan = 1;
                        td.CssClass = "tdData";
                        td.Width = new Unit(tdWidth, UnitType.Percentage);
                        string bizName = "";
                        if (anEvent.LOB != null && anEvent.LOB.Length > 0)
                        {
                            for (int j = 0; j < anEvent.LOB.Length; j++)
                            {
                                bizName = bizName + anEvent.LOB[j].LOBName;
                                if (j + 1 < anEvent.LOB.Length)
                                {
                                    bizName = bizName + "<br/>";
                                }
                            }
                        }
                        td.Text = bizName;
                        tr.Cells.Add(td);
                    }

                    Table1.Rows.Add(tr);
                    if (i + 1 < ger.OutData.Regions[0].RegionEvents.Length)
                    {
                        tr = new TableRow();
                        td = new TableCell();
                        td.ColumnSpan = 3;
                        if (biz)
                        {
                            td.ColumnSpan = 4;
                        }
                        td.Width = new Unit(100, UnitType.Percentage);
                        td.Text = "<hr id=\"tdLine\"/>";
                        //td.Text = "<img src=\"../Events/images/clear.gif\" class=\"bac\" alt=\"\"><br clear=\"all\">";
                        tr.Cells.Add(td);
                        Table1.Rows.Add(tr);
                    }
                }
            }
            else
            {
                HeaderRow.Visible = false;
                Table1.Visible = false;
                Table2.Visible = true;
            }
        }
    }
    private void PopulateHeaderRow(bool biz)
    {
        double tdWidth = 25;
        if (!biz)
        {
            tdWidth = 33;
        }        
        HeaderRow.Visible = true;
        DateHeader.Width = new Unit(tdWidth, UnitType.Percentage);
        SchoolHeader.Width = new Unit(tdWidth, UnitType.Percentage);
        EventHeader.Width = new Unit(tdWidth, UnitType.Percentage);
        BusinessHeader.Width = new Unit(tdWidth, UnitType.Percentage);
        if (!biz)
        {
            BusinessHeader.Visible = false;
        }
    }
    private TableRow GetHeaderRow( bool biz)
    {
        TableRow tr = new TableRow();
        TableCell td = new TableCell();
        double tdWidth = 25;
        if (!biz)
        {
            tdWidth = 33;
        }
        td.ColumnSpan = 1;
        td.Width = new Unit(tdWidth, UnitType.Percentage);
        td.CssClass = "tdHeader";
        td.Text = "Date";
        tr.Cells.Add(td);

        td = new TableCell();
        td.ColumnSpan = 1;
        td.Width = new Unit(tdWidth, UnitType.Percentage);
        td.CssClass = "tdHeader";
        td.Text = "School";
        tr.Cells.Add(td);

        td = new TableCell();
        td.ColumnSpan = 1;
        td.Width = new Unit(tdWidth, UnitType.Percentage);
        td.CssClass = "tdHeader";
        td.Text = "Event";
        tr.Cells.Add(td);
        if (biz)
        {
            td = new TableCell();
            td.ColumnSpan = 1;
            td.Width = new Unit(tdWidth, UnitType.Percentage);
            td.CssClass = "tdHeader";
            td.Text = "Business";
            tr.Cells.Add(td);
        }
        return tr;
    }
    private void CreateSchoolList1(GetEventsResult ger)
    {
        if (ger.OutData.Regions != null && ger.OutData.Regions.Length > 0)
        {
            ArrayOfRegionRegion region = ger.OutData.Regions[0];
            if (region != null && region.RegionEvents.Length > 0)
            {
                SchoolList.Items.Clear();
                for (int i = 0; i < region.RegionEvents.Length; i++)
                {
                    ArrayOfEventEvent anEvent = region.RegionEvents[i];
                    SchoolList.Items.Add(new ListItem(anEvent.SchoolName, anEvent.SchoolId));
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        degreeId = DegreeLevelList.SelectedValue;
        schoolId = SchoolList.SelectedValue;
        regionId = regionElem.Value;
        Process(regionId, degreeId, schoolId);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ger = (GetEventsResult)Session["ger"];
        bool biz = (bool)Session["biz"];
        sortBy = (string)Session["sortBy"];
        up = (string)Session["up"];
        regionId = regionElem.Value;
        SetSortFlags(sortBy);
        pageNo = Convert.ToInt32(Request["pageNum"]) - 1;
        pager.Intialize(ger.OutData.Regions[0].RegionEvents.Length, pageNo, pageSize);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        ger = (GetEventsResult)Session["ger"];
        bool biz = (bool)Session["biz"];
        sortBy = (string)Session["sortBy"];
        up = (string)Session["up"];
        regionId = regionElem.Value;
        SetSortFlags(sortBy);
        pageNo = Convert.ToInt32(Request["pageNum"]) - 1;
        pager.Intialize(ger.OutData.Regions[0].RegionEvents.Length, pageNo, pageSize);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }
    private void PopulateNextPreviousLink()
    {
        string linkString = "~/CampusEvents.aspx?pageNum=";
        if (LinkButton1 != null)
        {
            LinkButton1.PostBackUrl = linkString + pageNo;
        }
        if (LinkButton2 != null)
        {
            LinkButton2.PostBackUrl = linkString + pageNo;
        }
        if (LinkButton7 != null)
        {
            LinkButton7.PostBackUrl = linkString + pageNo;
        }
        if (LinkButton8 != null)
        {
            LinkButton8.PostBackUrl = linkString + pageNo;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        ger = (GetEventsResult)Session["ger"];
        bool biz = (bool)Session["biz"];
        sortBy = (string)Session["sortBy"];
        up = (string)Session["up"];
        regionId = regionElem.Value;
        SetSortFlags(sortBy);
        pageNo = Convert.ToInt32(Request["pageNum"]) + 1;
        pager.Intialize(ger.OutData.Regions[0].RegionEvents.Length, pageNo, pageSize);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        ger = (GetEventsResult)Session["ger"];
        bool biz = (bool)Session["biz"];
        sortBy = (string)Session["sortBy"];
        up = (string)Session["up"];
        regionId = regionElem.Value;
        SetSortFlags(sortBy);
        pageNo = Convert.ToInt32(Request["pageNum"]) + 1;
        pager.Intialize(ger.OutData.Regions[0].RegionEvents.Length, pageNo, pageSize);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        degreeId = DegreeLevelList.SelectedValue;
        schoolId = "";
        regionId = regionElem.Value;
        CreateSchoolList(regionId + "Schools_" + degreeId);
        Process(regionId, degreeId, schoolId);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        degreeId = DegreeLevelList.SelectedValue;
        schoolId = SchoolList.SelectedValue;
        regionId = regionElem.Value;
        Process(regionId, degreeId, schoolId);
    }
    private void resetSortOrderAndBy(string sortNow)
    {
        bool sortOrder = (bool)Session["asc"];
        sortBy = sortNow;
        Session["sortBy"] = sortNow;
        if (sortNow.Equals(sortBy))
        {
            if (sortOrder)
            {
                up = "up";
            }
            else
            {
                up = "dn";
            }
        }
        Session["up"] = up;
        SetSortFlags(sortNow);
    }
    private void SetSortFlags(string sortNow)
    {
        sortDate = "none";
        sortSchool = "none";
        sortEvent = "none";
        sortBusiness = "none";
        if ("s".Equals(sortNow))
        {
            sortSchool = "";
        }
        else if ("e".Equals(sortNow))
        {
            sortEvent = "";
        }
        else if ("b".Equals(sortNow))
        {
            sortBusiness = "";
        }
        else
        {
            sortDate = "";
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        ResetValuesAndSort("Date");
        resetSortOrderAndBy("d");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        ResetValuesAndSort("School");
        resetSortOrderAndBy("s");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        ResetValuesAndSort("Event");
        resetSortOrderAndBy("e");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        ResetValuesAndSort("Business");
        resetSortOrderAndBy("b");
    }
    private void ResetValuesAndSort(string sortBy)
    {
        bool sortOrder = !(bool)Session["asc"];
        Session["asc"] = sortOrder;
        ger = (GetEventsResult)Session["ger"];
        bool biz = (bool)Session["biz"];
        regionId = regionElem.Value;
        pageNo = 1;
        pager.Intialize(ger.OutData.Regions[0].RegionEvents.Length, pageNo, pageSize);
        Comparator.SetComparator(sortOrder, sortBy);
        Array.Sort(ger.OutData.Regions[0].RegionEvents, Comparator.CompareToAnother);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }
}