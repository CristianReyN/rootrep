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

namespace BOA
{

    public partial class campus_video : System.Web.UI.Page
    {

        int int_videoid;

        public string str_Name = "";
        public string str_Title = "";
        public string str_Dept = "";
        public string str_AssetPath = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
            int_videoid = int.Parse(Request.QueryString["id"].ToString());
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
                    str_AssetPath = "fvp_final/Anton/";
                    break;

                case 2:
                    str_Name = "Diversity";
                    str_Title = "Diversity & Inclusion Film ";
                    str_Dept = "Diversity & Inclusion Film ";
                    str_AssetPath = "fvp_final/DI/";
                    break;

                case 3:
                    str_Name = "Howard";
                    str_Title = "Global Markets Sales and Trading Associate Program";
                    str_Dept = "Global Markets Sales and Trading Associate Program";
                    str_AssetPath = "fvp_final/Howard/";
                    break;

                case 4:
                    str_Name = "Jarrod";
                    str_Title = "Applied Technology Program";
                    str_Dept = "Applied Technology Program";
                    str_AssetPath = "fvp_final/Jarrod/";
                    break;

                case 5:
                    str_Name = "Kaitlyn";
                    str_Title = "Global Markets Sales and Trading Analyst Program";
                    str_Dept = "Global Markets Sales and Trading Analyst Program";
                    str_AssetPath = "fvp_final/Kaitlyn/";
                    break;

                case 6:
                    str_Name = "Leonard";
                    str_Title = "Global Treasury Solutions Associate Program";
                    str_Dept = "Global Treasury Solutions Associate Program";
                    str_AssetPath = "fvp_final/Leonard/";
                    break;

                case 7:
                    str_Name = "Narinder";
                    str_Title = "Global Markets Associate Program";
                    str_Dept = "Global Markets Associate Program";
                    str_AssetPath = "fvp_final/Narinder/";
                    break;

                case 8:
                    str_Name = "Nichola";
                    str_Title = "International Corporate Treasury Analyst Programme";
                    str_Dept = "International Corporate Treasury Analyst Programme";
                    str_AssetPath = "fvp_final/Nichole/";
                    break;

                case 9:
                    str_Name = "Saumya";
                    str_Title = "Global Research Associate Programme";
                    str_Dept = "Global Research Associate Programme";
                    str_AssetPath = "fvp_final/Saumya/";
                    break;

                case 10:
                    str_Name = "Tanvi";
                    str_Title = "Technology Analyst Programme";
                    str_Dept = "Technology Analyst Programme";
                    str_AssetPath = "fvp_final/Tanvi/";
                    break;

                case 11:
                    str_Name = "Zach";
                    str_Title = "Commercial Banking Real Estate Banking Analyst Program";
                    str_Dept = "Commercial Banking Real Estate Banking Analyst Program";
                    str_AssetPath = "fvp_final/Zach/";
                    break;
                case 12:
                    str_Name = "Kevin";
                    str_Title = "Consumer MBA Program";
                    str_Dept = "Consumer MBA Program";
                    str_AssetPath = "fvp_final/Kevin/";
                    break;
                case 13:
                    str_Name = "Patricia";
                    str_Title = "Global Investment Banking Analyst Program";
                    str_Dept = "Global Investment Banking Analyst Program";
                    str_AssetPath = "fvp_final/Patricia/";
                    break;
                case 14:
                    str_Name = "Dallas";
                    str_Title = " Neighborhood Enterprise Initiative®";
                    str_Dept = " Neighborhood Enterprise Initiative®";
                    str_AssetPath = "fvp_final/NEIDallas/";
                    break;
                case 15:
                    str_Name = "Qualco Energy Corp, Seattle";
                    str_Title = " Supporting clean renewable energy";
                    str_Dept = " Supporting clean renewable energy";
                    str_AssetPath = "fvp_final/SeattleQualco/";
                    break;
                case 16:
                    str_Name = "Queens Theatre in the Park, NYC";
                    str_Title = " Local community economic growth";
                    str_Dept = " Local community economic growth";
                    str_AssetPath = "fvp_final/QueensTheater/";
                    break;
                default:
                    str_Name = "Diversity";
                    str_Title = "";
                    str_Dept = "";
                    str_AssetPath = "fvp_final/DI/";
                    break;

            }

        }

    }

}
