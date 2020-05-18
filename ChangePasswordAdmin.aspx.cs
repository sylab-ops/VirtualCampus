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
    public partial class ChangePasswordAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NEW"] != null)
            {
                lblCurrentAdmin.Text = Session["NEW"].ToString();
            }
        }

        protected void cmdReset_Click(object sender, EventArgs e)
        {
            txtoldPwd.Text = "";
            txtNewPwd.Text = "";
            txtRnPwd.Text = "";
        }

        protected void cmdChangePwd_Click(object sender, EventArgs e)
        {
            string newPassword = txtNewPwd.Text.Replace("'", "''");
            string Repass = txtRnPwd.Text.Replace("'", "''");

            if (txtNewPwd.Text != txtRnPwd.Text)
            {
                lblPassChanged.Text = "Passwords Do Not Match! Please Verify And try Again";
                txtNewPwd.Text = "";
                txtRnPwd.Text = "";
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();

                string sql = "select * from Admin where Username='" + lblCurrentAdmin.Text + "' and Password='" + txtoldPwd.Text + "'";
                cmd.CommandText = sql;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    dr.Close();

                    string sqll = "update Admin set Password='" + txtRnPwd.Text + "' where Username='" + lblCurrentAdmin.Text + "'";

                    SqlCommand cmd1 = new SqlCommand(sqll, con);
                    int rows = cmd1.ExecuteNonQuery();
                    lblPassChanged.Text = "Password Changed Successfully";
                    txtoldPwd.Text = "";
                    txtNewPwd.Text = "";
                    txtRnPwd.Text = "";
                    con.Close();
                }
                else
                {
                    lblPassChanged.Text = "Old Password Entered Was Wrong";
                }
            }
        }
    }
}