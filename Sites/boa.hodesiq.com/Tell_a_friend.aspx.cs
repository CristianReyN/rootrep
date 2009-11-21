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
        message.IsBodyHtml = false;
        strMailBody = MessageBox.Text.ToString() + Environment.NewLine + "http://boa.hodesiq.com/jobdetails.aspx?JobId=" + JobId + "&SearchPage=Sp";
        message.Body = strMailBody;
        SmtpClient client = new SmtpClient("localhost"); 
		client.DeliveryMethod=SmtpDeliveryMethod.PickupDirectoryFromIis;
        try
        {
            client.Send(message);
        }
        catch (Exception ex)
        {

            Response.Write(ex.ToString());
        }
        
        Response.Redirect("Jobdetails.aspx?JobId=" + JobId + "&SearchPage=" + Request.QueryString["SearchPage"].ToString());



    }
}
