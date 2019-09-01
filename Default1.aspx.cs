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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl(); 
            }
            try
            {
                string conn;
                conn = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(conn);
                connection.Open();
                string d = DateTime.Now.ToString();
                string display = "Page Accessed Successfully At  :  " + d;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
            catch (SqlException ex)
            {
                Response.Write("Message From Abraham \n"+ex);
            }

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();
        }

        private void SetImageUrl()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 24);
            Image1.ImageUrl = "~/Slideshows/" + i.ToString() + ".jpg";
        }
    }
}