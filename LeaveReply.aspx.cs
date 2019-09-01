using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
namespace VirtualCampus
{
    public partial class LeaveReply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string acc = "accepted";
            string rej = "rejected";
            string str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(str);
           
            if (e.CommandName == "Accept")
            {
                con.Open();
                string q = "update Leavesdata set Status=@Status where Leave_no=@Leave_no and Student_id=@Student_id and Student_name=@Student_name";
                int index = Convert.ToInt32(e.CommandArgument); 
               GridViewRow row = GridView1.Rows[index];
               string Leave_no = row.Cells[1].Text.ToString();
               string Student_id = row.Cells[2].Text.ToString();
               string Student_name = row.Cells[3].Text.ToString();
                string Status = row.Cells[4].Text.ToString();
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@Leave_no", Leave_no);
                cmd.Parameters.AddWithValue("@Student_id", Student_id);
                cmd.Parameters.AddWithValue("@Student_name", Student_name);
                cmd.Parameters.AddWithValue("@Status", acc);
                cmd.ExecuteNonQuery();
                lblWhatHappened.ForeColor = System.Drawing.Color.DarkGreen;
                lblWhatHappened.Text = "Accepted Successfully By Admin And Informed To Student..Thank You For Using This Service";
                GridView1.DataBind();

            }
            if (e.CommandName == "Reject")
            {
                con.Open();
                string q = "update Leavesdata set Status=@Status where Leave_no=@Leave_no";
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                string Leave_no = row.Cells[1].Text.ToString();
                string Student_id = row.Cells[2].Text.ToString();
                string Student_name = row.Cells[3].Text.ToString();
                string Status = row.Cells[4].Text.ToString();
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@Leave_no", Leave_no);
                cmd.Parameters.AddWithValue("@Student_id", Student_id);
                cmd.Parameters.AddWithValue("@Student_name", Student_name);
                
                cmd.Parameters.AddWithValue("@Status", rej);
                cmd.ExecuteNonQuery();
                lblWhatHappened.ForeColor = System.Drawing.Color.IndianRed;
                lblWhatHappened.Text = "Rejected Successfully By Admin And Informed To Student..Thank You For Using This Service";
                GridView1.DataBind();

            }
        }

 }
}