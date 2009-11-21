using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.Text.RegularExpressions;


public partial class Tell_a_friend : System.Web.UI.Page
{
    private string strJobID          = string.Empty;
    private string strJobTitle       = string.Empty;
    private string strDescripton     = string.Empty;
    private string strQualification  = string.Empty;
    private string strApplyNow       = string.Empty;

    //const string fromaddress = @"bankofamerica@emailhr.com";

    protected void Page_Load(object sender, EventArgs e)
    {
        strJobID = Request.QueryString["JobId"];        
		//write the boa buttons
        boanet_safebutton.writeBOASafeButton("Send", phSend, "Send", Send_Click, this.Request, "");
        boanet_safebutton.writeBOASafeButton("Cancel", phCancel, "Cancel", Cancel_Click, this.Request, "");
        this.YourEmail.Focus();
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jobdetails.aspx?" + Request.QueryString);
    }
    protected void Send_Click(object sender, EventArgs e)
    {
        string strMailBody;
        this.ltrlError0.Text = "";
        this.ltrlError1.Text = "";
        this.ltrlError.Text = "";
        if (isEmail(this.YourEmail.Text.ToString()))
        {
            if (this.YourName.Text.Trim() != "")
            {
                if (isEmail(this.FriendEmail.Text.ToString()))
                {
                    MailMessage message = new MailMessage();
                    //message.Sender  = new MailAddress(ConfigurationManager.AppSettings["boafromaddress"].ToString()); 
				    message.ReplyTo = new MailAddress(this.YourEmail.Text.ToString());
                    message.From = new MailAddress(this.YourName.Text.ToString() + " <" + ConfigurationManager.AppSettings["boafromaddress"].ToString() + ">");
                    message.To.Add(new MailAddress(this.FriendEmail.Text.ToString()));
                    message.Subject = "Career opportunity with Bank Of America";
                    message.IsBodyHtml = true;

                    //get this job details:
                    Jobs JobDetail = new Jobs();
                    DataTable dt = JobDetail.JobDetails(strJobID);
                    if (dt.Rows.Count > 0)
                    {
                        strJobTitle = dt.Rows[0]["JobTitle"].ToString() + " : " + dt.Rows[0]["JobsId"].ToString();
                        strDescripton = dt.Rows[0]["Description"].ToString();
                        strQualification = dt.Rows[0]["Qualification"].ToString();
                    }

                    strMailBody = "<table align='left' style='width: 560px;' border=0><tr><td>";
                    strMailBody = strMailBody + MessageBox.Text.ToString();
                    strMailBody = strMailBody + "<br/><br/>";
                    strMailBody = strMailBody + "<b>" + strJobTitle + "</b>";
                    strMailBody = strMailBody + "<br/><br/>";
                    strMailBody = strMailBody + "<b>Job Description</b>";
                    strMailBody = strMailBody + "<br/>";
                    strMailBody = strMailBody + strDescripton.Replace(Environment.NewLine, "<br/>");
                    strMailBody = strMailBody + "<br/><br/>";
                    strMailBody = strMailBody + "<b>Qualifications</b>";
                    strMailBody = strMailBody + "<br/>";
                    strMailBody = strMailBody + strQualification.Replace(Environment.NewLine,"<br/>");
                    strMailBody = strMailBody + "<br/><br/>";
                    //url to apply online: strApplyNow 
                    //url to job description
                    strMailBody = strMailBody + "<a href='" + Request.Url.ToString().Substring(0, Request.Url.ToString().LastIndexOf("/")) + "/jobdetails.aspx?JobId=" + strJobID + "&SearchPage=Sp' title='Click Here To View More Details About This Opportunity'>Click this link</a> to view more details about this opportunity.";
                    strMailBody = strMailBody + "<br/><br/>";
                    strMailBody = strMailBody + "Thank you.";
                    strMailBody = strMailBody + "<br/><br/>";
                    strMailBody = strMailBody + "*Disclaimer : Bank of America and Taleo shall not be liable for the content or any errors or omissions in the information provided, and conclusions drawn from such information are the responsibility of the user.";
                    strMailBody = strMailBody + "<br/><br/>";
                    strMailBody = strMailBody + "<i><b>BANK of AMERICA - CONFIDENTIAL";
                    strMailBody = strMailBody + "<br/>";
                    strMailBody = strMailBody + "Important - this message (including any attachments) is intended only for the use of the individual or entity to which it is addressed, and may contain information that is privileged, confidential and exempt from disclosure under applicable law. ";
                    strMailBody = strMailBody + "If you are not the intended recipient, you should delete this message immediately and you are hereby notified that any review, dissemination, distribution or copying of this message, or the taking of any action based on it is strictly prohibited.  ";
                    //strMailBody = strMailBody + "If you have received this communication in error, please notify the sender immediately by telephone.</b></i>";
                    strMailBody = strMailBody + "</b></i><br/><br/></td></tr></table>";
                    message.Body = strMailBody;

                    SmtpClient client = new SmtpClient("localhost");
                    client.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis;
                    try
                    {
                        client.Send(message);
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                    //insert record into tracking table
                    TrackTellAFriend();
                    Response.Redirect("Jobdetails.aspx?" + Request.QueryString);
                }
                else
                {
                    this.ltrlError.Text = "<li><font color='red'> There was an error processing your request. The email address you have entered is not valid. Please verify the address of your recipient (including case size and spaces) and re-enter. In addition, please enter only one email address per attempt:</font>";
                    this.FriendEmail.Focus();
                }
            }
            else
            {
                this.ltrlError1.Text = "<li><font color='red'> Field must contain your name:</font>";
                this.YourName.Focus();
            }
        }
        else
        {
            this.ltrlError0.Text = "<li><font color='red'> There was an error processing your request. The email address you have entered is not valid. Please verify the address of your recipient (including case size and spaces) and re-enter. In addition, please enter only one email address per attempt:</font>";
            this.YourEmail.Focus();
        }
    }

    protected void TrackTellAFriend()
    {
        Jobs Jobs = new Jobs();
        OleDbDataReader dr;
        dr = Jobs.TrackTellAFriendDR(Request.QueryString["JobId"].ToString(), this.YourEmail.Text.ToString(), this.FriendEmail.Text.ToString());
        dr.Close();
    }

    public static bool isEmail(string inputEmail)
    {
        if (String.IsNullOrEmpty(inputEmail))
        { return (false); }
        else
        {
            string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" + @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" + @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(inputEmail))
                return (true);
            else
                return (false);
        }
    }
}
