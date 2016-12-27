using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentSystem
{
    public partial class student : System.Web.UI.Page
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

            db MyDbConNew = new db();
            GridStudents.DataSource = MyDbConNew.HaalStudent();
            GridStudents.DataBind();

        }
        protected void GridStudents_SelectedIndexChanged(object sender, EventArgs e)
        {

          

        }

        public void btnAddNew_Click(object sender, EventArgs e)
        {

        }

        //public void btnEdit_Click(object sender, EventArgs e)
        //{

        //}

    }
}