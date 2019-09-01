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
    public partial class ComplaintPosting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NEW"] != null)
            {
                txtStudent_id.Text  = Session["NEW"].ToString();
            }
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sql;
            sql = "select * from StudentRegistrations where Student_id ='" + txtStudent_id.Text + "'";
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblWhatHappened.ForeColor = System.Drawing.Color.DarkGreen;
                lblWhatHappened.Text = "Complaint Posting Service Started";
                txtStudentname.Text = dr["FirstName"].ToString();

            }
            else
            {
                con.Close();
                dr.Close();
                lblWhatHappened.ForeColor = System.Drawing.Color.IndianRed;
                lblWhatHappened.Text = "Can't Start Complaint Post Service! Please Try Later";
                cmdPostComplaint.Enabled = false;
            }
        }

        protected void cmdPostComplaint_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "insert into ComplaintPosting([Student_id],[Studentname],[Subject],[ComplaintDetails])values (" + txtStudent_id.Text + ",'" + txtStudentname.Text + "','" + txtSubject.Text + "','" + txtDetails.Text + "')";
                cmd.ExecuteNonQuery();
                lblWhatHappened.Text  = "Complaint Submitted Successfully..";
                txtSubject.Text = "";
                txtDetails.Text = "";
                con.Close();
                
            }
            catch (SqlException e1)
            {
                Response.Write("Message From Manjunath :"+e1);
            }
        }

        protected void cmdReset_Click(object sender, EventArgs e)
        {
            txtSubject.Text = "";
            txtDetails.Text = "";
            lblWhatHappened.Text = "Complaint Posting Service Started";
        }

        protected void cmdexit_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentInterface.aspx");
        }

        protected void txtSubject_TextChanged(object sender, EventArgs e)
        {
            lblWhatHappened.Text = "Complaint Posting Service Started";
        }
    }
}