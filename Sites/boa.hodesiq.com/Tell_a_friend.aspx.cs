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
using System.Web.Mail;


public partial class Tell_a_friend : System.Web.UI.Page
{
    string JobId;
    protected void Page_Load(object sender, EventArgs e)
    {
        JobId = Request.QueryString["JobId"].ToString();

    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jobdetails.aspx?JobId=" + JobId);
    }
    protected void Send_Click(object sender, EventArgs e)
    {
        //string strMailBody;    

        //    MailMessage  mail = new MailMessage();

        //    mail.To = FriendEmail.Text.ToString();
        //    mail.From = YourEmail.Text.ToString();
        //    mail.Subject = "Career opportunity with Bank Of America";
        //    strMailBody = MessageBox.Text.ToString(); //+ "<br><a href='http://boa.dev.hodesiq.com/jobdetails.aspx?JobId="+JobId+"'>Click the link for the details of the Job</a>";

        //    mail.Body = strMailBody;

        //    mail.BodyFormat = MailFormat.Html;
        
        //    SmtpMail.SmtpServer = ConfigurationSettings.AppSettings("SmtpServer");

        //    SmtpMail.Send(mail);

         Response.Redirect("Jobdetails.aspx?JobId="+JobId);



    }
}
