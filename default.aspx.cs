#region usings

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

#endregion

namespace StudentSystem
{
    public partial class _default : System.Web.UI.Page
    {

        #region events

        protected void Page_Load(object sender, EventArgs e)
        {
            ///Zet de focus op textbox txtUserId
            txtUserId.Focus();
          
            if (this.IsPostBack)
        
                ///Zet in de textbox puntjes in plaats van letters en cijfers zodat het paswoord niet zichtbaar is
                txtPasWord.Attributes["value"] = txtPasWord.Text;

            //checkt 'remember me' eerdere sessies
            if (Request.Cookies["UserName"] != null && Request.Cookies["PasWord"] != null)
            {
                txtUserId.Text = Request.Cookies["UserName"].Value;
                txtPasWord.Attributes["value"] = Request.Cookies["PasWord"].Value;
            }


        }

        protected void btnInloggen_Click(object sender, EventArgs e)
        {

            Boolean records_gevonden;
            SqlDataReader objDatareader;
            
           db MyDbConNew = new db();
           objDatareader = MyDbConNew.HaalUser(txtUserId.Text, txtPasWord.Text);
          
            
            /// Lees eerste record en bepaal of einde van dataReader is bereikt.
            records_gevonden = objDatareader.Read();

            if (!records_gevonden)
            {
                /// Geen treffers
                lblMessages.Text = "Invalid username or password";

            }
           
            else
            {
                //bewaar username voor de session
                string username = txtUserId.Text;
                Session["username"] = username;

                //Redirect naar index.aspx
                Response.Redirect("index.aspx");            
            }

            //remember me functionaliteit
            if (CheckBoxRemember.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["PasWord"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["PasWord"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["UserName"].Value = txtUserId.Text.Trim();
            Response.Cookies["PasWord"].Value = txtPasWord.Text.Trim();
        }




    }

    #endregion
}