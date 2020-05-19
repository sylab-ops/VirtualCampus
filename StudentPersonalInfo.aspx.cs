using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace VirtualCampus
{
    public partial class StudentPersonalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NEW"] != null)
            {
                lblUserID.Text = Session["NEW"].ToString();
            }
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sql;
            sql = "select * from StudentRegistrations where Student_id ='" + lblUserID.Text + "'";
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblCurrentUser.Text = dr["FirstName"].ToString();

            }
            else
            {
                con.Close();
                dr.Close();
                lblUserID.ForeColor = System.Drawing.Color.IndianRed;
                lblUserID.Text = "404 ERROR";
                lblCurrentUser.ForeColor = System.Drawing.Color.IndianRed;
                lblCurrentUser.Text = "NULL";
            }
        }
    }
}
        