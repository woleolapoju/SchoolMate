using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class parents_pstudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (Session["UserID"].ToString() == null || Session["UserID"].ToString() == "")
        {
            Response.Redirect("Default.aspx", true);
        }


            lblusername.Text = Session["UserName"].ToString();

            fetchstudents();


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

    private void fetchstudents()
    {
        try
        {
            int i = 0;

            //Response.Write("<script language=javascript>alert('" + Session["parentID"].ToString() + "');</script>");

            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);
            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;
            cmSQL.CommandText = "pfetchparentstudents" ;
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@ParentID", Session["parentID"].ToString());
            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();
            while (drSQL.Read() == true)
            {

           
                i = i + 1;
                string studentfullname = drSQL["Surname"].ToString().ToUpper() + " " + drSQL["Firstname"].ToString() + " " + drSQL["middlename"].ToString();
                string studentname = drSQL["Surname"].ToString().ToUpper() + " " + drSQL["Firstname"].ToString();

                string studentschool = drSQL["schoolname"].ToString();
                string studentschoolid = drSQL["schoolID"].ToString();
                string studentid = drSQL["internalID"].ToString();
                DateTime studentBOB=Convert.ToDateTime(drSQL["DOB"]);

               if (i==1)
                    createtab(studentname, studentschool, studentschoolid, studentid, studentBOB, true, studentfullname);
               else
                    createtab(studentname, studentschool, studentschoolid, studentid, studentBOB, false,studentfullname);

            }

            cmSQL.Connection.Close();
            cmSQL.Dispose();
            cnSQL.Close();
            cnSQL.Dispose();

         


        }
        catch (Exception ex)
        {

            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");

        }

    }

    private void createtab(string studentname, string studentschool, string studentschoolid, string studentid, DateTime studentBOB,bool ddefault, string studentfullname)
    {

   
        HtmlButton myButton = new HtmlButton();
        myButton.Attributes.Add("class", "tablinks");
        myButton.Attributes.Add("onclick", "openCity(event, '" + studentschoolid + studentid + "')");
        if (ddefault == true) myButton.ID = "defaultOpen";
        myButton.InnerHtml = studentname;
        tabbuttons.Controls.Add(myButton);

        HtmlGenericControl dynDiv1 = new HtmlGenericControl("DIV");
    dynDiv1.Attributes.Add("class", "tabcontent");
        dynDiv1.ID = studentschoolid + studentid;
        maindiv.Controls.Add(dynDiv1);


        
        HtmlGenericControl dynSpan = new HtmlGenericControl("span");
        dynSpan.Attributes.Add("class","topright");
        dynSpan.InnerHtml="&times";
        dynSpan.Attributes.Add("onclick", "this.parentElement.style.display='none'");
        dynDiv1.Controls.Add(dynSpan);


        HtmlGenericControl dynh1 = new HtmlGenericControl("h4");
        dynh1.InnerHtml = studentfullname;
        dynDiv1.Controls.Add(dynh1);

        HtmlGenericControl dynh = new HtmlGenericControl("h5");
        dynh.InnerHtml = studentschool;
        dynDiv1.Controls.Add(dynh);

        HtmlGenericControl dynP = new HtmlGenericControl("p");
        dynP.InnerHtml = studentBOB.ToString();
        dynDiv1.Controls.Add(dynP);

        HtmlAnchor myAnchor1 = new HtmlAnchor();
        myAnchor1.HRef = "#";
        myAnchor1.ID = "a" + studentschoolid + studentid;
        myAnchor1.InnerHtml = "Remove";
        dynDiv1.Controls.Add(myAnchor1);


        //    < button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">London</button>


        //       myAnchor = new HtmlAnchor();
        //myAnchor.ID = RefNo;
        //    myAnchor.HRef = "#";
        //    //myAnchor.title = dComment;
        //    myAnchor.Attributes.Add("data-toggle", "modal");
        //    myAnchor.Attributes.Add("data-target", "#exampleModal");
        //    myAnchor.Attributes.Add("data-whatever", RefNo);
        //    myAnchor.Attributes.Add("data-backdrop", "static");
        //    myAnchor.Attributes.Add("data-keyboard", "false");

        //    divComplaints.Controls.Add(myAnchor);


    }
}