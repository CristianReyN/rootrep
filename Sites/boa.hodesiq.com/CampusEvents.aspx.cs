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
using BOAClassLibrary.EFWebService;
using BOAClassLibrary.Com.BOA.Hodes.Util;

public partial class CampusEvents : System.Web.UI.Page
{
    private string degreeId = "1";
    public string regionId = "1";
    private string schoolId = "0";

    //private string degreeId = "BA";
    //public string regionId = "U.S.";
    //private string schoolId = "";
    public int pageNo = 1;
    public int pageSize = 0;
    public PaginationHelper pager = new PaginationHelper();
    public EventWS[] ger;
    public GetEventsResult gerOld;
    public string imagePath = System.Configuration.ConfigurationManager.AppSettings["imagePath"];
    public string up = "up";
    public string sortBy = "d";
    public string sortDate = "";
    public string sortSchool = "none";
    public string sortEvent = "none";
    public string sortBusiness = "none";
    public int contentHeight = 595;

    //public string span1Css = "tab_link_inactive";
    //public string span2Css = "tab_link_inactive";
    //public string span3Css = "tab_link_inactive";
    //public string gifName = "";
    //bool biz = false;
        
	private static int counter = 0;
    public string strsort = "ascending";

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
                SetCookie(Response, "boa_tab", regionId, 30);
            }
            else
            {
                regionId = GetSelectedTab(Request, Response);
            }

            /*
			regionElem.Value = regionId;
            CreateDegreeList();
            CreateSchoolList(Convert.ToInt32(regionId), Convert.ToInt32(degreeId));
            //CreateSchoolList(regionId + "Schools_" + degreeId);
            Comparator.SetComparator(true, "Date");
            Process(regionId, degreeId, schoolId);
            
             */

            if ("2".Equals(GetRegionId()))
            {
                contentHeight = 100;
                HyperLink1.ImageUrl = "~/images/camp/t1.gif";
                HyperLink2.ImageUrl = "~/images/camp/t2a.gif";
                HyperLink3.ImageUrl = "~/images/camp/t3.gif";
            }else{
                regionElem.Value = regionId;
                CreateDegreeList();
                CreateSchoolList(Convert.ToInt32(regionId), Convert.ToInt32(degreeId));
                //CreateSchoolList(regionId + "Schools_" + degreeId);
                Comparator.SetComparator(true, "Date");
                Process(regionId, degreeId, schoolId);
            }
           
        }
		AddTableAttributes();

    }
    private void Process(string regionId, string degreeId, string schoolId)
    {
        ger = ManageWebService.GetEventSearch(Convert.ToInt32(regionId), Convert.ToInt32(schoolId), Convert.ToInt32(degreeId));
        Session["ger"] = ger;

		counter = 0;



        bool biz = false;
        /////
        if ("1".Equals(regionId))
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
        if (ger != null && ger.Length > 0)
        {
			for (int x = 0; x < ger.Length; x++)
			{
				for (int y = 0; y < ger[x].Schools.Length; y++)
				{
					counter++;
				}
			}
            if (!("-1".Equals(ger[0].EventId.ToString())))
            {
				pager.Intialize(counter, 1, pageSize);
                Array.Sort(ger, Comparator.CompareToAnother);
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

            this.lblCounter.Text = "0 - 0";
            this.lblGetTotalCount.Text = "0";
        }
        PopulateTopNav(regionId);
    }
    private void PopulateTopNav(string regeion)
    {
        //return;
        if ("1".Equals(regeion))
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
        else if ("2".Equals(regeion))
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
        else if ("3".Equals(regeion))
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
    private void CreateSchoolList(int regionId, int degreeId)
    {
        //string schoolsList = ConfigurationManager.AppSettings[schoolsRegion];
        SchoolWS[] schoolsList = ManageWebService.GetSchoolSearch(regionId, degreeId);
        if (schoolsList != null)
        {
            //string[] schoolsArray = schoolsList.Split(new char[] { '*' });
            SchoolList.Items.Clear();
            SchoolList.Items.Add(new ListItem("All Schools", "0"));
            for (int i = 0; i < schoolsList.Length; i++)
            {
                //string[] aSchool = schoolsArray[i].Split(new char[] { '^' });
                SchoolWS aSchool = schoolsList[i];
                SchoolList.Items.Add(new ListItem(aSchool.Name, aSchool.Id.ToString()));
            }
        }
        else
        {
            SchoolList.Items.Clear();
        }
    }
    private void xCreateSchoolList(string schoolsRegion)
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
        //if (ger.OutData.Regions != null && ger.OutData.Regions.Length > 0)
        //{
            if (ger != null && ger.Length > 0)
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
                for (int i = pager.StartEventNo()-1; i < pager.EndEventNo(); i++)
                {
					try
					{
						EventWS anEvent = ger[i];
						int schLength = anEvent.Schools.Length;
						for (int k = 0; k < anEvent.Schools.Length; k++)
						{
							schLength--;
							tr = new TableRow();
							td = new TableCell();
							td.CssClass = "tdData";
							td.ColumnSpan = 1;
							td.Width = new Unit(tdWidth, UnitType.Percentage);
							string dateField = "";
							if (anEvent.StartTime != null)
							{
								dateField = anEvent.StartTime.ToString("MMMM dd, yyyy");
								if (anEvent.EndTime != null)
								{
									if (anEvent.StartTime.Year != anEvent.EndTime.Year || anEvent.StartTime.Month != anEvent.EndTime.Month || anEvent.StartTime.Day != anEvent.EndTime.Day)
									{
										dateField = dateField + " -<br/>";
										dateField = dateField + anEvent.EndTime.ToString("MMMM dd, yyyy");
									}
								}
							}
							td.Text = dateField;
							tr.Cells.Add(td);

							td = new TableCell();
							td.ColumnSpan = 1;
							td.CssClass = "tdData";
							td.Width = new Unit(tdWidth, UnitType.Percentage);
							td.Text = anEvent.Schools[k].Name;
							tr.Cells.Add(td);

							td = new TableCell();
							td.ColumnSpan = 1;
							td.CssClass = "tdData";
							td.Width = new Unit(tdWidth, UnitType.Percentage);
							string eventTxt = "<b class=\"tdDataHeader\">" + anEvent.EventType + "</b><br/>";
							string fultime = "";
							if (anEvent.ProgramType != null && anEvent.ProgramType.Length > 0)
							{
								fultime = anEvent.ProgramType;
								eventTxt = eventTxt + fultime + "<br/>";
							}
							string timeString = anEvent.StartTime.ToShortTimeString();
							if (anEvent.EndTime != null)
							{
								if (anEvent.StartTime.Hour != anEvent.EndTime.Hour || anEvent.StartTime.Minute != anEvent.EndTime.Minute)
								{
									timeString = timeString + "-" + anEvent.EndTime.ToShortTimeString();
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
								if (anEvent.Businesses != null && anEvent.Businesses.Length > 0)
								{
									for (int j = 0; j < anEvent.Businesses.Length; j++)
									{
										bizName = bizName + anEvent.Businesses[j];
										if (j + 1 < anEvent.Businesses.Length)
										{
											bizName = bizName + ",<br/>";
										}
									}
								}
								td.Text = bizName;
								tr.Cells.Add(td);
							}

							Table1.Rows.Add(tr);
							if (i + 1 < ger.Length || schLength > 0)
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
					catch
					{
						//do nothing
					}
                }
            }
            else
            {
                HeaderRow.Visible = false;
                Table1.Visible = false;
                Table2.Visible = true;
            }
        //}
        this.lblCounter.Text = pager.StartEventNo().ToString() + " - " + pager.EndEventNo().ToString();
		this.lblGetTotalCount.Text = pager.GetTotalCount().ToString();
    }
    private void xPopulatePage(bool biz)
    {
        if (gerOld.OutData.Regions != null && gerOld.OutData.Regions.Length > 0)
        {
            if (gerOld.OutData.Regions[0].RegionEvents != null && gerOld.OutData.Regions[0].RegionEvents.Length > 0)
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
                    ArrayOfEventEvent anEvent = gerOld.OutData.Regions[0].RegionEvents[i];
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
                    if (i + 1 < gerOld.OutData.Regions[0].RegionEvents.Length)
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
		TableHeaderRow tr = new TableHeaderRow();
		TableHeaderCell td = new TableHeaderCell();
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

		td = new TableHeaderCell();
        td.ColumnSpan = 1;
        td.Width = new Unit(tdWidth, UnitType.Percentage);
        td.CssClass = "tdHeader";
        td.Text = "School";
        tr.Cells.Add(td);

		td = new TableHeaderCell();
        td.ColumnSpan = 1;
        td.Width = new Unit(tdWidth, UnitType.Percentage);
        td.CssClass = "tdHeader";
        td.Text = "Event";
        tr.Cells.Add(td);
        if (biz)
        {
			td = new TableHeaderCell();
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
        ger = (EventWS[])Session["ger"];
        bool biz = (bool)Session["biz"];
        sortBy = (string)Session["sortBy"];
        up = (string)Session["up"];
        regionId = regionElem.Value;
        SetSortFlags(sortBy);
        pageNo = Convert.ToInt32(Request["pageNum"]) - 1;
        pager.Intialize(counter, pageNo, pageSize);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        ger = (EventWS[])Session["ger"];
        bool biz = (bool)Session["biz"];
        sortBy = (string)Session["sortBy"];
        up = (string)Session["up"];
        regionId = regionElem.Value;
        SetSortFlags(sortBy);
        pageNo = Convert.ToInt32(Request["pageNum"]) - 1;
        pager.Intialize(counter, pageNo, pageSize);
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
        ger = (EventWS[])Session["ger"];
        bool biz = (bool)Session["biz"];
        sortBy = (string)Session["sortBy"];
        up = (string)Session["up"];
        regionId = regionElem.Value;
        SetSortFlags(sortBy);
        pageNo = Convert.ToInt32(Request["pageNum"]) + 1;
        pager.Intialize(counter, pageNo, pageSize);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        ger = (EventWS[])Session["ger"];
        bool biz = (bool)Session["biz"];
        sortBy = (string)Session["sortBy"];
        up = (string)Session["up"];
        regionId = regionElem.Value;
        SetSortFlags(sortBy);
        pageNo = Convert.ToInt32(Request["pageNum"]) + 1;
        pager.Intialize(counter, pageNo, pageSize);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        degreeId = DegreeLevelList.SelectedValue;
        schoolId = "0";
        regionId = regionElem.Value;
        CreateSchoolList(Convert.ToInt32(regionId), Convert.ToInt32(degreeId));
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
                strsort = "ascending";
            }
            else
            {
                up = "dn";
                strsort = "descending";
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
        ger = (EventWS[])Session["ger"];
        bool biz = (bool)Session["biz"];
        regionId = regionElem.Value;
        pageNo = 1;
        pager.Intialize(counter, pageNo, pageSize);
        Comparator.SetComparator(sortOrder, sortBy);
        Array.Sort(ger, Comparator.CompareToAnother);
        PopulatePage(biz);
        PopulateNextPreviousLink();
        PopulateTopNav(regionId);
    }

    protected string GetRegionId()
    {
        return regionId;
    }

    public string GetSelectedTab(HttpRequest req, HttpResponse res)
    {
        string result = "1";//default 
        HttpCookie cookie = req.Cookies["boa_tab"];
        if (cookie != null && cookie.Value != null)
        {
            result = cookie.Value.Trim();
        }
        SetCookie(res, "boa_tab", result, 30);
        return result;
    }
    private void SetCookie(HttpResponse res, string name, string value, int day)
    {
        HttpCookie cke = new HttpCookie(name, value);
        //cke.Expires(new DateTime() + 30);
        System.DateTime today = System.DateTime.Now;
        System.TimeSpan duration = new System.TimeSpan(day, 0, 0, 0);
        System.DateTime expiry = today.Add(duration);

        cke.Expires = expiry;
        res.SetCookie(cke);
    }

	protected void AddTableAttributes()
	{
		DateHeader.Attributes.Add("scope", "col");
		SchoolHeader.Attributes.Add("scope", "col");
		EventHeader.Attributes.Add("scope", "col");
		BusinessHeader.Attributes.Add("scope", "col");
	}
}