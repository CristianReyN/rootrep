using System;
using System.IO;
using System.Text;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

public partial class campus_video : System.Web.UI.Page
{

    int int_videoid;

    public string str_Name = "";
    public string str_Title = "";
    public string str_Dept = "";
    public string str_AssetPath = "";
    public string str_TranscriptPath = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!string.IsNullOrEmpty(Request.QueryString["id"]))
        {
            int_videoid = int.Parse(Request.QueryString["id"].ToString());
            Page.Title = "Bank of America | Careers | " + str_Name + "," + str_Title; // Alek, leave this alone for now. Thanks!
            
        }
        else
        {


        }
        switch (int_videoid)
        {

            case 1:
                str_Name = "Anton";
                str_Title = "HR Development Program";
                str_Dept = "HR Development Program";
                str_AssetPath = "campusrecruiting/video/Anton/";
                str_TranscriptPath = "campusrecruiting/video/Anton/transcript.asp";
                break;

            case 2:
                str_Name = "Diversity";
                str_Title = "Diversity & Inclusion Film ";
                str_Dept = "Diversity & Inclusion Film ";
                str_AssetPath = "campusrecruiting/video/DI/";
                str_TranscriptPath = "campusrecruiting/video/di/transcript.asp";
                break;

            case 3:
                str_Name = "Howard";
                str_Title = "Global Markets Sales and Trading Associate Program";
                str_Dept = "Global Markets Sales and Trading Associate Program";
                str_AssetPath = "campusrecruiting/video/Howard/";
                str_TranscriptPath = "campusrecruiting/video/Howard/transcript.asp";
                break;

            case 4:
                str_Name = "Jarrod";
                str_Title = "Applied Technology Program";
                str_Dept = "Applied Technology Program";
                str_AssetPath = "campusrecruiting/video/Jarrod/";
                str_TranscriptPath = "campusrecruiting/video/Jarrod/transcript.asp";
                break;

            case 5:
                str_Name = "Kaitlyn";
                str_Title = "Global Markets Sales and Trading Analyst Program";
                str_Dept = "Global Markets Sales and Trading Analyst Program";
                str_AssetPath = "campusrecruiting/video/Kaitlyn/";
                str_TranscriptPath = "campusrecruiting/video/Kaitlyn/transcript.asp";
                break;

            case 6:
                str_Name = "Leonard";
                str_Title = "Global Treasury Solutions Associate Program";
                str_Dept = "Global Treasury Solutions Associate Program";
                str_AssetPath = "campusrecruiting/video/Leonard/";
                str_TranscriptPath = "campusrecruiting/video/Leonard/transcript.asp";
                break;

            case 7:
                str_Name = "Narinder";
                str_Title = "Global Markets Associate Program";
                str_Dept = "Global Markets Associate Program";
                str_AssetPath = "campusrecruiting/video/Narinder/";
                str_TranscriptPath = "campusrecruiting/video/Narinder/transcript.asp";
                break;

            case 8:
                str_Name = "Nichola";
                str_Title = "International Corporate Treasury Analyst Programme";
                str_Dept = "International Corporate Treasury Analyst Programme";
                str_AssetPath = "campusrecruiting/video/Nichole/";
                str_TranscriptPath = "campusrecruiting/video/Nicole/transcript.asp";
                break;

            case 9:
                str_Name = "Saumya";
                str_Title = "Global Research Associate Programme";
                str_Dept = "Global Research Associate Programme";
                str_AssetPath = "campusrecruiting/video/Saumya/";
                str_TranscriptPath = "campusrecruiting/video/Saumya/transcript.asp";
                break;

            case 10:
                str_Name = "Tanvi";
                str_Title = "Technology Analyst Programme";
                str_Dept = "Technology Analyst Programme";
                str_AssetPath = "campusrecruiting/video/Tanvi/";
                str_TranscriptPath = "campusrecruiting/video/Tanvi/transcript.asp";
                break;

            case 11:
                str_Name = "Zach";
                str_Title = "Commercial Banking Real Estate Banking Analyst Program";
                str_Dept = "Commercial Banking Real Estate Banking Analyst Program";
                str_AssetPath = "campusrecruiting/video/Zach/";
                str_TranscriptPath = "campusrecruiting/video/Zach/transcript.asp";
                break;
            case 12:
                str_Name = "Kevin";
                str_Title = "Consumer MBA Program";
                str_Dept = "Consumer MBA Program";
                str_AssetPath = "campusrecruiting/video/Kevin/";
                str_TranscriptPath = "campusrecruiting/video/Kevin/transcript.asp";
                break;
            case 13:
                str_Name = "Patricia";
                str_Title = "Global Investment Banking Analyst Program";
                str_Dept = "Global Investment Banking Analyst Program";
                str_AssetPath = "campusrecruiting/video/Patricia/";
                str_TranscriptPath = "campusrecruiting/video/Patricia/transcript.asp";
                break;
            case 14:
                str_Name = "Dallas";
                str_Title = " Neighborhood Enterprise Initiative®";
                str_Dept = " Neighborhood Enterprise Initiative®";
                str_AssetPath = "campusrecruiting/video/NEIDallas/";
                str_TranscriptPath = "campusrecruiting/video/NEIDallas/nei_dallas_builders.html";
                break;
            case 15:
                str_Name = "Qualco Energy Corp, Seattle";
                str_Title = " Supporting clean renewable energy";
                str_Dept = " Supporting clean renewable energy";
                str_AssetPath = "campusrecruiting/video/SeattleQualco/";
                str_TranscriptPath = "campusrecruiting/video/SeattleQualco/seattle_qualco_energy_transcript.html";
                break;
            case 16:
                str_Name = "Queens Theatre in the Park, NYC";
                str_Title = " Local community economic growth";
                str_Dept = " Local community economic growth";
                str_AssetPath = "campusrecruiting/video/QueensTheater/";
                str_TranscriptPath = "campusrecruiting/video/QueensTheater/queens_theatre.html";
                break;
            default:
                str_Name = "Diversity";
                str_Title = "";
                str_Dept = "";
                str_AssetPath = "campusrecruiting/video/DI/";
                str_TranscriptPath = "campusrecruiting/video/di/transcript.asp";
                break;

        }

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        Literal LitCreateSafeButton = (Literal)Page.Master.FindControl("LitCreateSafeButton");
        LitCreateSafeButton.Text = @"<link href='Includes/hs_safebutton.css' type='text/css' rel='stylesheet' />

        <script src='Includes/hs_safebutton.js' language='JavaScript' type='text/javascript'></script>

        <script language='JavaScript' type='text/javascript'>

        <!--

        create_safebutton_tmp('Search','javascript: submit_search();',0,0,0,0,'Search');

        //-->

        </script>";

        Literal ltrlCorremetrixScripts = (Literal)Page.Master.FindControl("ltrlCorremetrixScripts");
        ltrlCorremetrixScripts.Text = "";
    }

}


