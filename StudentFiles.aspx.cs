using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.IO;

namespace VirtualCampus
{
    public partial class StudentFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                    lblDownDel.ForeColor = System.Drawing.Color.DarkGreen;
                    lblDownDel.Text = "File Downloaded to D:// Drive";

                }

            }
            catch (IOException exe)
            {
                lblDownDel.Text = "File Can't Be Downloaded,File Already Downloaded & Exists In D:// Directory!";

            }
        }

    }
}