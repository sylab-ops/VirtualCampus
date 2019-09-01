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
    public partial class ChangePasswordStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NEW"] != null)
            {
                lblCurrentUserID.Text  = Session["NEW"].ToString();
            }
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sql;
            sql = "select * from StudentRegistrations where Student_id ='" + lblCurrentUserID.Text  + "'";
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                lblPassChanged.Text  = "$Connected To $Server";
                lblCurrentUserID.Text = dr["Student_id"].ToString();
                lblCurrentStudent.Text  = dr["FirstName"].ToString();
                lblCurrentUser.Text = dr["Username"].ToString();

            }
            else
            {
                con.Close();
                dr.Close();
                lblPassChanged.ForeColor = System.Drawing.Color.IndianRed;
                lblPassChanged.Text  = "Service Stopped Unexpectedly! Please Try Later";
            }
        }

        protected void cmdChange_Click(object sender, EventArgs e)
        {
            string newPassword = txtnewpwd.Text.Replace("'", "''");
            string Repass = txtrnewpwd.Text.Replace("'", "''");

            if (txtnewpwd.Text  != txtrnewpwd.Text )
            {
                lblPassChanged.Text = "Passwords Do Not Match! Please Verify And try Again";
                txtnewpwd.Text = "";
                txtrnewpwd.Text ="";
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();

                string sql = "select * from StudentRegistrations where Student_id='" + lblCurrentUserID.Text + "' and FirstName='" + lblCurrentStudent.Text + "' and Username='" + lblCurrentUser.Text + "' and Password='"+txtoldpwd.Text +"'";
                cmd.CommandText = sql;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    dr.Close();

                    string sqll = "update StudentRegistrations set Password='" + txtrnewpwd.Text + "' where Student_id='" + lblCurrentUserID.Text + "' and FirstName='" + lblCurrentStudent.Text + "' and Username='" + lblCurrentUser.Text + "'";

                    SqlCommand cmd1 = new SqlCommand(sqll, con);
                    int rows = cmd1.ExecuteNonQuery();
                    lblPassChanged.Text = "Password Changed Successfully";
                    txtoldpwd.Text = "";
                    txtnewpwd.Text = "";
                    txtrnewpwd.Text = "";
                    con.Close();
                }
                else
                {
                    lblPassChanged.Text = "Old Password Entered Was Wrong";
                }
            }
        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            txtoldpwd.Text = "";
            txtnewpwd.Text = "";
            txtrnewpwd.Text = "";
        }

        protected void cmdExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentInterface.aspx");
        }
    }
}