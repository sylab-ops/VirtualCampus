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
    public partial class ComplaintReply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdReply_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "insert into ComplaintReply([Complaint_id],[Student_id],[Subject],[Details])values ('"+txtComplaint_id.Text+"','"+txtStudent_id.Text+"','" + txtSubject.Text + "','" + txtReplydetails.Text + "')";
            cmd.ExecuteNonQuery();
            lblWhatHappened.Text  = "Dear Admin, Your Reply Successfull!Please Press Clear For Now!";
            con.Close();
        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            txtSubject.Text = "";
            txtReplydetails.Text = "";
            txtStudent_id.Text = "";
            txtComplaint_id.Text = "";
        }

        protected void cmdExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Interface.aspx");
        }
    }
}