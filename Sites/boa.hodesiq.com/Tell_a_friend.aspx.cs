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
using System.Net.Mail;


public partial class Tell_a_friend : System.Web.UI.Page
{
    string JobId;
    protected void Page_Load(object sender, EventArgs e)
    {
        JobId = Request.QueryString["JobId"];

    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jobdetails.aspx?JobId=" + JobId + "&SearchPage=" + Request.QueryString["SearchPage"].ToString());
    }
    protected void Send_Click(object sender, EventArgs e)
    {
        string strMailBody;
        
        MailMessage message = new MailMessage();
        message.From = new MailAddress(YourEmail.Text.ToString());
        message.To.Add(new MailAddress(FriendEmail.Text.ToString()));
        message.Subject = "Career opportunity with Bank Of America";

        strMailBody = MessageBox.Text.ToString() + "<br><a href='http://boa.hodesiq.com/jobdetails.aspx?JobId=" + JobId + "'>Click the link for the details of the Job</a>";
        message.Body = strMailBody;
        SmtpClient client = new SmtpClient("localhost");
        try
        {
            client.Send(message);
        }
        catch (Exception ex)
        {
            Response.Write("Could not send message");
        }


           //MailMessage  mail = new MailMessage();

           // mail.To = FriendEmail.Text.ToString();
           // mail.From = YourEmail.Text.ToString();
           // mail.Subject = "Career opportunity with Bank Of America";
           // strMailBody = MessageBox.Text.ToString(); //+ "<br><a href='http://boa.dev.hodesiq.com/jobdetails.aspx?JobId="+JobId+"'>Click the link for the details of the Job</a>";
           // mail.Body = strMailBody;

           // mail.BodyFormat = MailFormat.Html;
        
           // //SmtpMail.SmtpServer = ConfigurationSettings.AppSettings("SmtpServer");
           // SmtpMail.SmtpServer = ConfigurationManager.GetSection("SmtpServer");

           // SmtpMail.Send(mail);
        
        Response.Redirect("Jobdetails.aspx?JobId=" + JobId + "&SearchPage=" + Request.QueryString["SearchPage"].ToString());



    }
}
