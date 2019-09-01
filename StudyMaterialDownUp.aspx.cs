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
    public partial class StudyMaterialDownUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();

            string sql = "select * from StudentRegistrations where Student_id='" + Session["NEW"] + "' ";
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblCurrentUser.Text = dr["Student_id"].ToString();
                lblCurrentUsername.Text = dr["FirstName"].ToString();
            }
            else
            {
                lblConStatus.ForeColor = System.Drawing.Color.DarkRed;
                lblConStatus.Text = "Server error! Can't Start Service!";
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            lblDownDel.Text = "";
            string str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(str);
            string cnt = "Select count(*)  from Studentfiles";
            object count;
            try
            {
                con.Open();
                lblConStatus.Text = "Connection Established";

                if (FileUpload1.HasFile)
                {
                    SqlCommand cmd = new SqlCommand(cnt, con);

                    count = cmd.ExecuteScalar();
                    int id = Convert.ToInt32(lblCurrentUser.Text);
                    string rem = txtRemarks.Text.ToString();
                    int c = Convert.ToInt32(count);
                    string a = "Insert into Studentfiles(Student_id,File_id,Filename,UploadedDate,Remarks) Values(@Student_id,@File_id,@Filename,@Date,@Remarks)";

                    SqlCommand cmd2 = new SqlCommand(a, con);
                    cmd2.Parameters.AddWithValue("@Student_id", id);
                    cmd2.Parameters.AddWithValue("@File_id", ++c);
                    cmd2.Parameters.AddWithValue("@Filename", FileUpload1.FileName);
                    cmd2.Parameters.AddWithValue("@Remarks", rem);
                    cmd2.Parameters.AddWithValue("@Date",DateTime.Now.ToString());
                    cmd2.ExecuteNonQuery();
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/StudentUploads/") + filename);
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
                    string filename = row.Cells[2].Text.ToString();
                    string infile = Server.MapPath("~/StudentUploads/" + filename);
                    string outfile = @"D://" + filename;
                    File.Copy(infile, outfile);
                    lblDownDel.Text = "File Downloaded to D:// Drive";

                }
                if (e.CommandName == "Delete")
                {
                    con.Open();
                    string q = "delete from Studentfiles where Filename=@Filename";
                    int index = Convert.ToInt32(e.CommandArgument);
                    GridViewRow row = GridView1.Rows[index];
                    string filename = row.Cells[1].Text.ToString();
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@Filename", filename);
                    cmd.ExecuteNonQuery();
                    string infile = Server.MapPath("~/StudentUploads/" + filename);
                    File.Delete(infile);
                    lblDownDel.Text = "File Deleted By User Command";

                }

            }

            catch (IOException exe)
            {
                lblDownDel.Text = "File Can't Be Downloaded,File Already Downloaded & Exists In D:// Directory!";

            }
        }
    }
}