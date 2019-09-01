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
    public partial class UpDownFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdUpload_Click(object sender, EventArgs e)
        {
            lblDownDel.Text = "";
            string str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(str);
            string cnt = "Select count(*)  from files";
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
                    string a = "Insert into files(File_id,Filename) Values(@File_id,@Filename)";

                    SqlCommand cmd2 = new SqlCommand(a, con);

                    cmd2.Parameters.AddWithValue("@File_id", ++c);
                    cmd2.Parameters.AddWithValue("@Filename", FileUpload1.FileName);
                    cmd2.ExecuteNonQuery();
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/files/") + filename);
                    lbluploadstatus.Text = "File Uploaded Successfully!";
                    GridView1.DataBind();

                }
            }
            catch (Exception ex)
            {
                lbluploadstatus.Text = "Error Uploading File To The Server!Please Retry Again Later";
            }
            finally
            {
                con.Close();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                string str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
                SqlConnection con = new SqlConnection(str);
                if (e.CommandName == "Download")
                {
                    int index = Convert.ToInt32(e.CommandArgument);

                    GridViewRow row = GridView1.Rows[index];
                    string filename = row.Cells[1].Text.ToString();
                    string infile = Server.MapPath("~/files/" + filename);
                    string outfile = @"D://" + filename;

                    File.Copy(infile, outfile);
                    lblDownDel.Text = "File Downloaded to D:// Drive";

                }
                if (e.CommandName == "Delete")
                {
                    con.Open();
                    string q = "delete from files where Filename=@Filename";
                    int index = Convert.ToInt32(e.CommandArgument);
                    GridViewRow row = GridView1.Rows[index];
                    string filename = row.Cells[1].Text.ToString();
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@Filename", filename);
                    cmd.ExecuteNonQuery();
                    string infile = Server.MapPath("~/files/" + filename);
                    File.Delete(infile);
                    lblDownDel.Text = "File Deleted By User Command";

                }
            }
            catch (IOException ex1)
            {
                lblDownDel.Text = "File Already Exists";
            }
        }
    }
}