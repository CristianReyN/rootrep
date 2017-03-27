using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;
using System.Text;
using System.Security.Cryptography;
using CareerSiteComponents;

/// <summary>
/// Summary description for Utility
/// </summary>
public class Utility
{
    public const string EmailRegex = "^[\\w-\\.]{1,}\\@([\\da-zA-Z-]{1,}\\.){1,}[\\da-zA-Z-]{2,3}$";
    public const string URLRegex = @"http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?";
    public const string DateRegex = "(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)[0-9][0-9]$";
    public const string DateRegex2 = "(19|20)[0-9][0-9][- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$";
    public const string SSNRegex = "^\\d{3}-\\d{2}-\\d{4}$";
    public const string HTMLRegex = @"<(.|\\n)*?>";
    public const string InputHTMLRegex = @"<INPUT(.|\\n)*?>";

    //replace the word MINLENGTH with the actual length dynamically.
    public const string MinLengthRegex = ".{MINLENGTH,2500}$";

    public Utility()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    static public string ValidateEmailFormat(string strEmail)
    {
        if (Utility.Validation(strEmail, EmailRegex))
            return "";
        else
            return "Invalid Email Format";
    }

    static public string ValidateURLFormat(string strURL)
    {
        if (Utility.Validation(strURL, URLRegex))
            return "";
        else
            return "Please enter a valid web address. Please make sure the address begins with http:// or https://";
    }

    static public string ValidateDateFormat1(string strDate)
    {
        // Validate date in format yyyy-mm-dd or mm-dd-yyyy      
        if (Utility.Validation(strDate, DateRegex) || Utility.Validation(strDate, DateRegex2))
            return "";
        else
            return "Invalid Date Format";
    }

    static public string ValidateSSN(string strSSN)
    {
        // Validate ssn in ###-##-####     

        if (Utility.Validation(strSSN, SSNRegex))
            return "";
        else
            return "Invalid SSN Format";
    }

    static public string StripHTML(string TxtToClean)
    {
        return Regex.Replace(TxtToClean, HTMLRegex, string.Empty);
    }


    static private bool Validation(string StrValidattionField, string StrRegExpr)
    {
        Regex RegExpr = new Regex(StrRegExpr);
        if (!(RegExpr.IsMatch(StrValidattionField)))
            return false;
        else
            return true;
    }

    static public string HumanTime(DateTime dt1, DateTime dt2)
    {
        if (dt2 < dt1)
        {
            DateTime dt = dt1;
            dt1 = dt2;
            dt2 = dt;
        }

        TimeSpan ts = dt2 - dt1;

        return HumanTime((int)ts.TotalMinutes);
    }

    static public string HumanTime(int mins)
    {
        string s;

        const int
            h = 60,
            d = 1440,
            w = 10080,
            m = 43920,
            y = 525600;

        if (mins < 91)
            s = mins + " mins.";
        else if (mins < 36.5 * h)
            s = (mins + h / 2) / h + " hrs.";
        else if (mins < 1.5 * w)
            s = (mins + d / 2) / d + " days";
        else if (mins < 8 * w)
            s = (mins + w / 2) / w + " wks.";
        else if (mins < 1.5 * y)
            s = (mins + m / 2) / m + " mos.";
        else
            s = (mins + y / 2) / y + " yrs.";

        // if singular simply remove s (there are no other s's).
        if (s.Substring(0, 2) == "1 ")
            s = s.Replace("s", "");

        return s;
    }


    static public string TextToSimpleHTML(string s)
    {
        Regex re = new Regex("</?[a-z][a-z0-9]*[^<>]*>", RegexOptions.IgnoreCase | RegexOptions.Multiline);
        if (re.IsMatch(s))
        {
            return s;
        }
        else
        {
            s = Regex.Replace(s, Environment.NewLine, "<br/>");
            return s;
        }
    }

    /// <summary>
    /// Removes all whitespace between html tags.
    /// </summary>
    /// <param name="s"></param>
    /// <returns></returns>
    static public string CollapseHTMLWhitespace(string s)
    {
        s = Regex.Replace(s, @">[\r\n]+?<|>[\r]+?<|>[\r]+?<", "><");
        //strip input elements also
        s = Regex.Replace(s, @"<input.*?\s*?>.*?\s*?</input>|<input.*?\s*?/>|<input.*?\s*?>", string.Empty);
        s = Regex.Replace(s, @"<!--.+?-->", string.Empty);
        return s;
    }
    public static string TextToMD5Hex(string TxtToEncode)
    {

        MD5 md5 = MD5.Create();
        byte[] inputBytes = UTF8Encoding.UTF8.GetBytes(TxtToEncode);
        byte[] hash = md5.ComputeHash(inputBytes);

        // step 2, convert byte array to hex string
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < hash.Length; i++)
        {
            sb.Append(hash[i].ToString("x2"));
        }
        return sb.ToString();


    }

    public static string base64StringEncode(string data)
    {
        try
        {
            byte[] encData_byte = new byte[data.Length];
            encData_byte = System.Text.Encoding.UTF8.GetBytes(data);
            string encodedData = Convert.ToBase64String(encData_byte);
            return encodedData;
        }
        catch (Exception e)
        {
            throw new Exception("Error in base64Encode" + e.Message);
        }
    }

    public static string base64StringDecode(string data)
    {
        try
        {
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            System.Text.Decoder utf8Decode = encoder.GetDecoder();

            byte[] todecode_byte = Convert.FromBase64String(data);
            int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            string result = new String(decoded_char);
            return result;
        }
        catch (Exception e)
        {
            throw new Exception("Error in base64Decode" + e.Message);
        }
    }

    // USE: location.href="nextpage.asp?" & encode("sParm=" & sData)
    public static string QueryStringEncode(string dataIn)
    {
        string dataOut = string.Empty;

        if (dataIn.Length > 0)
        {
            int x = 0;
            int y = 0;
            string abFrom = string.Empty;
            string abTo = string.Empty;

            for (x = 0; x <= 25; x++)
            {
                abFrom += Convert.ToChar(65 + x);
            }
            for (x = 0; x <= 25; x++)
            {
                abFrom += Convert.ToChar(97 + x);
            }
            for (x = 0; x <= 9; x++)
            {
                abFrom += x.ToString();
            }

            abTo = abFrom.Substring(13) + abFrom.Substring(0, 13);
            for (x = 0; x < dataIn.Length; x++)
            {
                y = abFrom.IndexOf(dataIn.Substring(x, 1));
                dataOut += (y <= 0 ? dataIn.Substring(x, 1) : abTo.Substring(y, 1));
            }
        }

        // Return result
        return (dataOut);
    }

    public static string ScriptName(HttpRequest Request)
    {
        string scriptName = string.Empty;

        scriptName = FilenamePart(Request.ServerVariables["SCRIPT_NAME"].ToString());

        // Return result
        return (scriptName);
    }

    public static string FilenamePart(string pathName)
    {
        int i = 0;
        int j = 0;
        string filenamePart = string.Empty;

        if (pathName.Length > 0)
        {
            j = pathName.LastIndexOf("?");
            if (j == -1)
            {
                j = pathName.Length;
            }

            i = pathName.LastIndexOf("/");
            if (i == -1)
            {
                i = pathName.LastIndexOf("\\", j - 1);
            }

            i++;
            filenamePart = pathName.ToLower().Substring(i, j - i);
        }

        // Return result
        return (filenamePart);
    }

    public static CareerSiteSettings GetCareerSiteSettings()
    {
        string configId = System.Configuration.ConfigurationSettings.AppSettings["cmsconfigID"].ToString();
        return CareerSiteSettings.LoadCareerSiteSettings(System.Convert.ToInt16(configId));
    }

    /// <summary>
    /// Logs the exception in the database and then displays the error to the user
    /// </summary>
    /// <param name="ex">A reference to the exception that was thrown</param>
    public static void HandleException(Exception ex)
    {
        // Log the exception to the database
        CareerSiteLog.ErrorMessage errorLog = new CareerSiteLog.ErrorMessage();
        int retVal = errorLog.Add(ex);

        /*
        // Write the exception details to the session
        HttpContext.Current.Session.Add("ErrorNumber", retVal);
        HttpContext.Current.Session.Add("ErrorMessage", ex.Message.ToString());

        // Forward user to error page
        HttpContext.Current.Response.Redirect("/error-handler", false);
        */
    }

    /// <summary>
    /// Build a comma seperated string of values for
    /// all selected items in the passed ListBox
    /// </summary>
    /// <returns>string selectedItems</returns>
    public static string getListBoxSelectedValues(ListBox Listbox1)
    {

        // Go through all selected items in the listbox
        string selectedItems = "";
        foreach (int i in Listbox1.GetSelectedIndices())
        {
            if (selectedItems == "")
                selectedItems = Listbox1.Items[i].Value;
            else
                selectedItems += "," + Listbox1.Items[i].Value;

        }

        // If no items were selectd then return the default value
        if (selectedItems == "") selectedItems = "-1";

        return selectedItems;
    }

    protected static String GetAppSettings(string key)
    {
        return System.Configuration.ConfigurationManager.AppSettings[key].ToString();
    }

    public static void PopulateJobAreasFromIQ(DropDownList ddlJobAreas, string selVal)
    {
        /*if (!IsPostBack)
        {
            selVal = String.IsNullOrEmpty(Request.QueryString["jobareas"]) == false ? string.IsNullOrEmpty(this.ddlJobAreas.SelectedValue) ? Request.QueryString["jobareas"] : this.ddlJobAreas.SelectedValue : this.ddlJobAreas.SelectedValue;
        }
        else
        {
            selVal = ViewState["jobareas"] == null ? "" : ViewState["jobareas"].ToString();
        }
         */
        ddlJobAreas.Items.Clear();

        ListItem l = new ListItem("none", string.Empty);

        ddlJobAreas.Items.Insert(0, l);

        //ADMINISTRATION

        String aot = GetAppSettings("aotAdministration");

        ListItem li = new ListItem("All Administration", aot + "|" + GetAppSettings("famChangeMgmtProcess") + "," + 
                     GetAppSettings("famCorporateExecutive") + "," + GetAppSettings("famLegal") + "," + GetAppSettings("famServices"));

        li.Attributes["OptionGroup"] = "Adminstration";
        ddlJobAreas.Items.Add(li);

        ListItem li2 = new ListItem("Change Mgmt & Process", aot + "|" + GetAppSettings("famChangeMgmtProcess"));
        li2.Attributes["OptionGroup"] = "Adminstration";
        ddlJobAreas.Items.Add(li2);

        ListItem li3 = new ListItem("Corporate Executive", aot + "|" + GetAppSettings("famCorporateExecutive"));
        li3.Attributes["OptionGroup"] = "Adminstration";

        ddlJobAreas.Items.Add(li3);

        ListItem li4 = new ListItem("Legal", aot + "|" + GetAppSettings("famLegal"));
        li4.Attributes["OptionGroup"] = "Adminstration";
        ddlJobAreas.Items.Add(li4);

        ListItem li5 = new ListItem("Services", aot + "|" + GetAppSettings("famServices"));
        li5.Attributes["OptionGroup"] = "Adminstration";
        ddlJobAreas.Items.Add(li5);

        //CFO GROUP

        aot = GetAppSettings("aotCFOGroupFinance");

        ListItem li6 = new ListItem("All CFO Group/Finance", aot + "|" + GetAppSettings("famCredit") + "," + GetAppSettings("famInvestmentBanking")
                                        + "," + GetAppSettings("famWealthInvestmentMgmt"));

        li6.Attributes["OptionGroup"] = "CFO Group/Finance";
        ddlJobAreas.Items.Add(li6);

        ListItem li7 = new ListItem("Credit", aot + "|" + GetAppSettings("famCredit"));
        li7.Attributes["OptionGroup"] = "CFO Group/Finance";
        ddlJobAreas.Items.Add(li7);

        ListItem li8 = new ListItem("Investment Banking", aot + "|" + GetAppSettings("famInvestmentBanking"));
        li8.Attributes["OptionGroup"] = "CFO Group/Finance";
        ddlJobAreas.Items.Add(li8);

        ListItem li9 = new ListItem("Wealth & Investment Mgmt", aot + "|" + GetAppSettings("famWealthInvestmentMgmt"));
        li9.Attributes["OptionGroup"] = "CFO Group/Finance";
        ddlJobAreas.Items.Add(li9);

        //COMMUNICATIONS

        aot = GetAppSettings("aotCommunications");

        ListItem li11 = new ListItem("All Communications", aot + "|" + GetAppSettings("famMarketing"));
        li11.Attributes["OptionGroup"] = "Communications";
        ddlJobAreas.Items.Add(li11);

        ListItem li12 = new ListItem("Marketing", aot + "|" + GetAppSettings("famMarketing"));
        li12.Attributes["OptionGroup"] = "Communications";
        ddlJobAreas.Items.Add(li12);


        //CONSUMER BANKING

        aot = GetAppSettings("aotConsumerBanking");

        ListItem li13 = new ListItem("All Consumer Banking", aot + "|" + GetAppSettings("famConsumerBanking"));
        li13.Attributes["OptionGroup"] = "Consumer Banking";
        ddlJobAreas.Items.Add(li13);


        //CUSTOMER CARE

        aot = GetAppSettings("aotCustomerCare");

        ListItem li14 = new ListItem("All Customer Care", aot + "|" + GetAppSettings("famCredit") + "," + GetAppSettings("famCustomerService") + "," + GetAppSettings("famRelationshipManagement")
                                            + "," + GetAppSettings("famSales"));
        li14.Attributes["OptionGroup"] = "Customer Care";
        ddlJobAreas.Items.Add(li14);

        ListItem li15 = new ListItem("Credit", aot + "|" + GetAppSettings("famCredit"));
        li15.Attributes["OptionGroup"] = "Customer Care";
        ddlJobAreas.Items.Add(li15);

        ListItem li16 = new ListItem("Customer Service", aot + "|" + GetAppSettings("famCustomerService"));
        li16.Attributes["OptionGroup"] = "Customer Care";
        ddlJobAreas.Items.Add(li16);

        ListItem li17 = new ListItem("Relationship Management", aot + "|" + GetAppSettings("famRelationshipManagement"));
        li17.Attributes["OptionGroup"] = "Customer Care";
        ddlJobAreas.Items.Add(li17);

        ListItem li18 = new ListItem("Sales", aot + "|" + GetAppSettings("famSales"));
        li18.Attributes["OptionGroup"] = "Customer Care";
        ddlJobAreas.Items.Add(li18);

        //FINANCIAL ADVISOR

        aot = GetAppSettings("aotFinancialAdvisor");

        ListItem li19 = new ListItem("All Financials Advisor", aot + "|" + GetAppSettings("famFinance"));
        li19.Attributes["OptionGroup"] = "Financial Advisor";
        ddlJobAreas.Items.Add(li19);

        //HUMAN RESUORCES

        aot = GetAppSettings("aotHumanResources");

        ListItem li20 = new ListItem("All Human Resources", aot + "|" + GetAppSettings("famHumanResources"));
        li20.Attributes["OptionGroup"] = "Human Resources";
        ddlJobAreas.Items.Add(li20);


        //MORTGAGES

        aot = GetAppSettings("aotMortgage");

        ListItem li21 = new ListItem("All Mortgage", aot + "|-1");
        li21.Attributes["OptionGroup"] = "Mortgage";
        ddlJobAreas.Items.Add(li21);

        //OPERATIONS

        aot = GetAppSettings("aotOperations");

        ListItem li22 = new ListItem("All Operations", aot + "|" + GetAppSettings("famChangeMgmtProcess") + "," + GetAppSettings("famCorporateWorkplace")
                                                + "," + GetAppSettings("famLegal") + "," + GetAppSettings("famServices"));
        li22.Attributes["OptionGroup"] = "Operations";
        ddlJobAreas.Items.Add(li22);

        ListItem li23 = new ListItem("Change Mgmt & Process", aot + "|" + GetAppSettings("famChangeMgmtProcess"));
        li23.Attributes["OptionGroup"] = "Operations";
        ddlJobAreas.Items.Add(li23);

        ListItem li24 = new ListItem("Corporate Workplace", aot + "|" + GetAppSettings("famCorporateWorkplace"));
        li24.Attributes["OptionGroup"] = "Operations";
        ddlJobAreas.Items.Add(li24);

        ListItem li25 = new ListItem("Legal", aot + "|" + GetAppSettings("famLegal"));
        li25.Attributes["OptionGroup"] = "Operations";
        ddlJobAreas.Items.Add(li25);

        ListItem li26 = new ListItem("Services", aot + "|" + GetAppSettings("famServices"));
        li26.Attributes["OptionGroup"] = "Operations";
        ddlJobAreas.Items.Add(li26);

        //RISK MANAGEMENT

        aot = GetAppSettings("aotRiskEvaluation");

        ListItem li27 = new ListItem("All Risk Management", aot + "|" + GetAppSettings("famRiskManagement"));
        li27.Attributes["OptionGroup"] = "Risk Management";
        ddlJobAreas.Items.Add(li27);

        //SALES

        aot = GetAppSettings("aotSales");

        ListItem li30 = new ListItem("All Sales", aot + "|" + GetAppSettings("famSales"));
        li30.Attributes["OptionGroup"] = "Sales";
        ddlJobAreas.Items.Add(li30);

        ListItem li31 = new ListItem("Consumer Banking", aot + "|" + GetAppSettings("famConsumerBanking"));
        li31.Attributes["OptionGroup"] = "Risk Evaluation";
        ddlJobAreas.Items.Add(li31);

        //TECHNOLOGY

        aot = GetAppSettings("aotTechnology");

        ListItem li32 = new ListItem("All Technology", aot + "|" + GetAppSettings("famTechnology") + "," + GetAppSettings("famCorporateWorkplace"));
        li32.Attributes["OptionGroup"] = "Technology";
        ddlJobAreas.Items.Add(li32);

        ListItem li33 = new ListItem("Corporate Workplace", aot + "|" + GetAppSettings("famCorporateWorkplace"));
        li33.Attributes["OptionGroup"] = "Technology";
        ddlJobAreas.Items.Add(li33);


        ListItem myListItem = new ListItem();
        myListItem = ddlJobAreas.Items.FindByValue(selVal);

        if (myListItem != null)
            myListItem.Selected = true;

        //return ddlJobAreas;
    }

    public static void PopulateGlobalJobFamiliesFromIQ(DropDownList ddlJobFamily, string selVal)
    {

        ddlJobFamily.Items.Clear();

        ListItem l = new ListItem("All", "-1");

        ddlJobFamily.Items.Insert(0, l);

        //ADMINISTRATION

        //ListItem li = new ListItem("All", "-1");
        //ddlJobFamily.Items.Add(li);

        ListItem li2 = new ListItem("Administration", GetAppSettings("gfamAdministration"));
        ddlJobFamily.Items.Add(li2);

        ListItem li3 = new ListItem("Change Mgmt & Process", GetAppSettings("gfamChangeMgmtProcess"));
        ddlJobFamily.Items.Add(li3);

        ListItem li4 = new ListItem("Communications", GetAppSettings("gfamCommunications"));
        ddlJobFamily.Items.Add(li4);

        ListItem li5 = new ListItem("Consumer Banking", GetAppSettings("gfamConsumerBanking"));
        ddlJobFamily.Items.Add(li5);

        ListItem li6 = new ListItem("Corporate Executive", GetAppSettings("gfamCorporateExecutive"));
        ddlJobFamily.Items.Add(li6);

        ListItem li7 = new ListItem("Credit", GetAppSettings("gfamCredit"));
        ddlJobFamily.Items.Add(li7);

        ListItem li8 = new ListItem("Customer Service", GetAppSettings("gfamCustomerService"));
        ddlJobFamily.Items.Add(li8);

        ListItem li9 = new ListItem("Finance", GetAppSettings("gfamFinance"));
        ddlJobFamily.Items.Add(li9);

        ListItem li10 = new ListItem("Human Resources", GetAppSettings("gfamHumanResources"));
        ddlJobFamily.Items.Add(li10);

        ListItem li11 = new ListItem("International Contractor", GetAppSettings("gfamInternationalContractor"));
        ddlJobFamily.Items.Add(li11);

        ListItem li12 = new ListItem("Investment Banking", GetAppSettings("gfamInvestmentBanking"));
        ddlJobFamily.Items.Add(li12);

        ListItem li13 = new ListItem("Learning & Leadership Development", GetAppSettings("gfamLLDevelopment"));
        ddlJobFamily.Items.Add(li13);

        ListItem li14 = new ListItem("Legal", GetAppSettings("gfamLegal"));
        ddlJobFamily.Items.Add(li14);

        ListItem li15 = new ListItem("Marketing", GetAppSettings("gfamMarketing"));
        ddlJobFamily.Items.Add(li15);

        ListItem li16 = new ListItem("Operations", GetAppSettings("gfamOperations"));
        ddlJobFamily.Items.Add(li16);

        ListItem li17 = new ListItem("Relationship Management", GetAppSettings("gfamRelationshipManagement"));
        ddlJobFamily.Items.Add(li17);

        ListItem li18 = new ListItem("Risk Evaluation", GetAppSettings("gfamRiskEvaluation"));
        ddlJobFamily.Items.Add(li18);

        ListItem li19 = new ListItem("Sales", GetAppSettings("gfamSales"));
        ddlJobFamily.Items.Add(li19);

        ListItem li20 = new ListItem("Services", GetAppSettings("gfamServices"));
        ddlJobFamily.Items.Add(li20);

        ListItem li21 = new ListItem("Technology", GetAppSettings("gfamTechnology"));
        ddlJobFamily.Items.Add(li21);

        ListItem li22 = new ListItem("Wealth & Investment Management", GetAppSettings("gfamWealthInvestmentMgmt"));
        ddlJobFamily.Items.Add(li22);

        ListItem myListItem = new ListItem();
        myListItem = ddlJobFamily.Items.FindByValue(selVal);

        if (myListItem != null)
            myListItem.Selected = true;

    }

    public static void PopulateTravelDDL(DropDownList travel, string selVal)
    {

        travel.Items.Clear();

        ListItem l = new ListItem("All travel", "-1");
        travel.Items.Insert(0, l);

        ListItem li2 = new ListItem("No", GetAppSettings("travelNO"));
        travel.Items.Add(li2);

        ListItem li3 = new ListItem("Yes, 5% of the Time", GetAppSettings("travel5"));
        travel.Items.Add(li3);

        ListItem li4 = new ListItem("Yes, 10% of the Time", GetAppSettings("travel10"));
        travel.Items.Add(li4);

        ListItem li5 = new ListItem("Yes, 15% of the Time", GetAppSettings("travel15"));
        travel.Items.Add(li5);

        ListItem li6 = new ListItem("Yes, 20% of the Time", GetAppSettings("travel20"));
        travel.Items.Add(li6);

        ListItem li7 = new ListItem("Yes, 25% of the Time", GetAppSettings("travel25"));
        travel.Items.Add(li7);

        ListItem li8 = new ListItem("Yes, 50% of the Time", GetAppSettings("travel50"));
        travel.Items.Add(li8);

        ListItem li9 = new ListItem("Yes, 75% of the Time", GetAppSettings("travel75"));
        travel.Items.Add(li9);

        ListItem li10 = new ListItem("Yes, 100 % of the Time", GetAppSettings("travel100"));
        travel.Items.Add(li10);


        ListItem myListItem = new ListItem();
        myListItem = travel.Items.FindByValue(selVal);

        if (myListItem != null)
            myListItem.Selected = true;

    }

    public static void PopulateFTPT_DDL(DropDownList fullpart, string selVal)
    {

        fullpart.Items.Clear();

        ListItem l = new ListItem("All", "-1");
        fullpart.Items.Insert(0, l);

        ListItem li2 = new ListItem("Full time", GetAppSettings("ftpt-full"));
        fullpart.Items.Add(li2);

        ListItem li3 = new ListItem("Part time", GetAppSettings("ftpt-part"));
        fullpart.Items.Add(li3);

        ListItem myListItem = new ListItem();
        myListItem = fullpart.Items.FindByValue(selVal);

        if (myListItem != null)
            myListItem.Selected = true;

    }

    public static void PopulateShift_DDL(DropDownList shift, string selVal)
    {

        shift.Items.Clear();

        ListItem l = new ListItem("All shifts", "-1");
        shift.Items.Insert(0, l);

        ListItem li2 = new ListItem("1st Shift", GetAppSettings("shift-1"));
        shift.Items.Add(li2);

        ListItem li3 = new ListItem("2nd Shift", GetAppSettings("shift-2"));
        shift.Items.Add(li3);

        ListItem li4 = new ListItem("3rd Shift", GetAppSettings("shift-3"));
        shift.Items.Add(li4);

        ListItem myListItem = new ListItem();
        myListItem = shift.Items.FindByValue(selVal);

        if (myListItem != null)
            myListItem.Selected = true;

    }



    public static bool ValidateForm(ListBox ddlRadius, TextBox txtZipCode, Label lblValidation)
    {
        lblValidation.ForeColor = System.Drawing.Color.Red;
        lblValidation.Font.Bold = true;

        /*if (ddlRadius.SelectedIndex > 0)
        {
            if (txtZipCode.Text == "")
            {
                lblValidation.Visible = true;
                lblValidation.Text = "Zip code cannot be empty if you are searching by distance.";
                txtZipCode.Focus();
                return false;
            }
        }
        if (txtZipCode.Text != "")
        {
            if (ddlRadius.SelectedIndex == 0)
            {
                lblValidation.Visible = true;
                lblValidation.Text = "Distance (miles) cannot be empty if you are searching by zip code.";
                ddlRadius.Focus();
                return false;
            }
            if (txtZipCode.Text.Length < 5)
            {
                lblValidation.Visible = true;
                lblValidation.Text = "Zip Code cannot be less than five digits.";
                txtZipCode.Focus();
                return false;
            }
            if (!IsNumber(txtZipCode.Text))
            {
                lblValidation.Visible = true;
                lblValidation.Text = "Zip Code must be numeric.";
                txtZipCode.Focus();
                return false;
            }
        }*/
        lblValidation.Visible = false;
        return true;

    }

    static bool IsNumber(string value)
    {
        // Return true if this is a number.
        int number1;
        return int.TryParse(value, out number1);
    }
}
