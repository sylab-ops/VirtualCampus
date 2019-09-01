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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            string status;
            status = "Student Logged In Successfully";
            string sql;
            sql = "select *from StudentRegistrations where Student_id='"+txtStudent_id.Text+"'";
            cmd.CommandText = sql;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string User=txtStuUsername.Text.ToString();
            string pass = txtStuPassword.Text.ToString();
            if (dr.Read())
            {
                if ((User == dr["Username"].ToString()) && (pass== dr["Password"].ToString()))
                {
                    con.Close();
                    string sql1;
                    status = "Student Logged In Successfully";
                    sql1 = "insert into StudentLog([Session_User],[LogDateTime],[Status]) values('" + txtStuUsername.Text + "','" + DateTime.Now.ToString() + "','" + status + "')";
                    cmd.CommandText = sql1;
                    con.Open();
                    SqlDataReader dr1 = cmd.ExecuteReader();
                    Session["NEW"] = txtStudent_id.Text;
                    Response.Redirect("StudentInterface.aspx");
                    con.Close();
                    
                }
            }
            else

                lblLoginFailured.ForeColor = System.Drawing.Color.IndianRed;
                lblLoginFailured.Text = "This Login Is Incorrect According to Automated Security System! Please Retry...";
                lblLoginFailured1.ForeColor = System.Drawing.Color.ForestGreen;
            lblLoginFailured1.Text = "Please Register With Admin Before Logging In!";
        }

        protected void cmdReset_Click(object sender, EventArgs e)
        {
            txtStudent_id.Text = "";
            txtStuUsername.Text = "";
            txtStuPassword.Text = "";
        }
    }
}