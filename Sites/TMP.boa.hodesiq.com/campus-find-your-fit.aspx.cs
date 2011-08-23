using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml;


public partial class campus_find_your_fit : System.Web.UI.Page
{
    public string str_URL1;
    public string str_URL2;
    public string str_URL3;
    public string str_URL4;
    public string str_URL5;
    public string str_URL6;
    public string str_result1;
    public string str_result2;
    public string str_result3;
    public string str_result4;
    public string str_result5;
    public string str_result6;
    public string str_errors1 = "";
    public string str_errors2 = "";
    public int int_DegreeCode1 = 0;
    public int int_DegreeCode2 = 0;
    public int int_DegreeCode3 = 0;
    public string degrevalid = "no";

    protected void sel_degree1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        int_DegreeCode1 = int.Parse(sel_degree1.SelectedValue.ToString());
        int_DegreeCode2 = int.Parse(sel_degree2.SelectedValue.ToString());
        int_DegreeCode3 = int.Parse(sel_degree3.SelectedValue.ToString());
        if (int_DegreeCode1 != int_DegreeCode2)
        {
            if (int_DegreeCode1 != int_DegreeCode3)
            {
                degrevalid = "yes";
            }
            else
            {
                degrevalid = "no";
                str_errors1 = "<li><b>You cannot select same degre more then once</b></li>";
                pnlErrors.Visible = true;
                return;

            }
        }
    }

    protected void sel_degree2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        int_DegreeCode1 = int.Parse(sel_degree1.SelectedValue.ToString());
        int_DegreeCode2 = int.Parse(sel_degree2.SelectedValue.ToString());
        int_DegreeCode3 = int.Parse(sel_degree3.SelectedValue.ToString());
        if (int_DegreeCode2 != int_DegreeCode3)
        {
            if (int_DegreeCode2 != int_DegreeCode1)
            {
                degrevalid = "yes";
            }
            else
            {
                degrevalid = "no";
                str_errors1 = "<li><b>You cannot select same degre more then once</b></li>";
                pnlErrors.Visible = true;
                return;
            }
        }

    }

    protected void sel_degree3_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        int_DegreeCode1 = int.Parse(sel_degree1.SelectedValue.ToString());
        int_DegreeCode2 = int.Parse(sel_degree2.SelectedValue.ToString());
        int_DegreeCode3 = int.Parse(sel_degree3.SelectedValue.ToString());
        if (int_DegreeCode3 != int_DegreeCode2)
        {
            if (int_DegreeCode3 != int_DegreeCode1)
            {
                degrevalid = "yes";
            }
            else
            {
                degrevalid = "no";
                str_errors1 = "<li><b>You cannot select same degre more then once</b></li>";
                pnlErrors.Visible = true;
                return;
            }

        }


    }

    public void degree_validator()
    {
        
        int_DegreeCode1 = int.Parse(sel_degree1.SelectedValue.ToString());
        int_DegreeCode2 = int.Parse(sel_degree2.SelectedValue.ToString());
        int_DegreeCode3 = int.Parse(sel_degree3.SelectedValue.ToString());

        CompareVals(int_DegreeCode1, int_DegreeCode2, "yes");
        CompareVals(int_DegreeCode1, int_DegreeCode3, degrevalid);
        CompareVals(int_DegreeCode2, int_DegreeCode3, degrevalid);
        int int_DegreSum = int_DegreeCode3 + int_DegreeCode2 + int_DegreeCode1;
        if (int_DegreSum != 0)
        {
            //degrevalid = "yes";
            pnlErrorDisplay.Visible = true;
            return;
        }
        else
        {
            degrevalid = "no";
            str_errors1 =str_errors1 + "<li><b>You must select at least one degree</b></li>";
            pnlErrors.Visible = true;
            pnlErrorDisplay.Visible = true;
            return;
        }

        if (int_DegreeCode1 == 0)
            if (int_DegreeCode3 == 0)
            {
                if (int_DegreeCode2 > 0)
                {
                    degrevalid = "yes";
                    return;
                }
                else
                {
                    degrevalid = "no";
                    str_errors1 =str_errors1 + "<li><b>You must select at least one degree</b></li>";
                    pnlErrors.Visible = true;
                    pnlErrorDisplay.Visible = true;
                    return;
                }
            }
        if (int_DegreeCode1 == 0)
            if (int_DegreeCode2 == 0)
            {
                if (int_DegreeCode3 > 0)
                {
                    degrevalid = "yes";
                    return;
                }
                else
                {
                    degrevalid = "no";
                    str_errors1 =str_errors1 + "<li><b>You must select at least one degree</b></li>";
                    pnlErrors.Visible = true;
                    pnlErrorDisplay.Visible = true;
                    return;
                }
            }

        if (int_DegreeCode2 == 0)
            if (int_DegreeCode3 == 0)
            {
                if (int_DegreeCode1 > 0)
                {
                    degrevalid = "yes";
                    return;
                }
                else
                {
                    degrevalid = "no";
                    str_errors1 =str_errors1 + "<li><b>You must select at least one degree</b></li>";
                    pnlErrors.Visible = true;
                    pnlErrorDisplay.Visible = true;
                    return;
                }
            }

        if (int_DegreeCode1 != int_DegreeCode2)
        {
            degrevalid = "yes";
        }
        else
        {
            degrevalid = "no";
            str_errors1 =str_errors1 + "<li><b>You cannot select same degree more then once</b></li>";
            pnlErrors.Visible = true;
            pnlErrorDisplay.Visible = true;
            return;
        }
        if (int_DegreeCode1 != int_DegreeCode3)
        {

            degrevalid = "yes";
        }
        else
        {
            degrevalid = "no";
            str_errors1 =str_errors1 + "<li><b>You cannot select same degree more then once</b></li>";
            pnlErrors.Visible = true;
            pnlErrorDisplay.Visible = true;
            return;

        }
        if (int_DegreeCode2 != int_DegreeCode3)
        {

            degrevalid = "yes";
        }
        else
        {
            degrevalid = "no";
            str_errors1 =str_errors1 + "<li><b>You cannot select same degree more then once</b></li>";
            pnlErrors.Visible = true;
            pnlErrorDisplay.Visible = true;
            return;

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        sel_employOpportunity.Items[2].Attributes.Add("title", "A structured program that moves you through different positions within a group.");

        if (IsPostBack)
        {

            string eventTarget = (this.Request["__EVENTTARGET"] == null) ?
            string.Empty : this.Request["__EVENTTARGET"];
            string eventArgument = (this.Request["__EVENTARGUMENT"] == null) ?
            string.Empty : this.Request["__EVENTARGUMENT"];

            if (eventTarget == "clearCheckbox")
            {
                int ICounter = 0;
                foreach (ListItem item in sel_responsible_options.Items)
                {
                    if (item.Selected)
                    {
                        ICounter++;
                        pnlErrors.Visible = false;
                    }
                    if (ICounter > 2)
                    {
                        item.Selected = false;
                        str_errors1 =str_errors1 + "<li><b>You cannot select more than 2 items in 'I would like a job where I am responsible for'</b></li>";
                        int_sumofselect.Value = "0";
                        pnlErrors.Visible = true;
                        return;
                    }

                }
                //pnlErrors.Visible = false;
                return;
            }

            if (CPHPanel1.Visible == true) return;
            if (int.Parse(ISSubmited.Value.ToString()) == 1)
            {
                bool CtrlSelected = false;
                int int_isselected = 0;
                // verifying first set of text boxes

                foreach (ListItem item in ckb_interestoptions.Items)
                {
                    if (item.Selected)
                    {
                        int_isselected++;
                        CtrlSelected = true;
                    }
                }
                if (int_isselected == 0)
                {

                 //   str_errors1 =str_errors1 + "<li><b>You must select at least 1 items in 'My primary area of interest'</b></li>";
                    pnlErrors.Visible = true;
                    ISSubmited.Value = "1";
                    ISValid.Value = "0";
                    //return;
                }
                else
                {
                    pnlErrors.Visible = false;
                }
                // second set of text boxes verification
                int_isselected = 0;
                foreach (ListItem item in sel_responsible_options.Items)
                {
                    if (item.Selected)
                    {
                        int_isselected++;
                        if (int_isselected > 2)
                        {
                            item.Selected = false;
                            str_errors1 =str_errors1 + "<li><b>You cannot select more than 2 items in 'I would like a job where I am responsible for'</b></li>";
                            pnlErrors.Visible = true;
                            ISSubmited.Value = "1";
                            ISValid.Value = "0";
                          //  return;
                        }
                        ISValid.Value = "1";
                        ISSubmited.Value = "1";
                        CtrlSelected = true;
                    }
                }
                if (int_isselected == 0)
                {
                    str_errors1 =str_errors1 + "<li><b>You must select at least 1 item in 'I would like a job where I am responsible for'</b></li>";
                    pnlErrors.Visible = true;
                    ISSubmited.Value = "1";
                    ISValid.Value = "0";
                   // return;
                }
                else
                {
                    pnlErrors.Visible = false;
                }
                //radio buttons verifications
                int_isselected = 0;
                foreach (ListItem item in sel_opportunity_options.Items)
                {
                    if (item.Selected)
                    {
                        int_isselected++;
                        CtrlSelected = true;
                    }
                }
                ISValid.Value = "1";
                if (int_isselected == 0)
                {
                 //   str_errors1 = str_errors1 + "<li><b>You must select 1 items in 'To me, opportunity is all about'</b></li>";
                    pnlErrors.Visible = true;
                    ISSubmited.Value = "1";
                    ISValid.Value = "0";
                    //return;
                }
                else
                {
                    pnlErrors.Visible = false;
                }
                if (ISValid.Value == "0")
                {
                    if (ISSubmited.Value == "1")
                    {
                        if (string.IsNullOrEmpty(str_errors1))
                        {
                            pnlErrors.Visible = false;
                        }
                        else
                        {
                            pnlErrors.Visible = true;
                        }
                    }
                    else
                    {
                        pnlErrors.Visible = false;

                    }                    
                }
            }
            if (string.IsNullOrEmpty(str_errors1))
            {
                pnlErrors.Visible = false;
            }
            else
            {
                pnlErrors.Visible = true;
            }
        }
        else
        {
            if (string.IsNullOrEmpty(str_errors1))
            {
                pnlErrors.Visible = false;
            }
            else
            {
                pnlErrors.Visible = true;
            }
        }

    }

    protected void GetDataToSession(string strUrl)
    {
        try
        {
            XmlTextReader reader = new XmlTextReader(strUrl);
            Hashtable attributes = new Hashtable();
            while (reader.Read())
            {
                switch (reader.NodeType)
                {
                    case XmlNodeType.Element:

                        string strURI = reader.NamespaceURI;
                        string strName = reader.Name;
                        if (reader.HasAttributes)
                        {
                            for (int i = 0; i < reader.AttributeCount; i++)
                            {
                                reader.MoveToAttribute(i);
                                attributes.Add(reader.Name, reader.Value);
                            }
                        }

                        //StartElement(strURI, strName, strName, attributes);
                        break;

                    default:
                        break;
                }
            }
        }
        catch (XmlException e)
        {
            Console.WriteLine("error occured: " + e.Message);
        }
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        int is_valid = 0;
       // str_errors1 = "<ul>";
        if (int.Parse(ddlsel_education.SelectedValue.ToString()) == 0)
        {
            str_errors1 = str_errors1 + "<li>You did not indicate 'level of education'</li>";
            ISSubmited.Value = "0";

        }
        else
        {
            is_valid = is_valid + 1;
            ISSubmited.Value = "1";
        }
        if (int.Parse(sel_employOpportunity.SelectedValue.ToString()) == 0)
        {
            str_errors1 = str_errors1 + "<li>You did not indicate 'level of employment opportunity'</li>";
            ISSubmited.Value = "0";

        }
        else
        {
            is_valid = is_valid + 1;
            ISSubmited.Value = "1";
        }

        if (int.Parse(sel_coursework.SelectedValue.ToString()) == 0)
        {
            str_errors1 = str_errors1 + "<li>You did not indicate 'interested in coursework'</li>";
            ISSubmited.Value = "0";

        }
        else
        {
            is_valid = is_valid + 1;
            ISSubmited.Value = "1";
        }
        int int_degree = int.Parse(sel_degree1.SelectedValue.ToString()) + int.Parse(sel_degree2.SelectedValue.ToString()) + int.Parse(sel_degree3.SelectedValue.ToString());
        if (int_degree == 0)
        {
            degrevalid = "no";
            str_errors1 = str_errors1 + "<li>You did not indicate '...earn(ed) my degree in...'</li>";
            ISSubmited.Value = "0";

        }
        else
        {
            degree_validator();
            if (degrevalid == "no")
            { return; }
            else
            {
                is_valid = is_valid + 1;
                ISSubmited.Value = "1";
            }
        }

        if (int.Parse(sel_environment.SelectedValue.ToString()) == 0)
        {
            str_errors1 = str_errors1 + "<li>You did not indicate 'preferred work environment'</li>";
            ISSubmited.Value = "0";

        }
        else
        {
            is_valid = is_valid + 1;
            ISSubmited.Value = "1";
        }

        if (int.Parse(sel_geographic.SelectedValue.ToString()) == 0)
        {
            str_errors1 = str_errors1 + "<li>You did not indicate 'prefer to work in the following area'</li>";
            ISSubmited.Value = "0";
        }
        else
        {
            is_valid = is_valid + 1;
            ISSubmited.Value = "1";
        }
        if (degrevalid == "no")
        {
            is_valid = 0;
        }
        if (is_valid > 5)
        {
            CPHPanel2.Visible = true;
            CPHPanel1.Visible = false;
            CPHPanel3.Visible = false;
            pnlErrors.Visible = false;
            pnlErrorDisplay.Visible = false;
            ckb_interestoptions.ClearSelection();
            sel_responsible_options.ClearSelection();
            sel_opportunity_options.ClearSelection();

        }
        else
        {
           // str_errors1 = str_errors1 + "</ul>";
            pnlErrorDisplay.Visible = true;
            return;
        }

    }

    protected void btnGetResults_Click(object sender, EventArgs e)
    {
        int int_isselected = 0;
        bool CtrlSelected = false;

        foreach (ListItem item in ckb_interestoptions.Items)
        {
            if (item.Selected)
            {
                int_isselected++;
                CtrlSelected = true;
            }
        }
        if (int_isselected == 0)
        {

            str_errors1 =str_errors1 + "<li><b>You must select at least 1 items in 'My primary area of interest'</b></li>";
            pnlErrors.Visible = true;
            ISSubmited.Value = "1";
            ISValid.Value = "0";
           return;
        }

        int_isselected = 0;
        foreach (ListItem item in sel_responsible_options.Items)
        {
            if (item.Selected)
            {
                int_isselected++;
                if (int_isselected > 2)
                {
                    item.Selected = false;
                    str_errors1 = str_errors1 + "<li><b>You cannot select more than 2 items in 'I would like a job where I am responsible for'</b></li>";
                    pnlErrors.Visible = true;
                    ISSubmited.Value = "1";
                    ISValid.Value = "0";
                    //  return;
                }
                ISValid.Value = "1";
                ISSubmited.Value = "1";
                CtrlSelected = true;
            }
        }
        if (int_isselected == 0)
        {
            str_errors1 = str_errors1 + "<li><b>You must select at least 1 item in 'I would like a job where I am responsible for'</b></li>";
            pnlErrors.Visible = true;
            ISSubmited.Value = "1";
            ISValid.Value = "0";
            return;
        }


        int_isselected = 0;
        foreach (ListItem item in sel_opportunity_options.Items)
        {
            if (item.Selected)
            {
                int_isselected++;
                CtrlSelected = true;
            }
        }
        ISValid.Value = "1";
        if (int_isselected == 0)
        {
            str_errors1 =str_errors1 + "<li><b>You must select 1 items in 'To me, opportunity is all about'</b></li>";
            pnlErrors.Visible = true;
            ISSubmited.Value = "1";
            ISValid.Value = "0";
            return;
        }
        else
        {
            pnlErrors.Visible = false;
        }
        if (ISValid.Value == "1")
        {
            CPHPanel3.Visible = true;
            CPHPanel1.Visible = false;
            CPHPanel2.Visible = false;
            pnlErrorDisplay.Visible = false;
            ISSubmited.Value = "0";
            this.CalculateScore();
            SetBestOptions();
        }
        else
        {
           // str_errors1 = str_errors1 + "</ul>";
            pnlErrorDisplay.Visible = true;
        }

    }

    //<Summary>
    //This will compare 2 values and bool.
    //Depend on result through error message and change bool value.
    //</Summary>
    private void CompareVals(int int_Degree1, int int_Degree2, string bl_statusdegree)
    {
        if (bl_statusdegree == "yes")
        {

            if (int_Degree1 != int_Degree2)
            {
                degrevalid = "yes";
            }
            else
            {
                if (int_Degree1 != 0)
                {
                    degrevalid = "no";
                    str_errors1 =str_errors1 + "<b>You cannot select same degre more then once</b>";
                }
                else
                {
                    degrevalid = "yes";
                    return;
                }
            }
        }
        else
        {
            return;
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        CPHPanel1.Visible = true;
        CPHPanel2.Visible = false;
        CPHPanel3.Visible = false;
        ISSubmited.Value = "0";
        Session.Abandon();

    }

    private void sel_responsible_options_uncheck()
    {
        string str_isremoved = int_sumofselect.Value;
        str_isremoved = str_isremoved.Substring(0, str_isremoved.Length - 1);

    }

    /// <summary>
    /// resertting all checkboxes and radiobuttons
    /// </summary>
    protected void btnClear_Click(object sender, EventArgs e)
    {
        foreach (ListItem item in ckb_interestoptions.Items)
        {
            if (item.Selected)
            {
                item.Selected = false;
            }
        }

        foreach (ListItem item in sel_responsible_options.Items)
        {
            if (item.Selected)
            {
                item.Selected = false;
            }
        }

        foreach (ListItem item in sel_opportunity_options.Items)
        {
            if (item.Selected)
            {
                item.Selected = false;
            }
        }
        pnlErrors.Visible = false;

    }

    /// <summary>
    /// After the scores are calculated, set the 6 best using the scores top6, which 
    /// has the top 6 best matches id's
    /// </summary>
    private void SetBestOptions()
    {
        //XmlNodeList answers = answerKey.SelectNodes("/Jobs/JobType");
        str_result1 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[0]].Attributes.GetNamedItem("name").Value;
        str_URL1 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[0]].Attributes.GetNamedItem("linkurl").Value;
        //LblResult1.Visible = true;

        str_result2 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[1]].Attributes.GetNamedItem("name").Value;
        str_URL2 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[1]].Attributes.GetNamedItem("linkurl").Value;
        //LblResult2.Visible = true;

        str_result3 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[2]].Attributes.GetNamedItem("name").Value;
        str_URL3 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[2]].Attributes.GetNamedItem("linkurl").Value;
        //LblResult3.Visible = true;

        str_result4 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[3]].Attributes.GetNamedItem("name").Value;
        str_URL4 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[3]].Attributes.GetNamedItem("linkurl").Value;
        //LblResult4.Visible = true;

        str_result5 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[4]].Attributes.GetNamedItem("name").Value;
        str_URL5 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[4]].Attributes.GetNamedItem("linkurl").Value;
        //LblResult5.Visible = true;

        str_result6 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[5]].Attributes.GetNamedItem("name").Value;
        str_URL6 = answerKey.SelectNodes("/Jobs/JobType")[(int)top6[5]].Attributes.GetNamedItem("linkurl").Value;
        //LblResult6.Visible = true;        }
    }
    /// <summary>
    /// this is where the final score is computed for questions
    /// </summary>
    /// 
    private SortedList scores;

    private ArrayList top6;

    //private Hashtable scores;
    //private ArrayList scores; //keeps the score for each position
    private XmlDocument answerKey;  //XML holding all the data

    private void CalculateScore()
    {
        string str_path;
        scores = new SortedList();  //this won't work after sorting
        top6 = new ArrayList();
        str_path = Request.ServerVariables["APPL_PHYSICAL_PATH"];
        answerKey = new XmlDocument();
        answerKey.Load(str_path + "xml/FitFinder_071211.xml");
        XmlNodeList answers = answerKey.SelectNodes("/Jobs/JobType");
        //now we have all the job types and their question answer values, add them up 
        //answers[1].ChildNodes[0].ChildNodes
        for (int i = 0; i < answers.Count; i++)
        {
            int score = 0;
            XmlNodeList qscores = answers[i].ChildNodes[0].ChildNodes;
            //qscores has all 9 questions answers, need to go through each one now and select the right id's and then their values
            for (int j = 0; j < qscores.Count; j++)
            {
                XmlNode question = qscores[j];
                score += this.CalculateQuestion(j, question);
            }
            //add score as the key as that's the sort enumerator
            try
            {
                scores.Add(Convert.ToDecimal(Convert.ToString(score) + "." + Convert.ToString(i)) * -1, i);
            }
            catch (Exception exc)
            {
            }
        }
        for (int i = 0; i < 6; i++)
        {
            top6.Add(scores.GetByIndex(i));
        }
    }

    /// <summary>
    /// Takes each question and the number it is and figures out the score it should have
    /// </summary>
    /// <param name="qnum"></param>
    /// <param name="q"></param>
    private int CalculateQuestion(int qnum, XmlNode q)
    {
        int score = 0;
        qnum = qnum + 1;
        XmlNode q2 = q.Clone();
        XmlNodeList qvalues = q2.SelectNodes("//QuestionValue");
        for (int i = 0; i < qvalues.Count; i++)
        {
            switch (qnum)
            {
                case 1:
                    score += QuestionOne(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
                case 2:
                    score += QuestionTwo(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
                case 3:
                    score += QuestionThree(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
                case 4:
                    score += QuestionFour(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
                case 5:
                    score += QuestionFive(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
                case 6:
                    score += QuestionSix(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
                case 7:
                    score += QuestionSeven(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
                case 8:
                    score += QuestionEight(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
                case 9:
                    score += QuestionNine(qvalues[i].SelectSingleNode("@value").Value, i + 1);
                    break;
            }
            //match the qnum to the form question and select the value and sum the score and return

        }
        return score;
    }

    //Everything below is a handler for each question.  If the question changes, then
    //you likely need to modify this hander per question

    //sel_opportunity_options
    private int QuestionOne(string answervalue, int answernum)
    {
        int selectedindex = this.sel_opportunity_options.SelectedIndex;
        if (selectedindex == answernum)
        {
            return Convert.ToInt32(answervalue);
        }
        //check the control if it selected, if so then return the score, else 0
        return 0;
    }

    //ddlsel_education
    private int QuestionTwo(string answervalue, int answernum)
    {
        int selval = Convert.ToInt32(ddlsel_education.SelectedValue);
        if (selval == answernum)
        {
            return Convert.ToInt32(answervalue);
        }
        return 0;
    }

    //sel_employOpportunity
    private int QuestionThree(string answervalue, int answernum)
    {
        int selval = Convert.ToInt32(sel_employOpportunity.SelectedValue);
        if (selval == answernum)
        {
            return Convert.ToInt32(answervalue);
        }
        return 0;
    }

    //sel_environment
    private int QuestionFour(string answervalue, int answernum)
    {
        int selval = Convert.ToInt32(sel_environment.SelectedValue);
        if (selval == answernum)
        {
            return Convert.ToInt32(answervalue);
        }
        return 0;
    }

    //sel_degree1,sel_degree2,sel_degree3
    private int QuestionFive(string answervalue, int answernum)
    {
        int score = 0;
        int selval = 0;
        if (!string.IsNullOrEmpty(sel_degree1.SelectedValue))
        {
            selval = Convert.ToInt32(sel_degree1.SelectedValue);
        }
        else
        {
            selval = 0;
        }

        if (selval == answernum)
        {
            score = Convert.ToInt32(answervalue);
        }
        if (!string.IsNullOrEmpty(sel_degree2.SelectedValue))
        {
            selval = Convert.ToInt32(sel_degree2.SelectedValue);
        }
        else
        {
            selval = 0;
        }
        if (selval == answernum)
        {
            score += Convert.ToInt32(answervalue);
        }

        if (!string.IsNullOrEmpty(sel_degree3.SelectedValue))
        {
            selval = Convert.ToInt32(sel_degree3.SelectedValue);
        }
        else
        {
            selval = 0;
        }
        if (selval == answernum)
        {
            score += Convert.ToInt32(answervalue);
        }
        return score;
    }

    //sel_geographic
    private int QuestionSix(string answervalue, int answernum)
    {
        int selval = Convert.ToInt32(sel_geographic.SelectedValue);
        if (selval == answernum)
        {
            return Convert.ToInt32(answervalue);
        }
        return 0;
    }

    //ckb_interestoptions
    private int QuestionSeven(string answervalue, int answernum)
    {
        if (ckb_interestoptions.Items[answernum - 1].Selected)
        {
            return Convert.ToInt32(answervalue);
        }
        return 0;
    }

    //sel_responsible_options
    private int QuestionEight(string answervalue, int answernum)
    {
        if (sel_responsible_options.Items[answernum - 1].Selected)
        {
            return Convert.ToInt32(answervalue);
        }
        return 0;
    }

    //sel_coursework
    private int QuestionNine(string answervalue, int answernum)
    {
        int selval = Convert.ToInt32(sel_coursework.SelectedValue);
        if (selval == answernum)
        {
            return Convert.ToInt32(answervalue);
        }
        return 0;
    }

    public Control FindControlRecursive(Control root, string id)
    {
        if (root.ID == id)
        {
            return root;
        }

        foreach (Control c in root.Controls)
        {
            Control t = FindControlRecursive(c, id);
            if (t != null)
            {
                return t;
            }
        }

        return null;
    }
}