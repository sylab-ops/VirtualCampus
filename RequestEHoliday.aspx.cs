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
using System.Data.SqlClient;

namespace VirtualCampus
{
    public partial class RequestEHoliday : System.Web.UI.Page
    {
        private DataView eventData;

        private DataView EventData
        {
            get
            {
                if (eventData == null)
                {
                    eventData =
                     SqlDataSource1.Select(new DataSourceSelectArguments()) as DataView;
                }
                return eventData;
            }
            set
            {
                eventData = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NEW"] != null)
            {
                lblUser.Text = Session["NEW"].ToString();
            }
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sql;
            sql = "select * from StudentRegistrations where Student_id ='" + lblUser.Text + "'";
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                lblWhatHappened.Text = "$Connected To $Server";
                lblStuName.Text = dr["FirstName"].ToString();

            }
            else
            {
                con.Close();
                dr.Close();
                lblWhatHappened.ForeColor = System.Drawing.Color.IndianRed;
                lblWhatHappened.Text = "Can't Start Complaint Post Service! Please Try Later";
                Button1.Enabled = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string status = "Pending";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "insert into Leavesdata([Student_id],[Student_name],[Leave_Date],[Reason],[Status]) values('" + lblUser.Text + "','" + lblStuName.Text + "','" + Calendar1.SelectedDate + "','" + TextBox1.Text + "','" + status + "')";
                cmd.ExecuteNonQuery();
                lblWhatHappened.ForeColor = System.Drawing.Color.DarkGreen;
                lblWhatHappened.Text = "Leave Request Submission Successful";
                GridView1.DataBind();
                con.Close();

            }
            catch (SqlException err)
            {
                Response.Write("Message :" + err);
                lblWhatHappened.Text = "Server Error!Please Try After Sometimes";
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            try
            {
                if (EventData.Count > 0)
                {
                    System.DateTime testDate;
                    foreach (DataRowView testRow in EventData)
                    {
                        testDate = (System.DateTime)testRow["Leave_Date"];
                        if (testDate.Date == e.Day.Date)
                        {
                            e.Cell.BackColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
            catch (NullReferenceException exe)
            {
                Response.Write("Message from manjunath :" + exe);
            }

        }
    }
}

