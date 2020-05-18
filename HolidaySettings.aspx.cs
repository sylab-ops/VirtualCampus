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
    public partial class HolidaySettings : System.Web.UI.Page
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "insert into HolidaySetting([DateOfHoliday],[ReasonForHoliday]) values('" + Calendar1.SelectedDate + "','" + txtReason.Text + "')";
            cmd.ExecuteNonQuery();
            lblUpdateStatus.ForeColor = System.Drawing.Color.DarkGreen;
            lblUpdateStatus.Text = "Holiday Successfully Hosted!";
            GridView1.DataBind();
            con.Close();

        }
            catch(SqlException err)
            {
                lblUpdateStatus.Text = "Server Error! Holiday Cannot Be Hosted :( Please Try After Sometimes";
            }
    }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
             if (EventData.Count > 0)
        {
            System.DateTime testDate;
            foreach (DataRowView testRow in EventData)
            {
                testDate = (System.DateTime)testRow["DateOfHoliday"];
                if (testDate.Date == e.Day.Date)
                {
                    e.Cell.BackColor = System.Drawing.Color.Red;
                }
            }
        }
    }
        }
    }
