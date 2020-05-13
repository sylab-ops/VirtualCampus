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
    public partial class AcademicInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblHeader.Text = "";
            //Connections
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();

            string sql = "select * from StudentRegistrations where Student_id=" + txtSearchBox.Text + "";
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblWhatHappened.Text = "Congratulations! Student_id Exists : Below Are The Details";
                lblHeader.Text = "Academic Information(Previous College & Present Course)";

            }
            else
            {
                lblWhatHappened.Text = "Sorry :( Student_id Doesn't Exists! Thank You";
                lblHeader.Text = "";


            }
        }
    }
}
