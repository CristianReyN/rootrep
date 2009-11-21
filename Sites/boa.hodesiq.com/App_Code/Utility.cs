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
}
