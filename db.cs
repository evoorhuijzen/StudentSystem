#region using

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

#endregion

namespace StudentSystem
{
    public class db
    {
        #region Database connectie

        /// <summary>
        /// Opent databaseconnectie      
        /// </summary>     
        public SqlConnection MyDatabaseConnection()
        {

            SqlConnection Mycon = new SqlConnection();

            Mycon.ConnectionString = "Data Source=LT-EDUDETA\\SQLPROJECTEN;Initial Catalog=StudentSystem;Integrated Security=True";
            Mycon.Open();
           
            return Mycon;
            
        }
  
        public void CloseDBConnection(ref System.Data.SqlClient.SqlConnection conDB_IN)
        {

            // Sluit connectie met DB
            if (conDB_IN.State == ConnectionState.Open)
            {
                conDB_IN.Close();

                //verwijder het connectie object
                conDB_IN.Dispose();
                conDB_IN = null;

            }

        }

#endregion

        #region Database sql queries

        /// <summary>
        /// Haalt user met bepaald wachtwoord-username-combinatie op.      
        /// </summary>
        public SqlDataReader HaalUser(string strUser_IN, string strPasWord_IN)
        {

            SqlDataReader objDataReader = default(SqlDataReader);
            SqlCommand objCommand = new SqlCommand();
            string strSQL = null;

            strSQL = "SELECT username, password FROM dbo.users WHERE (username='" + strUser_IN + "') AND (password ='" + strPasWord_IN + "')";

            objCommand.CommandText = strSQL;
            objCommand.Connection = MyDatabaseConnection();
            objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);

            return objDataReader;

        }


        public SqlDataReader HaalStudent()
        {
            SqlDataReader objDataReader = default(SqlDataReader);
            SqlCommand objCommand = new SqlCommand();
            string strSQL = null;

            strSQL = "SELECT id, student_name, semester, student_email FROM dbo.student";

            objCommand.CommandText = strSQL;
            objCommand.Connection = MyDatabaseConnection();
            objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);

            return objDataReader;

        }

        public SqlDataReader HaalRegistration()
        {
            SqlDataReader objDataReader = default(SqlDataReader);
            SqlCommand objCommand = new SqlCommand();
            string strSQL = null;

            strSQL = "SELECT absence, presence, date, comments, student_name, student_number, student_id FROM dbo.registrations JOIN dbo.student ON student.id = registrations.student_id";

            objCommand.CommandText = strSQL;
            objCommand.Connection = MyDatabaseConnection();
            objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);

            return objDataReader;


        }

          
        public SqlDataReader SetRegistration (string TBabsence, string TBpresence, string TBdate, string TBstudent_id, string TBcomments)
        {
            SqlDataReader objDataReader = default(SqlDataReader);
            SqlCommand objCommand = new SqlCommand();
            string strSQL = null;

            Convert.ToInt32(TBstudent_id);

            strSQL = "INSERT INTO dbo.registrations(absence, presence, date, student_id, comments) VALUES ('" + TBabsence + "', '" + TBpresence + "', '" + TBdate + "', '" + TBstudent_id + "' , '" + TBcomments + "')";

            objCommand.CommandText = strSQL;
            objCommand.Connection = MyDatabaseConnection();
            objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);

            return objDataReader;

        }

        public SqlDataReader HaalGrades()
        {
            SqlDataReader objDataReader = default(SqlDataReader);
            SqlCommand objCommand = new SqlCommand();
            string strSQL = null;

            strSQL = "SELECT ";

            objCommand.CommandText = strSQL;
            objCommand.Connection = MyDatabaseConnection();
            objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);

            return objDataReader;

        }

        #endregion

    }
}