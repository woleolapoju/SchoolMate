using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Parents_psignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
            cmSQL.CommandText = "pinsertsignups";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@Relation2Student", relation2student1.Value);
            cmSQL.Parameters.AddWithValue("@Surname", tsurname.Text);
            cmSQL.Parameters.AddWithValue("@Firstname", tfirstname.Text);
            cmSQL.Parameters.AddWithValue("@Email", temail.Text);
            cmSQL.Parameters.AddWithValue("@Password", tpwd.Value);
            cmSQL.Parameters.AddWithValue("@TransDate", DateTime.Now);
            cmSQL.ExecuteNonQuery();

            myTrans.Commit();
            //cmSQL.Connection.Close();
            cnSQL.Close();

            //sendMail();


            sendEmail();

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


    private void sendEmail()
    {
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(temail.Text);
        mail.From = new MailAddress("woleolapoju@gmail.com", "Megahit SchoolMate", System.Text.Encoding.UTF8);
        mail.Subject = "INTEREST IN MHSCHOOLMATE";
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = "This is Email Body Text";
        mail.Body = "Dear " + tsurname.Text +  " " +  tfirstname.Text + "\r\n\r\nThanks for registering on Megahit SchoolMate " + "\r\n\r\nWe would create your profile and issue you with activate your account" + "\r\n\r\nThis should be within 24hrs." + "\r\n\r\nThanks once again for the interest in SCHOOLMATE!!" + "\r\n\r\n Yours \r\n\r\n \r\n\r\nOlapoju Oluwole (CTO)";

        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;
        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("woleolapoju@gmail.com", "Megahit1");
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        try
        {
            client.Send(mail);
          //  Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully Send...');if(alert){ window.location='SendMail.aspx';}</script>");
        }
        catch (Exception ex)
        {
            Exception ex2 = ex;
            string errorMessage = string.Empty;
            while (ex2 != null)
            {
                errorMessage += ex2.ToString();
                ex2 = ex2.InnerException;
            }
            Response.Write("<script language=javascript>alert('" + ex + "');</script>");
           // Page.RegisterStartupScript("UserMsg", "<script>alert('Sending Failed...');if(alert){ window.location='SendMail.aspx';}</script>");
        }
    }
}
