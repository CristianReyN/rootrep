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


public partial class Tell_a_friend : System.Web.UI.Page
{
    string JobId;
	const string fromaddress = @"bankofamerica@emailhr.com";

    protected void Page_Load(object sender, EventArgs e)
    {
        JobId = Request.QueryString["JobId"];

		//write the boa buttons
		boanet_safebutton.writeBOASafeButton("Send", phSend, "Send", Send_Click, this.Request);
		boanet_safebutton.writeBOASafeButton("Cancel", phCancel, "Cancel", Cancel_Click, this.Request);

    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jobdetails.aspx?" + Request.QueryString);
    }
    protected void Send_Click(object sender, EventArgs e)
    {
        string strMailBody;
        
        MailMessage message = new MailMessage();
		message.From = new MailAddress(fromaddress);
        message.To.Add(new MailAddress(FriendEmail.Text.ToString()));
        message.Subject = "Career opportunity with Bank Of America";
        message.IsBodyHtml = false;
        strMailBody = MessageBox.Text.ToString() + Environment.NewLine + Request.Url.ToString().Substring(0,Request.Url.ToString().LastIndexOf("/")) + "/jobdetails.aspx?JobId=" + JobId + "&SearchPage=Sp";
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

        //insert record into tracking table
        TrackTellAFriend();

        Response.Redirect("Jobdetails.aspx?" + Request.QueryString);
		//Response.Redirect("Jobdetails.aspx?JobId=" + JobId + "&SearchPage=" + Request.QueryString["SearchPage"].ToString());
    }


    protected void TrackTellAFriend()
    {
        Jobs Jobs = new Jobs();
        OleDbDataReader dr;
        dr = Jobs.TrackTellAFriendDR(Request.QueryString["JobId"].ToString(), fromaddress.ToString(), FriendEmail.Text.ToString());
        dr.Close();
    }
}
