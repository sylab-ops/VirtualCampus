using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace VirtualCampus
{
    public partial class Notifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbluploadstatus.Text = "";
            lblDownDel.Text = "";
            lblConStatus.Text = "";
        }

        protected void cmdUpload_Click(object sender, EventArgs e)
        {
            lblDownDel.Text = "";
            string str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(str);
            string cnt = "Select count(*)  from Adminfiles";
            object count;
            try
            {
                con.Open();
                lblConStatus.Text = "Connection Established";

                if (FileUpload1.HasFile)
                {
                    SqlCommand cmd = new SqlCommand(cnt, con);

                    count = cmd.ExecuteScalar();
                    int c = Convert.ToInt32(count);
                    string a = "Insert into Adminfiles(File_id,Filename,Date,Remarks) Values(@File_id,@Filename,@Date,@Remarks)";

                    SqlCommand cmd2 = new SqlCommand(a, con);

                    cmd2.Parameters.AddWithValue("@File_id", ++c);
                    cmd2.Parameters.AddWithValue("@Filename", FileUpload1.FileName);
                    cmd2.Parameters.AddWithValue("@Date", DateTime.Now.ToString());
                    cmd2.Parameters.AddWithValue("@Remarks", txtRemarks.Text.ToString());
                    cmd2.ExecuteNonQuery();
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Notifications/") + filename);
                    lbluploadstatus.Text = "File Uploaded Successfully!";
                    GridView1.DataBind();

                }
            }
            catch (Exception ex)
            {
                Response.Write("Message From Manjunath" + ex);
                lblConStatus.ForeColor=System.Drawing.Color.DarkRed;
                lblConStatus.Text = "Server Error! Service Stopped!";
                lbluploadstatus.Text = "Error Uploading File To The Server!Please Retry Again Later";
            }
            finally
            {
                con.Close();
            }
        }
    }
}