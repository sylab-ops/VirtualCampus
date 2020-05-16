using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace VirtualCampus
{
    public partial class AccountsLogsAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Try loading The data to The Page
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();

                string sql = "select * from  AccountsLogin";
                cmd.CommandText = sql;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblWhatHappened.ForeColor = System.Drawing.Color.DarkGreen;
                    lblWhatHappened.Text = "Service Started! Connected To The Server";
                    lblCurrentUser.Text = dr["AccName"].ToString();
                    txtCurPassword.Text = dr["Password"].ToString();
                }
                else
                {
                    con.Close();
                    dr.Close();
                    lblWhatHappened.ForeColor = System.Drawing.Color.Red;
                    lblWhatHappened.Text = "Service Stopped! Server Down";

                }
            }
            catch (SqlException sql)
            {
                lblWhatHappened.Text = "Message from Abraham" + sql;
            }
        }

        protected void cmdExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Interface.aspx");
        }

        protected void cmdChange_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();

                string sql = "update AccountsLogin SET Password='" + txtNewPassword.Text + "' where AccName='" + lblCurrentUser.Text + "'";
                SqlCommand cmd1 = new SqlCommand(sql, con);
                int rows = cmd1.ExecuteNonQuery();
                lblWhatHappened.Text = "Password Changed Successfully";
            }
            catch (SqlException e1)
            {
                lblWhatHappened.ForeColor = System.Drawing.Color.Red;
                lblWhatHappened.Text = "Server Down For Now! Can't Change Password!";
            }
        }
    }
}