using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentSystem
{
    public partial class newRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //checks if user is logged in, if not back to loginpage
            if (Session["username"] == null)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                string username = lblSessUser.Text;

                lblSessUser.Text = Session["username"].ToString();

            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
          
           db MyDbConNew = new db();

           MyDbConNew.SetRegistration(TBabsence.Text, TBpresence.Text, TBdate.Text, TBstudent_id.Text, TBcomments.Text);

            tblNewReg.DataSource = "SELECT absence, presence, date, comments, student_name, student_number, student_id FROM dbo.registrations JOIN dbo.student ON student.id = registrations.student_id";
            tblNewReg.DataBind();

            //Redirect naar registration.aspx
            Response.Redirect("registration.aspx");


        }


        protected void btnClose_Click(object sender, EventArgs e)
        {
            //Redirect naar registration.aspx
            Response.Redirect("registration.aspx");
        }
    }
}