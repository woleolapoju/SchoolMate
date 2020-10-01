using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
//using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    public static string dUserName = "";
    public static string dParentID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Cnn"] = ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString;
        Session["UserName"] = "";
        Session["UserID"] = "";
        Session["Pwd"] = "";
        Session["SchID"] = "";
        Session["loginAS"] = "";
    }


    private static Boolean AuthenticateUser(string dUserID, string dPwd, string dCnStr, string SchID, string loginAS)
    {
        {
            Boolean tempAuthenticateUser = false;

           

            try
            {


                //if (!IsPostBack)
                //{
                //Session["Username"] = Request.Form["uname"];
                //Session["Password"] = Request.Form["psw"];

                if (dUserID == null || dPwd == null)
                {

                    //Response.Write("<script language=javascript>alert('Login details not entered!');</script>");


                }

                SqlConnection cnSQL = new SqlConnection(dCnStr);
                SqlCommand cmSQL = new SqlCommand("FetchUserAccessByPwd", cnSQL);
                SqlDataReader drSQL;

                int i = 0;
                cnSQL.Open();

                    cmSQL.CommandText = "FetchUserAccessByPwd";
                    cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
                    cmSQL.Parameters.AddWithValue("@UserID", dUserID);
                    cmSQL.Parameters.AddWithValue("@UserPwd", dPwd);
                    cmSQL.Parameters.AddWithValue("@SchoolID", SchID);
                    cmSQL.Parameters.AddWithValue("@LoginAs", loginAS);
         
                drSQL = cmSQL.ExecuteReader();

                if (drSQL.HasRows == false)
                {
                    i = 1;
                }
                else
                {
                    if (drSQL.Read())
                    {
                        dUserName = drSQL["Username"].ToString();
                        dParentID = drSQL["ParentID"].ToString();

                        i = 10;
                    }
                }
                cmSQL.Dispose();
                drSQL.Close();
                cnSQL.Close();



                if (i == 1)
                {
                    tempAuthenticateUser = false;
                }

                if (i == 10)
                {
                    tempAuthenticateUser = true;
                }

                return tempAuthenticateUser;

        }

            catch (Exception ex)
        {  //Response.Write("<script language=javascript>alert('Please Try Again!');</script>");
            return false;


        }
    }
    }
    
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        Visitor_email.Text = "";
        Visitor_comments.Value = "";
        Visitor_name.Value = "";

        if (AuthenticateUser(user_username.Value, user_password.Value, Session["Cnn"].ToString(), user_schoolID.Value, User_Category.Value) == true)
        {
            Session["UserName"] = dUserName;
            Session["UserID"] = user_username.Value; /* Request.Form["uname"];*/
            Session["Pwd"] = user_password.Value;
            Session["SchID"] = user_schoolID.Value;
            Session["loginAS"] = User_Category.Value;
            Session["parentID"] = dParentID;
            //Response.Write("<script language=javascript>alert('" + dUserName + " Welcome...');</script>");
            Response.Redirect("parents/pmain.aspx", true);

        }
        else
        {
            Session["UserName"] = "";
            Session["UserID"] = "";
            Session["Pwd"] = "";
            Session["SchID"] = "";
            Session["loginAS"] = "";
            Response.Write("<script language=javascript>alert('Invalid User Login Information!');</script>");
        }

    }


    protected void btnSendMail_Click(object sender, EventArgs e)

    {

        try
        {


            MailMessage msg = new MailMessage();


            msg.To.Add(Visitor_email.Text);

            msg.Bcc.Add("wole.olapoju@megahitsystems.com");


            MailAddress address = new MailAddress("megahit@mhschoolmate.com");

            msg.From = address;

            msg.Subject = "Comment on SCHOOLMATE";

            msg.Body = "Thanks for your comments, we would review it and get gack to you if need be." + "\r\n\r\nThanks for the interest in SCHOOLMATE!!" + "\r\n\r\n Yours\r\n\r\n\r\n\r\n Wole Olapoju (CTO)";

            //msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();
            client.Host = "relay-hosting.secureserver.net";
            client.Port = 25;

            //Send the msg
            client.Send(msg);


            msg.To.Add("schoolmate@megahitsystems.com");


            MailAddress address1 = new MailAddress("megahit@mhschoolmate.com");

            msg.From = address1;

            msg.Subject = "Comment on SCHOOLMATE from : " + Visitor_name.Value.ToUpper();

            msg.Body = "Comment from email: (" + Visitor_email.Text + ")\r\n\r\n\r\n\r\n"+ Visitor_comments.Value;

            SmtpClient client1 = new SmtpClient();
            client1.Host = "relay-hosting.secureserver.net";
            client1.Port = 25;

            //Send the msg
            client1.Send(msg);


            Response.Write("<script language=javascript>alert('Thank you for your interest in SchoolMate...we just sent you a mail!');</script>");

        }
        catch (Exception ex)
        {

            Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
        }
    }


}