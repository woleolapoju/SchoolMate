using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //stateId.Value = "Nigeria";

        ///////////////////////////////////////////////////////////////////////////////////////////////////////
        //PLEASE CHECK SITE http://vandelayweb.com/sending-asp-net-emails-godaddy-gmail-godaddy-hosted
        //////// for mailing 
        ///////////////////////////////////////////////////////////////////////////////////////////////////////
    }

    protected void btnDiversion_Click(object sender, EventArgs e)
    {
        SqlTransaction myTrans = null;
        SqlConnection cnSQL = null;
        try
        {

            cnSQL = new SqlConnection(Session["Cnn"].ToString());
            SqlCommand cmSQL = new SqlCommand();
            cmSQL.Connection = cnSQL;

            cnSQL.Open();
         
            myTrans = cnSQL.BeginTransaction();
            cmSQL.Transaction = myTrans;

            cmSQL.Parameters.Clear();
            cmSQL.CommandText = "sinsertsignups";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@VersionType", versiontype1.Value);
            cmSQL.Parameters.AddWithValue("@SchName", Schname.Value);
            cmSQL.Parameters.AddWithValue("@LicenseNo", SchLicense.Value);
            cmSQL.Parameters.AddWithValue("@SchAddress", schAddr.Value);
            cmSQL.Parameters.AddWithValue("@Country", countryId1.Value);
            cmSQL.Parameters.AddWithValue("@State", stateId1.Value);
            cmSQL.Parameters.AddWithValue("@Email", email.Text);
            cmSQL.Parameters.AddWithValue("@Phone", SchPhone.Value);
            cmSQL.Parameters.AddWithValue("@TransDate", DateTime.Now);
            cmSQL.ExecuteNonQuery();

            //RecentRefNo = tRefNo.Text;
            myTrans.Commit();
           // cmSQL.Connection.Close();
            cnSQL.Close();

            //sendMail();


            sendMail();

            //sendNotice();

            string dscript = "<script type='text/javascript' language='javascript'>window.history.go(-2);</script>";

            Page.RegisterStartupScript("goBack", dscript);

            return;


    }
        catch (Exception ex)
        {
            //Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");

            Response.Write("<script language=javascript>alert('Already registered');</script>");
            myTrans.Rollback();
            cnSQL.Close();
        }
    }


    void sendMail()
    {

        try
        {
 

            MailMessage msg = new MailMessage();


            msg.To.Add(email.Text);

            msg.Bcc.Add("schoolmate@megahitsystems.com");


            MailAddress address = new MailAddress("megahit@mhschoolmate.com");

            msg.From = address;

            msg.Subject = "Megahit SchoolMate: Sign Up";

            msg.Body = Schname.Value.ToUpper().ToString() + "\r\n\r\nDear Sir/Ma\r\n\r\nThanks for your interest in Megahit SchoolMate " + versiontype1.Value.ToUpper() + " Version" + "\r\n\r\nWe would create your profile and issue you with SchoolID after confirming your registration with your regulatory board!!" + "\r\n\r\nThis should be within 24hrs, depending on the response from your regulatory board." + "\r\n\r\nThanks once again for the interest in SCHOOLMATE!!" + "\r\n\r\n Yours \r\n\r\n \r\n\r\nOlapoju Oluwole (CTO)";

            //msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();
            client.Host = "relay-hosting.secureserver.net";
            client.Port = 25;

            //Send the msg
            client.Send(msg);

            Response.Write("<script language=javascript>alert('Thank you for your interest in SchoolMate...we just sent you a mail!');</script>");

        }
        catch (Exception ex)
        {

            Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
        }
    }

    void sendNotice()

    {
        try
        {
            MailMessage msg = new MailMessage();

            //msg.To.Add("woleolapoju@yahoo.com");

            msg.To.Add(email.Text);
          
            msg.Bcc.Add("wole.olapoju@megahitsystems.com");


            MailAddress address = new MailAddress("schoolmate@megahitsystems.com");

            msg.From = address;

            msg.Subject = "Megahit SchoolMate: Sign Up";
 
            msg.Body = Schname.Value.ToUpper().ToString() + "\r\n\r\nDear Sir/Ma\r\n\r\nThanks for your interest in Megahit SchoolMate " + versiontype1.Value.ToUpper() + " Version" + "\r\n\r\nWe would create your profile and issue you with SchoolID after confirming your registration with your regulatory board!!" + "\r\n\r\nThis should be within 24hrs, depending on the response from your regulatory board." + "\r\n\r\nThanks once again for the interest in SCHOOLMATE!!" + "\r\n\r\n Yours \r\n\r\n \r\n\r\nOlapoju Oluwole (CTO)";

            // SmtpClient client = new SmtpClient("bh-16.webhostbox.net", 465);
            //client.EnableSsl = false;
            //System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("wole.olapoju@megahitsystems.com", "admin*01");
            //client.Credentials = credentials;

            

            SmtpClient client = new SmtpClient("smtpout.secureserver.net", 80);
            //SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            //SmtpClient client = new SmtpClient();
            //client.Host = "smtp.gmail.com";
            //client.Port = 587;
            //client.UseDefaultCredentials = false;
            //client.EnableSsl = true;
            client.EnableSsl = false;
            Response.Write("<script language=javascript>alert('" + msg.Subject + "');</script>");
            //System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("woleolapoju@gmail.com", "Megahit1");

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("rooms@ikani-s.com", "ikani");

            client.Credentials = credentials;
            
            //send the message
            client.Send(msg);

            Response.Write("<script language=javascript>alert('Thank you for your interest in SchoolMate...we just sent you a mail!');</script>");



            return;
        }
        catch (Exception ex)
        {
            //Response.Write("<script language=javascript>alert('Please Try Again!');</script>");

            Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");

            return;
        }
    }



   
        

   
}