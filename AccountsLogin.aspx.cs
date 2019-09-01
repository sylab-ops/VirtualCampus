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
    public partial class ApplyScholarship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
        }

        protected void cmdExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            string status;
            status = "User Logged In Successfully";
            string sql, sql2;
            sql = "select *from AccountsLogin where AccName ='" + txtUsername.Text + "' and Password = '" + txtPassword.Text + "'";
            sql2 = "insert into AccountsLog([Session_User],[LogDateTime],[Status]) values('" + txtUsername.Text + "','" + DateTime.Now.ToString() + "','" + status + "')";
            cmd.CommandText = sql + sql2;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["NEW"] = txtUsername.Text;
                Response.Redirect("AccountsHome.aspx");
            }
            else
                lblWhatHappened.Text   = "Can't Login...Invalid User!";

        }

    }
    }
        
    
