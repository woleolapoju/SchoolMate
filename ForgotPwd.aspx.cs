using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ForgotPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnResetPwd_Click(object sender, EventArgs e)
    {

        try
        {


            MailMessage msg = new MailMessage();


            msg.To.Add(exampleInputEmail1.Text);
            msg.Bcc.Add("schoolmate@megahitsystems.com");

            MailAddress address = new MailAddress("megahit@mhschoolmate.com");

            msg.From = address;

            msg.Subject = "SCHOOLMATE Password Reset" ;

            msg.Body = "Having requested for password change, your password has being reset to\r\n\r\n" + "Password:zx890tss78" ;

            msg.Body = "Sorry, we cannot confirm your authentification details on MHSchoolmate\r\n\r\n" + "Please call our HelpDesk on +234-8056025228 for clarification";
            
            
            //msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();
            client.Host = "relay-hosting.secureserver.net";
            client.Port = 25;

            //Send the msg
            client.Send(msg);


            Response.Write("<script language=javascript>alert('Request successful...please check your mailbox');</script>");


            string dscript = "<script type='text/javascript' language='javascript'>window.history.go(-2);</script>";

            Page.RegisterStartupScript("goBack", dscript);

        }
        catch (Exception ex)
        {

            Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
        }

      
    }
}