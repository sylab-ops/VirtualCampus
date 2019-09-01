using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.Security;

namespace VirtualCampus
{
    public partial class StudentInterface : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NEW"] != null)
            {
                lblUser.Text = Session["NEW"].ToString();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = con1;
                con1.Open();
                string status;
                status = "Student Logged Out Successfully";
                cmd1.CommandText = "insert into StudentLog([Session_User],[LogDateTime],[Status]) values('" + lblUser.Text + "','" + DateTime.Now.ToString() + "','" + status + "')";
                con1.Close();
                Session.Abandon();
                FormsAuthentication.SignOut();
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Buffer = true;
                Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
                Response.Expires = -1000;
                Response.CacheControl = "no-cache";
                Response.Redirect("StudentLogin.aspx", true);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {

        }
    }

}
