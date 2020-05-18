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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtSearch.Focus();
        }   

        protected void cmdSearch_Click(object sender, EventArgs e)
        {
            lblPassChanged.Text = "";
            txtNewPass.Text = "";
            txtRePass.Text = "";
            lblCurrentUser.Text = "";
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                string sql;
                sql = "select * from StudentRegistrations where Student_id ='" + txtSearch.Text + "'";
                cmd.CommandText = sql;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblinfo.ForeColor = System.Drawing.Color.Green;
                    lblinfo.Text = "Details Found! Below Are The Details";
                    txtNewPass.Enabled = true;
                    txtRePass.Enabled = true;
                    txtStuID.Text = dr["Student_id"].ToString();
                    txtStuName.Text = dr["FirstName"].ToString();
                    txtStuClass.Text = dr["Course"].ToString();
                    txtYear.Text = dr["Semester"].ToString();
                    txtSection.Text = dr["Section"].ToString();
                    txtOldPwd.Text = dr["Password"].ToString();
                    lblCurrentUser.Text = dr["Username"].ToString();

                }
                else
                {
                    txtNewPass.Enabled = false;
                    txtRePass.Enabled = false;
                    lblinfo.ForeColor = System.Drawing.Color.DarkRed;
                    lblinfo.Text = "Student Details Doesn't Exists! Please Review And Try Again";
                    txtStuID.Text = "";
                    txtStuName.Text = "";
                    txtStuClass.Text = "";
                    txtYear.Text = "";
                    txtSection.Text = "";
                    txtOldPwd.Text = "";
                    txtSearch.Text = "";

                }
            }
            catch (SqlException e1)
            {
        
            string display = ("Message From Manjunath:" + e1);
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
        }
        protected void cmdChangePwd_Click(object sender, EventArgs e)
        {
            string newPassword = txtNewPass.Text.Replace("'", "''");
            string Repass = txtRePass.Text.Replace("'", "''");

            if (txtNewPass.Text != txtRePass.Text)
            {
                lblPassChanged.Text = "Passwords Do Not Match!";
                txtNewPass.Text = "";
                txtRePass.Text = "";
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();

                string sql = "select * from StudentRegistrations where Student_id='" + txtStuID.Text + "' and FirstName='" + txtStuName.Text + "' and Username='" + lblCurrentUser.Text + "' and Password ='" + txtOldPwd.Text + "'";
                cmd.CommandText = sql;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    dr.Close();

                    string sqll = "update StudentRegistrations set Password='" + Repass + "' where Student_id='" + txtStuID.Text + "' and FirstName='" + txtStuName.Text  + "' and Username='" + lblCurrentUser.Text + "' and Password ='" + txtOldPwd.Text + "'";

                    SqlCommand cmd1 = new SqlCommand(sqll, con);
                    int rows = cmd1.ExecuteNonQuery();
                    lblPassChanged.Text = " Password Changed Successfully";

                    con.Close();
                }
            }
        }

        protected void cmdReset_Click(object sender, EventArgs e)
        {
            txtNewPass.Text = "";
            txtRePass.Text = "";
        }

       

       
    }
}