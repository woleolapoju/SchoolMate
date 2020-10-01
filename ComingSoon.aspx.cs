using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ComingSoon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void cmdNotify_Click(object sender, EventArgs e)
    {
        try
        {


            MailMessage msg = new MailMessage();


            msg.To.Add("schoolmate@megahitsystems.com");

  
            MailAddress address = new MailAddress("megahit@mhschoolmate.com");

            msg.From = address;

            msg.Subject = "Notify of update on SCHOOLMATE by : "  + dEmail.Text.ToUpper();;

            msg.Body = "Notify the email of update on SCHOOLMATE  : " + dEmail.Text.ToUpper(); ;
            //msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();
            client.Host = "relay-hosting.secureserver.net";
            client.Port = 25;

            //Send the msg
            client.Send(msg);


            Response.Write("<script language=javascript>alert('Thank you for your interest in SchoolMate...we sure would keep you informed');</script>");


            string dscript = "<script type='text/javascript' language='javascript'>window.history.go(-2);</script>";

            Page.RegisterStartupScript("goBack", dscript);

        }
        catch (Exception ex)
        {

            Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
        }
    }
}