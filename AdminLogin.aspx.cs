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
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
        }


        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                string status;
                status = "User Logged In Successfully";
                string sql, sql2;
                sql = "select *from Admin where Username ='" + txtUsername.Text + "' and Password = '" + txtPassword.Text + "'";

                sql2 = "insert into AdminLog([Session_User],[LogDateTime],[Status]) values('" + txtUsername.Text + "','" + DateTime.Now.ToString() + "','" + status + "')";

                cmd.CommandText = sql + sql2;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["NEW"] = txtUsername.Text;
                    Response.Redirect("Interface.aspx");
                }
                else
                    literromsg.Text = "Can't Login Invalid User!";

            }
            catch (SqlException Abraham)
            {
                literromsg.Text = "Connection Timed Out Abraham!";

            }

        }
    }
}
