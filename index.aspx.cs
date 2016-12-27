using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentSystem
{
    public partial class index : System.Web.UI.Page
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

    }
}