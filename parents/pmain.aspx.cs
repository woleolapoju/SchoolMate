using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Parents_pmain : System.Web.UI.Page
{
 
    protected void Page_Load(object sender, EventArgs e)
    {
        

            try
            {
                if (Session["UserID"].ToString() == null || Session["UserID"].ToString() == "")
                {
                    Response.Redirect("Default.aspx", true);
                }

 
            lblusername.Text = "";
            lblregisteredstudent.Text = "";
            lblusername.Text = Session["UserName"].ToString();

            int thecount = getnumberofstudent(Session["ParentID"].ToString());

            if (thecount>1)
            lblregisteredstudent.Text = "You have "+ getnumberofstudent(Session["ParentID"].ToString()).ToString() + " students registered";
            else
                lblregisteredstudent.Text = "You have " + getnumberofstudent(Session["ParentID"].ToString()).ToString() + " student registered";


       }
            catch (Exception ex)
            {
                Session["exception"] = ex.Message;
                //"Object reference" not set to an instance of an object"
                if (ex.Message.StartsWith("Object reference") == true || ex.Message.StartsWith("Thread was being aborted") == true)
                    Response.Redirect("Default.aspx");
                else
                    Response.Redirect("Error.aspx");
            }
        }


    public static Int16 getnumberofstudent(string parentId)
    {
        try
        {
            Int16 result = 0;

            string dCnStr = ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString;
            SqlConnection cnSQL = new SqlConnection(dCnStr);
            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;
            cmSQL.CommandText = "SELECT isnull(COUNT(Sn),0) AS NoOfStudents FROM pstudents where ParentID='"+  parentId + "'";
            cmSQL.CommandType = System.Data.CommandType.Text;
            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();
            if (drSQL.HasRows)
            {
                if (drSQL.Read())
                    result = Convert.ToInt16(drSQL["NoOfStudents"].ToString());
                else
                    result = 0;
            }

            cmSQL.Connection.Close();
            cmSQL.Dispose();
            cnSQL.Close();
            cnSQL.Dispose();
            if (result < 0)
                result = 0;
            return result;

        }
        catch (Exception ex)
        {

            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
            return 0;
        }

    }

}